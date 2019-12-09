# Details

Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

# Tasks

Task 1: Extract Nouns for Classes
Read the description above again and extract / write down the nouns that you feel could make for important entities (manifested in the form of classes) to contain (encapsulate) logic as part of this app.

```rb
Game
  - Turn
  - Evaluation
  - Prompt
Player
  - Name
  - Lives
Question
  - Askee
  - Statement (x + y)
  - Correct Answer
  - Response
```

# Task 2: Write their roles

What is the role for each class?

> Game
> Maintain the state of the game, responsible for first evaluating what needs to happen next, then prompting based on that evaluation. For example, assesses the number of lives for each player, then if both are positive move to the next turn. Maybe tracks a history for stats at the end.

> Player
> Simple entity that tracks the name of the player and their current health.

> Question
> Each question, initialized by the game if required (ie. the game has begun and nobody has lost), filled by way of prompts to the asker, correct answer automatically evaluated, then storing the response from the askee.

Remember that objects are important for two things:

- State: Storing data describing themselves (variables)
- Behavior: Defining actions that can be performed on them (methods)

Write down the methods for each class while also speaking to the following points:

- What information is relevant to each class?
- What will they need in order to be initialized?
- What public methods will be defined on them?

```rb
Game
  INIT
  ATTRIBUTES
    - Current_player
    - Current_round
    - Victory State
    - Stats
  METHODS
    - Init
    - Add Players
    - Prompt questions
    - Update Health of Players
    - Announce health updates
    - Announce game end
    - Relay stats
```

```rb
Player
  INIT
    - Name
    - (Default Health of 3)
  ATTRIBUTES
    - Name
    - Health
  METHODS
    - Init
    - Update Health
```

```rb
Question
  INIT
    - Askee
    - Statement
    - Correct Answer
  ATTRIBUTES
    - Askee
    - Statement (x + y)
    - Correct Answer
  METHODS
    - Init
    - Response
```

Furthermore:

- Which class will contain the game loop (where each instance of the loop is the other players turn)?
- Which class should manage who the current_player is?
- Which class(es) will contain user I/O and which will not have any?

```rb
Game
  - First Created
  - Contains Game Loop
  - Manages Current_Player
  - I/O
    - Start game / Play again
    - Set Name
    - Ask Question
      - process answer
```

```rb
Player
  - Second Created
```

```rb
Question
  - Created each round
```

# Task 3: Peer and Mentor review

Review your approach with your peers and then with a mentor to make sure you are on the right track before starting to write your code.
