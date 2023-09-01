# Embarca Challenge

### Scenarios

- [x] A rails app, built from scratch that should contain:
- [x] A table with these states from Brazil: Paraná, Santa Catarina, and the Rio Grande
      do Sul
- [x] A table with some cities from Parana, Santa Catarina, and the Rio Grande do Sul
      (at least 3 of each state)
- [x] A route to retrieve all cities based on some received params: State, Part of the name
- [x] A frontend to display all cities that match with the search.
- [x] A test suite for this scenario

## 💻 Requirements

- [x] This app should be written with ruby version 2.7.0 and Rails version 5.x
- [x] This app should run in a docker container with docker-compose
- [x] Rubocop to make sure your code follows the standards

## 🚀 Installing the Embarca Challenge

Step by step:

Linux:
Clone this repository and enter in your folder:

```
sudo chown -R $USER:$USER .
```

Docker and docker compose must be installed:

```
docker compose build && docker compose up
```

## ☕ Using the Embarca Challenge

You just type in the name of the city you're curious about and choose the state you want to explore. It's like a map that instantly shows you all places in that area

Practical example:

![Alt text](to_readme/exemple.gif)
