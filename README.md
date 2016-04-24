# Lineage2 Broker
### Proof of concept solution to create Market site for private Lineage2 server without server administration cooperation
#### Technology stack:
* [L2Tower](http://www.forum.l2tower.eu/portal.php)
* [NodeJS](https://nodejs.org/en/)
* [MongoDB](https://www.mongodb.org/)
* [AngularJS 1](https://angularjs.org/)

#### Simple Algorithm:
+ Market Scanning (./tower)
    - L2Tower Bot cycling through some towns
    - In towns Bot will roam on the predefined way
    - While on the way, it will scan every single trader
    - Scan means - get the info about items, quantity, price, etc
    - And save this data to disk
+ RawData translation to MongoDB (./worker)
    - Gulp task with watcher to process data from disk
    - Gulp task to fill the data with average prices, item titles, item images
    - Email alerts
+ Site to show data from MongoDB (./site)
    - NodeJS on server - side
    - AngularJS, Jade, SCSS on the client
    - Filters, predefined data sets
    - Admin template

###A bit of a demo here:
[![Short L2 Broker Demo](https://img.youtube.com/vi/zXhmcn5j4a8/0.jpg)](https://www.youtube.com/watch?v=zXhmcn5j4a8)

##Complete step by step tutorial to get working copy of this [here](https://medium.com/p/1a1ae0384108)
