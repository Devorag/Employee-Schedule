//AS Good job, 89% Please see comments and resubmit.
/*
You are tasked with creating a student record system for a school.
Each student has specific information that needs to be managed.
Your goal is to create, manipulate, and display student records using JavaScript objects.
1) You need to create student objects with the following properties.
    name (string): Name of the student.
    age (number): Age of the student.
    grade (string): Grade or class of the student.
    subjects (array): An array of the subjects a student is enrolled in. Technical note: To make a property an array use [] for the propery value. subjects:[]
    name, age, grade can be specified when student is created.

2) A student may enroll in one or more majors, each major has a set of subjects.
    A student enrolls in a major not a single subject.
    We currently offer:
    Science (with subjects: Earth Science, Biology, Chemistry)
    Math (with subjects: Algebra, Geometry, Calculus)
    Literature (with subjects: English Literature, World Literature, Poetry)

3) Create function called addMajorToStudent. 
   function addMajorToStudent takes a student and a major and enrolls the student in all that major's subjects.
   No need to record that the student is taking that major, we only need to keep track of the subjects.
4) Create three students, enroll 2 of them in one major each (different than each other), enroll the third in all majors.
    Put all three students into an array
    Tech guidance: 
        Use an object constructor to produce the student objects.
        Do not put each student into a variable, rather initialize array with 3 new instances of student. 
5) Students may participate in a double-degree program where they can choose to take the same subjects at a different school and also earn a degree there.
   The double-degree records are independent of the records at our school, so you need to make a copy of the students that are double-degree.
   The first two students have elected to join the double-degree program. 
   Put them into a new array, and add a prop to each of them for the school name and give it a value (students without a school name are part of our school). 
6) At the bottom of the script output to the console each student array, show each student with all props and the subjects they are enrolled in.   
*/

//1)
function Student(name, age, grade) {
    this.name = name; 
    this.age = age; 
    this.grade = grade; 
    this.subjects = [];
}
//AS This is extra, take it out.
const s = new Student("Lea", 13, "8th Grade");
console.log(s);

//2) 
const majors = {
    "Science": ["Earth Science", "Biology", "Chemistry"],
//AS -1 The 3 subjects were algebra, geometry and calculus
    "Math": ["Alegbra I", "Alegbra II", "Geometry"],
    "Literature": ["English Literature", "World Literature", "Poetry"]
}
for (const subject in majors) {
        console.log(`${subject}: ${majors[subject].join(", ")}`);
}
//3)
function addMajorToStudent(student,major) {
    student.subjects.push(...majors[major]);
}
//AS This is also extra.
addMajorToStudent(s, "Science");

//4)
//AS -4 Following the instructions you should be putting all 3 students into an array without instantiating 3 variables.
const student1 = new Student("Ruth", 15, "10th Grade");
const student2 = new Student("Sara", 16, "11th Grade");
const student3 = new Student("Alice", 14, "9th Grade");


addMajorToStudent(student1,"Science");
addMajorToStudent(student2,"Math");
//AS -2 Adding all 3 majors to the 3rd student should be done in one line of code.
addMajorToStudent(student3, "Science");
addMajorToStudent(student3, "Math");
addMajorToStudent(student3, "Literature");

const students = [student1, student2, student3];

//5)  
//AS -4 Instructions were that only the first 2 students joined the double degree program
const doubleDegree = students.map(student => {
    const newStudent = Object.assign({}, student);
    newStudent.school = "Other School";
    return newStudent;
});


//6)

console.log("------------")
console.log("students:");

students.forEach(student => {
    console.log(`Student Name: ${student.name}`);
    console.log(`Age: ${student.age}`);
    console.log(`Grade: ${student.grade}`);
    console.log(`Subjects: ${student.subjects.join(", ")}`);
    console.log("");
});

console.log("------------");
console.log("Double Degree Students:"); 

doubleDegree.forEach(student => {
    console.log(`Student Name: ${student.name}`);
    console.log(`Age: ${student.age}`);
    console.log(`Grade: ${student.grade}`);
    console.log(`School: ${student.school}`);
    console.log(`Subjects: ${student.subjects.join(", ")}`);
    console.log("");
});
