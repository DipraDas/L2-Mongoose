db.test.find({age: {$eq: 20}}) 

db.test.find({age: {$ne: 20}}) 

db.test.find({age: {$gte: 20}}).sort({age: 1}) 

db.test.find({age: {$lte: 20}}).sort({age: 1}) 

db.test.find({age: {$le: 20}}).sort({age: 1}) 