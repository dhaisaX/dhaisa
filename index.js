const express = require('express');
const app = express();

// Define a route for the root path
app.get('/', (req, res) => {
  res.send('🎉 Hello from the root route!');
});

// Start the server
app.listen(3000, () => {
  console.log('Server is running on http://localhost:3000');
});
