const net = require('net');

// SOCKET CONNECTION
const server = net.createServer((socket) => {
  socket.on("data", (buffer) => {
    const requestString = buffer.toString('utf-8')

    const request = parseRequest(requestString);
    console.log(request.method, request.path, request.protocol)
    console.log(requestString);
  })
})

// FUNCTION TO EXTRACT REQUEST DATA
const parseRequest = (requestString) => {
  const [method, path, protocol] = requestString.split(" ");
  // syntax for creating three different variables from the split request string
  return {
    method,
    path,
    protocol
  }
  // request object returned



}

server.listen(9999, () => console.log("Listening ****"))

/* 
BUILDING A SERVER
Whenever the server creates data, we take the data that exists in 'buffer' 
– buffer is a temporary place in memory to hold the data –
take the buffer and create a string from it and logging out that string. 
So the server is listening for data and then will log it out once received
Local system port 9999
Run code : $ node webserver.js
In another terminal connect ot server $ telnet localhost 9999
Send HTTP request as a string 'GET / HTTP/1.1' 
Now that we have the string, we can do something with it - make a function called parseRequest
*/