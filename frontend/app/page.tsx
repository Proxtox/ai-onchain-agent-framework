"use client";

import { useState } from 'react';

export default function AIAgentDashboard() {
  const [strategy, setStrategy] = useState('');

  const handleExecute = () => {
    alert(`Executing strategy: ${strategy} (demo)`);
  };

  return (
    <div className="max-w-md mx-auto mt-10 p-8 border rounded-3xl">
      <h1 className="text-3xl font-bold mb-8 text-center">AI On-Chain Agent</h1>

      <div className="space-y-4">
        <input
          type="text"
          value={strategy}
          onChange={(e) => setStrategy(e.target.value)}
          className="w-full p-4 border rounded-2xl"
          placeholder="Strategy ID or description"
        />
        <button
          onClick={handleExecute}
          className="w-full bg-purple-600 hover:bg-purple-700 text-white py-4 rounded-2xl text-lg font-semibold"
        >
          Execute Strategy
        </button>
      </div>
    </div>
  );
}