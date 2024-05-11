db.test.aggregate([
    {
        $unwind: "$friends"}--- array ke venge feltese
    {
        $group: { _id: "$friends", count: {$sum: 1}} -- loop er moto kore check kore count kortese
    }
])


db.test.aggregate([
    {
        $unwind: "$interests"
    },
    {
        $group: { _id: "$age", interestsPerAge: { $push: '$interests' } }
    }
])
