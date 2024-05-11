db.test.aggregate([
    {$group: {
        _id: '$address.country', -- kisher upor depend kore
        count: {$sum: 1},
        fullDoc: {$push: '$$ROOT'} -- $$ROOT - all doc will be pushed to fullDoc
    }},
    -- using project data will shown from fullDoc
    {$project: {
        'count': 1,
        'fullDoc.name': 1,
        'fullDoc.email': 1 
    }}
])
