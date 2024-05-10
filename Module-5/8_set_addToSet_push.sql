-- Replace the whole value
db.test.updateOne(
    { _id : ObjectId("6406ad65fc13ae5a400000c7")},
    {
        $set : { interests: ["Gaming"]}
    }
)


-- Will not enter duplicate value
db.test.updateOne(
    { _id: ObjectId("6406ad65fc13ae5a400000c7") },
    {
        $addToSet:
        {
            interests:
                { $each: ["Travelling", "Cooking"] }
        }
    }
)


-- Will enter every value

db.test.updateOne(
    { _id: ObjectId("6406ad65fc13ae5a400000c7") },
    {
        $push:
        {
            interests:
                { $each: ["Travelling", "Cooking"] }
        }
    }
)
