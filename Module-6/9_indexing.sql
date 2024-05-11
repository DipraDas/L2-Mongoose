db.getCollection('massive-data').createIndex({email: 1}) 

db.test.find({_id: ObjectId('fsdfasdfsdc')}).explain('executeStats');