module.exports = {
    mongoCreds: {
        url:  "mongodb://ds036178.mlab.com:36178/stv",
        name: "testname",
        pass: 'testpassword',
        urlSec: "mongodb://testname:testpassword@ds036178.mlab.com:36178/stv"
    },
    sendToEmails:['email@to.recieveAlerts'],
    storesAbsoluteDir:'e:\projects\\l2broker\\stores\\',
    storesMask:['../stores/**/*.buy', '../stores/**/*.store', '../stores/**/*.bulk'],
    collections:{
        items:'items',
        sellers:'sellers'
    },
    itemsPath:"../tower/config/C__Program_Files_(x86)_NCsoft_Lineage_II_system_/items.txt",
    email:{
        user:"azure_[YOUR SUBSCRIPTION ID HERE]@azure.com",
        pass:"[YOUR PASS]",
        host:"smtp.sendgrid.net",
        from:"l2broker robot <[YOUR EMAIL]>"
    }
}