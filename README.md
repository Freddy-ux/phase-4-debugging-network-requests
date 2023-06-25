# Debugging Network Requests

## Learning Goals

- Identify where to look when there are issues communicating between client and
  server
- Use the browser developer tools to debug on the frontend
- Use server logging tools and `byebug` to isolate errors on the backend

## Introduction

Now that we're able to make requests using JavaScript to our Rails server, let's
focus on some common issues that arise when making network requests, and learn
techniques to help debug.

To get the backend set up, run:

```console
$ bundle install
$ rails db:migrate db:seed
$ rails s
```

Then, in a new terminal, run the frontend:

```console
$ npm install --prefix client
$ npm start --prefix client
```
Your Notes Here

Add a new toy when the toy form is submitted

How I debugged: It was displaying 500 Internal Server Error and NameError (uninitialized constant ToysController::Toys), so I changed the word Toys to Toy at the method create.
Update the number of likes for a toy

How I debugged: It was displaying Unexpected end of json , so I made sure the update method was rendering json .
Donate a toy to Goodwill (and delete it from our database)

How I debugged: It was displaying: ActionController::RoutingError (No route matches [DELETE] "/toys/9"): and 404 (Not Found) so I added a destroy route in the Routes config file.