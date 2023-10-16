// Step 1: Create a student object template
function Student(name, age, grade) {
    return {
        name,
        age,
        grade,
        subjects: []
    };
}

// Step 2: Define the available majors and their subjects
const science = ["Earth Science", "Biology", "Chemistry"];
const math = ["Algebra", "Geometry", "Calculus"];
const literature = ["English Literature", "World Literature", "Poetry"];

const cook = {}
function addMajorToStudent(student, major) {
    student.subjects.push(...major);
}

function removeSubjectFromStudent(student, subject) {
    student.subjects.pop(subject);
}

const students = [new Student("Adam", 20, "12"), new Student("Bob", 21, "13"), new Student("Charles", 22, "14")]
addMajorToStudent(students[0], science);
addMajorToStudent(students[1], math);
const majors = [science, math, literature];
majors.forEach(m => students[2].subjects.push(...m));

const dblstudents = [];
students.slice(0, 2).forEach(s => dblstudents.push({ ...s }));
dblstudents.forEach(s => s.schoolName = "other school");

students.forEach(s => console.log(s, ...s.subjects))
console.log("--------------")
dblstudents.forEach(s => console.log(s, ...s.subjects))
