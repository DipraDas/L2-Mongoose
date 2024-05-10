db.test.find({company: {exists: false}}) 

db.test.find({friends: {$type : 'array'}}) 

db.test.find({friends: {$size:0}}).project({friends: 1}) 