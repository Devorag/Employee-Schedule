import React from 'react';

const EmployeeForm = ({ newEmployee, onInputChange, onWorkdayChange, onAddEmployee }) => (
    <div className="card mt-4 p-4">
        <h3 className="text-dark">Add New Employee</h3>
        <input
            type="text"
            className="form-control mb-2"
            placeholder="Employee Name"
            name="name"
            value={newEmployee.name}
            onChange={onInputChange}
        />
        <input
            type="text"
            className="form-control mb-2"
            placeholder="Phone Number"
            name="phone"
            value={newEmployee.phone}
            onChange={onInputChange}
        />

        <div className="checkbox-container">
            {["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"].map((day) => (
                <label key={day} className="form-check-label me-3">
                    <input
                        type="checkbox"
                        className="form-check-input me-1"
                        checked={newEmployee.workdays.includes(day)}
                        onChange={() => onWorkdayChange(day)}
                    />
                    {day}
                </label>
            ))}
        </div>

        <button className="btn mt-3" onClick={onAddEmployee}>
            Add Employee
        </button>
    </div>
);

export default EmployeeForm;
