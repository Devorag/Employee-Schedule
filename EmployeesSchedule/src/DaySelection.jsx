import React from 'react';

const DaySelection = ({ selectedDays, onDayChange }) => {
    const handleChange = (e) => {
        const selected = Array.from(e.target.selectedOptions, option => option.value);
        onDayChange(selected);
    };

    return (
        <div className="mt-4 mb-4 pt-1">
            <select
                className="form-select"
                multiple
                value={selectedDays}
                onChange={handleChange}
            >
                {["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"].map((day) => (
                    <option key={day} value={day}>{day}</option>
                ))}
            </select>
        </div>
    );
};

export default DaySelection;

