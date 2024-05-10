-- Gender hobe female, age hobe 18 er soman othoba boro, max 30, age ar gender show korbe,
-- age er upor assending order e sort korbe.

db.test.find(
    { gender: 'Female', age: {$gte: 18, $lte: 30}},
    {age:1, gender: 1}
    )
    .sort({age: 1})


-- in diye , jodi er er moddhe ekta data o mil pai taile ni asbe
db.test.find(
    { 
        gender: 'Female', 
        age: {$in: [16, 18, 30,50]},
        interests: { $in : ['Cooking', 'Gaming'] }
    },
    {
        age:1,
        gender: 1
    })
    .sort({age: 1})
