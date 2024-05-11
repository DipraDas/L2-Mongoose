db.test.aggregate([
    {
        $bucket: {
            groupBy: "$age",
            boundaries: [20, 40, 60, 80],
            default: "80 er uporer baki gula",
            output: {
                "count": { $sum: 1 },
                "karaKaraBakiAse": { $push: "$$ROOT" }
            }
        }
    }
])


db.test.aggregate([
    {
        $bucket: {
            groupBy: "$age",
            boundaries: [20, 40, 60, 80],
            default: "80 er uporer baki gula",
            output: {
                "count": { $sum: 1 },
                "karaKaraBakiAse": { $push: "$$ROOT" }
            }
        }
    },
    {
        $sort: { count: -1 }
    },
    {
        $limit: 2
    },
    {
        $project: {
            count: 1
        }
    }
])
