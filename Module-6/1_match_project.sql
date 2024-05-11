-- matching er pore project rakhte hobe.

db.test.aggregate([
    { $match: { gender: 'Male', age: { $lt: 30 } } },
    { $project: { name: 1, gender: 1 } },
])
