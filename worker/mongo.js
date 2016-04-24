/* global db */
db.items.aggregate(
   [
   	{ 
               $group : { id : "$id" } 
      },
      {
         $project: {
            item: 1,
            numberOfSellers: { $size: "$sellers" }
         }
      }
   ]
)