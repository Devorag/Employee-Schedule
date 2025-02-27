import React from 'react';

const EmployeeCard = ({ employee }) => (
    <div className="card mt-3 p-3">
        <h5>{employee.name}</h5>
        <p>Phone: {employee.phone}</p>
        <p>Workdays: {employee.workdays.join(', ')}</p>
    </div>
);

export default EmployeeCard;
