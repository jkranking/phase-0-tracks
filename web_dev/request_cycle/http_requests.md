What are some common HTTP status codes?

200 OK
302 Found
400 Bad Request
404 Not Found
500 Internal Server Error
504 Gateway Time-out


What is the difference between a GET request and a POST request? When might each be used?

Get 

GET requests a representation of the specified resource. GET should not be used for operations that cause side-effects, such as using it for taking actions in web applications. One reason for this is that GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause.

Post

POST submits data to be processed (e.g., from an HTML form) to the identified resource. The data is included in the body of the request. This may result in the creation of a new resource or the updates of existing resources or both.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are data, stored in small text files, on your computer. When a web server has sent a web page to a browser, the connection is shut down, and the server forgets everything about the user. Cookies were invented to solve the problem "how to remember information about the user". When a user visits a web page, his name can be stored in a cookie. Next time the user visits the page, the cookie "remembers" his name. Cookies are saved in name-value pairs. When a browser requests a web page from a server, cookies belonging to the page are added to the request. This way the server gets the necessary data to "remember" information about users.