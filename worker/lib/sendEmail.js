var email   = require("../node_modules/emailjs/email");
var opts = require('./opts');
module.exports = function(to, subj, body){
 
    var server  = email.server.connect({
        user:opts.email.user, 
        password:opts.email.pass, 
        host:opts.email.host, 
    });

    var message = {
    text:    '', 
    from:opts.email.from, 
    to:      to.join(', '),
    subject: subj,
    attachment: 
    [
        {data:body, alternative:true},
    ]
    };

    // send the message and get a callback with an error or details of the message that was sent
    server.send(message, function(err, message) { console.log(err || message); });
}