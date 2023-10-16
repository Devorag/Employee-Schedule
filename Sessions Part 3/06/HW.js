/*
You are tasked with creating a student record system for a school.
Each student has specific information that needs to be managed.
Your goal is to create, manipulate, and display student records using JavaScript objects.
1) You need to create student objects with the following properties.
    name (string): Name of the student.
    age (number): Age of the student.
    grade (string): Grade or class of the student.
    subjects (array): An array of the student's favorite subjects.
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