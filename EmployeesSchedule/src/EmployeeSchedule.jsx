import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Header from './Header.jsx';
import EmployeeList from './EmployeeList.jsx';
import DaySelection from './DaySelection';
import EmployeeForm from './EmployeeForm';
import Swal from 'sweetalert2';

export default function EmployeeSchedule() {
    const [employees, setEmployees] = useState([]);
    const [selectedDays, setSelectedDays] = useState([]);
    const [sortOrder, setSortOrder] = useState("asc");
    const [newEmployee, setNewEmployee] = useState({ name: "", phone: "", workdays: [] });

    useEffect(() => {
        fetch('public/EmployeeInfo.json')
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! Status: ${response.status}`);
                }
                return response.json();
            })
            .then(data => setEmployees(data.employees))
            .catch(error => console.error("Error loading employee data:", error));
    }, []);

    const filteredEmployees = selectedDays.length > 0
        ? employees.filter(employee =>
            employee.workdays.some(day => selectedDays.includes(day))
        )
        : employees;

    const sortedEmployees = [...filteredEmployees].sort((a, b) => {
        const lastNameA = a.name.split(" ").slice(-1)[0].toLowerCase();
        const lastNameB = b.name.split(" ").slice(-1)[0].toLowerCase();

        return sortOrder === "asc" ? lastNameA.localeCompare(lastNameB) : lastNameB.localeCompare(lastNameA);
    });

    const handleInputChange = (e) => {
        setNewEmployee({ ...newEmployee, [e.target.name]: e.target.value });
    };

    const handleWorkdayChange = (day) => {
        setNewEmployee((prev) => ({
            ...prev,
            workdays: prev.workdays.includes(day)
                ? prev.workdays.filter((d) => d !== day)
                : [...prev.workdays, day],
        }));
    };

    const handleAddEmployee = () => {
        if (newEmployee.name && newEmployee.phone && newEmployee.workdays.length > 0) {
            const newId = employees.length ? Math.max(...employees.map(e => e.id)) + 1 : 1;
            setEmployees([...employees, { id: newId, ...newEmployee }]);
            setNewEmployee({ name: "", phone: "", workdays: [] });
        } else {
            Swal.fire({
                title: 'Missing Information!',
                text: 'Please fill out all fields before adding an employee.',
                icon: 'error',
                confirmButtonText: 'OK'
            }).then(() => {
                setNewEmployee({ name: "", phone: "", workdays: [] });
            });
        }
    };

    return (
        <div className="container-fluid bg-gradient">
            <Header />
            <div className="subheader text-center py-3">
                <p className="h5">
                    Select a day(s) from the dropdown below to see which employees are working on that day.
                </p>
            </div>

            <div className="row justify-content-center align-items-start">
                <div className="col-lg-8 col-md-7">
                    <div className="text-white">
                        <DaySelection selectedDays={selectedDays} onDayChange={setSelectedDays} />
                        <button
                            className="btn btn-outline-light mb-4"
                            onClick={() => setSortOrder(sortOrder === "asc" ? "desc" : "asc")}
                        >
                            Sort by Name ({sortOrder === "asc" ? "A-Z" : "Z-A"})
                        </button>
                        <EmployeeList employees={sortedEmployees} />
                    </div>
                </div>
                <div className="col-lg-4 col-md-5">
                    <EmployeeForm
                        newEmployee={newEmployee}
                        onInputChange={handleInputChange}
                        onWorkdayChange={handleWorkdayChange}
                        onAddEmployee={handleAddEmployee}
                    />
                </div>
            </div>
        </div>
    );
}
