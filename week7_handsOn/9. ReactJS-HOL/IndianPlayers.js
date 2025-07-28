import React from 'react';

const IndianPlayers = () => {
  const T20players = ["Virat", "Rohit", "Pant", "Hardik"];
  const RanjiTrophyPlayers = ["Pujara", "Rahane", "Iyer", "Karun"];

  const allPlayers = [...T20players, ...RanjiTrophyPlayers];

  const [p1, p2, p3, p4, p5, p6, p7, p8] = allPlayers;

  const oddTeam = [p1, p3, p5, p7];
  const evenTeam = [p2, p4, p6, p8];

  return (
    <div>
      <h2>Odd Team Players</h2>
      <ul>{oddTeam.map((player, i) => <li key={i}>{player}</li>)}</ul>

      <h2>Even Team Players</h2>
      <ul>{evenTeam.map((player, i) => <li key={i}>{player}</li>)}</ul>
    </div>
  );
};

export default IndianPlayers;
