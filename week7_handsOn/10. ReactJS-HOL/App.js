import React from 'react';

const offices = [
  {
    name: "GreenTech Workspace",
    rent: 75000,
    address: "123, MG Road, Bengaluru",
    image: "https://via.placeholder.com/200x100?text=GreenTech"
  },
  {
    name: "Innovate Hub",
    rent: 55000,
    address: "456, Residency Road, Bengaluru",
    image: "https://via.placeholder.com/200x100?text=Innovate+Hub"
  },
  {
    name: "Skyline Offices",
    rent: 62000,
    address: "789, Koramangala, Bengaluru",
    image: "https://via.placeholder.com/200x100?text=Skyline"
  }
];

function App() {
  return (
    <div>
      <h1>Office Space Rentals</h1>
      {offices.map((office, index) => (
        <div key={index} style={{border: "1px solid gray", marginBottom: "10px", padding: "10px"}}>
          <img src={office.image} alt={office.name} />
          <h2>{office.name}</h2>
          <p style={{color: office.rent > 60000 ? "green" : "red"}}>Rent: ₹{office.rent}</p>
          <p>Address: {office.address}</p>
        </div>
      ))}
    </div>
  );
}

export default App;
