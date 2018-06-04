# Ada's Inspiration Board API

This API is intended for use with our second React project Ada's Inpiration Board.

## Retrieve Data
  - **Retrieve list of all Boards:** http://localhost:3000/boards

  - **Retrieve list of cards for a single board From ID:** http://localhost:3000/boards/1

  - **Retrieve specific card:** http://localhost:3000/boards/:board_id/cards/:card_id

## Send Data

  - **Create a board:**
    - POST http://localhost:3000/boards
    - accepted params:
      - name (string)

  - **Add a New Card:**
    - POST http://localhost:3000/boards/:board_id/cards
    - accepted params:
      - title (string)
      - content (string)
      - image_url (string)

## Update Data

- **Update a board**
  - PATCH http://localhost:3000/boards/:board_id
    - name (string)

- **Update a card**
  - PATCH http://localhost:3000/boards/:board_id/cards/:card_id
  - title (string)
  - content (string)
  - image_url (string)

## Delete Data
- **Delete a board, warning destroys all card data for that board**
  - DELETE http://localhost:3000/boards/:board_id
- **Delete a card**
  - DELETE http://localhost:3000/boards/:board_id/cards/:card_id
