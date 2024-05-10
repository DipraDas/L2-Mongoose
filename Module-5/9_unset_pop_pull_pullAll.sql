--replace the whole value
db.test.updateOne(
    { _id : ObjectId("6406ad65fc13ae5a400000c7")},
    {$unset : { birthday: 1}}
)
db.test.updateOne(
    { _id : ObjectId("6406ad65fc13ae5a400000c7")},
    {$pop : { friends: -1}}
)


db.test.updateOne(
    { _id : ObjectId("6406ad65fc13ae5a400000c7")},
    {$pullAll : { languages: [ "Lao", "Czech"]}}
)
