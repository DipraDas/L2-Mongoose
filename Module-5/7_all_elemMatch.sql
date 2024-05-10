// want value in exact position 
// db.test.find({"interests.2": "Cooking"}).project({interests:1})
// does exact matching 
// db.test.find({interests:["Cooking", "Writing"]}).project({interests:1})


// db.test.find({interests: {$all: ["Cooking", "Writing"]}}).project({interests:1})


// Just looks for the value
// db.test.find({"skills.name": "JAVASCRIPT"})


// does exact matching
// db.test.find({skills:{
//     name:"JAVASCRIPT",
//     level:"Intermidiate",
//     isLearning: false
// }})


db.test.find({ skills: {
    $elemMatch: {
        name: "JAVASCRIPT",
        level:"Intermidiate"
    }
}}).project({skills:1})
