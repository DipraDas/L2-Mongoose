-- Inserting Data
db.test.insertOne({name: 'Something'}) 
-- Insert Many Data
db.test.insertMany([ {name: 'Complete Web Developmet'}, {Next Level Web Development} ]) 

-- Find one
db.test.findOne({company: 'Demimbu'}) 
-- Find All Data
db.test.find({gender: 'Female'}) 
-- Field Filtering
db.test.find({gender: 'Male'}, {name: 1, email: 1, phone: 1, gender: 1})


--project shudhu fine er sathe kaj kore.
db.test.find({gender: 'Male'}).project({name: 1}) 