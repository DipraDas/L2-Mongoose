-- Implicit And
db.test.find({ age:{$ne: 14, $lte: 50} }) 
-- Explicit And
db.test.find({
    $and: [
        { gender: 'Female' },
        { age: { $ne: 26 } },
        { age: { $lte: 35 } }
    ]
}).project({
    age: 1,
    gender: 1
}).sort({
    age: 1
})


-- Explicit OR

    db.test.find({
    $or: [
        { 'skills.name': 'JAVASCRIPT' },
        { 'skills.name': 'PYTHON' }
    ]
}).project({
    skills: 1
}).sort({
    age: 1
})
-- Another Way
db.test.find({
    'skills.name': { $in: ['JAVASCRIPT', 'PYTHON'] }
}).project({
    skills: 1
}).sort({
    age: 1
})
