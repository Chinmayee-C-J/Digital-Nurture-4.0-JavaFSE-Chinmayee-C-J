import React from 'react';

const ListofPlayers = () => {
  const players = [
    { name: "Virat", score: 100 },
    { name: "Rohit", score: 90 },
    { name: "Dhawan", score: 60 },
    { name: "Pant", score: 85 },
    { name: "Rahul", score: 45 },
    { name: "Jadeja", score: 75 },
    { name: "Bumrah", score: 55 },
    { name: "Shami", score: 95 },
    { name: "Ashwin", score: 35 },
    { name: "Kuldeep", score: 65 },
    { name: "Samson", score: 80 }
  ];

  const highScorers = players.filter(player => player.score >= 70);

  return (
    <div>
      <h2>High Scoring Players (70+)</h2>
      <ul>
        {highScorers.map((player, index) => (
          <li key={index}>{player.name} - {player.score}</li>
        ))}
      </ul>
    </div>
  );
};

export default ListofPlayers;
