db.items.aggregate([
    { $match: { id : "1875" } },
    { $unwind: '$sellers' },
    { $sort: {
        'sellers.date': -1
    }},
    {$limit: 20}
  ])