import React, { useState } from 'react';

function CurrencyConvertor() {
  const [rupees, setRupees] = useState('');
  const [euro, setEuro] = useState(null);

  const handleChange = (e) => {
    setRupees(e.target.value);
  };

  const handleSubmit = () => {
    const conversionRate = 0.011; // Approximate conversion
    setEuro((rupees * conversionRate).toFixed(2));
  };

  return (
    <div>
      <h2>Currency Convertor</h2>
      <input type="number" value={rupees} onChange={handleChange} placeholder="INR" />
      <button onClick={handleSubmit}>Convert</button>
      {euro && <p>{rupees} INR = €{euro}</p>}
    </div>
  );
}

export default CurrencyConvertor;
