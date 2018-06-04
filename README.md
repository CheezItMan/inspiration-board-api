# Ada's Inspiration Board API

This API is intended for use with our second React project Ada's Inpiration Board.

## Retrieve Data
  - **Retrieve list of all Boards:** https://inspiration-bard.herokuapp.com/boards

  - **Retrieve list of cards for a single board From ID:** https://inspiration-bard.herokuapp.com/boards/1

  - **Retrieve specific card:** https://inspiration-bard.herokuapp.com/boards/:board_id/cards/:card_id

## Send Data

  - **Create a board:**
    - POST https://inspiration-bard.herokuapp.com/boards
    - accepted params:
      - name (string)

  - **Add a New Card:**
    - POST https://inspiration-bard.herokuapp.com/boards/:board_id/cards
    - accepted params:
      - title (string)
      - content (string)
      - image_url (string)

## Update Data

- **Update a board**
  - PATCH https://inspiration-bard.herokuapp.com/boards/:board_id
    - name (string)

- **Update a card**
  - PATCH https://inspiration-bard.herokuapp.com/boards/:board_id/cards/:card_id
  - title (string)
  - content (string)
  - image_url (string)

## Delete Data
- **Delete a board, warning destroys all card data for that board**
  - DELETE https://inspiration-bard.herokuapp.com/boards/:board_id
- **Delete a card**
  - DELETE https://inspiration-bard.herokuapp.com/boards/:board_id/cards/:card_id
