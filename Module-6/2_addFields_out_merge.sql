-- A new collection will be create with adding course and eduTech and monerMoto with existing data.
-- Orginal collection will not modified.
db.test.aggregate([
  {$match: {gender: 'Male'}}, 
  {$addFields: {course: 'level-2', eduTech: 'Programming Hero', monerMoto: 'Moner Iccha'}},
  {$out: "course-students"}
])

-- Orginal collection will be modified.
db.test.aggregate([
  {$match: {gender: 'Male'}}, 
  {$addFields: {course: 'level-2', eduTech: 'Programming Hero', monerMoto: 'Moner Iccha'}},
  {$merge: "test"}
])
