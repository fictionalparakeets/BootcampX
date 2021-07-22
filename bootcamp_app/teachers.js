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


const cohortsName = process.argv[2] || 'JUL02';
// Store all potentially malicious values in an array.
const values = [`%${cohortsName}%`];


pool
.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name LIKE $1
ORDER BY teachers.name;
`, values)
.then(res => {
  res.rows.forEach(entry => {
    console.log(`${entry.cohort}: ${entry.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));
