const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect().then(() => {
	console.log("Connected")
}).catch(e => {
	console.log(e.message);
})


pool.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`)
.then(res => {
  res.rows.forEach(entry => {
    console.log(`${entry.name} has an id of ${entry.student_id} and was in the ${entry.cohort} cohort.`);
  })
})
.catch(err => console.error('query error', err.stack));
