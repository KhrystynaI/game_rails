Raffle
On the homepage, which already accesses the desired URL, the user sees the greetings, the rules of the game, and table with 6 boxes.
The table contains an array filled with random numbers from 1 to 10 and a mandatory number 5, which is winning digit.
Below, the player is asked to enter the boxes number, where, in his opinion, the winning digit is hidden.
The number entered by the player is an array index. If the value is "5", the program goes to the congratulations page.
Otherwise, the player sees the page with the suggestion to try again.

The project uses two models. First (Board) contains the array that is automatically filled in when creating an instance of the class.
Another model (Number) has an attribute of  integer that is entered by the user. The model verifies the entered number and this number will store in the database.
The models are linked by a connection belong_to (board_ belongs_to number) and has_one (number has_one board).
Also we use the "Numbers" controller, which contains an actions: “new”, “create” and “show”.
The first and second actions represent and create the “numb” attribute and the instance of the board.
The “show” action sends the user to the view where the method is called, which selects a number from the board array.

git clone git@github.com:KhrystynaInzhuvatova/game_rails.git

rails s - start the server and go to the main page 'localhost: 3000'

rake db:migrate

you can change board's size in 'config/application.yml'
