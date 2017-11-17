Raffle
On the homepage, which already accesses the desired URL, the user sees the greetings, the rules of the game, and table with 6 boxes.
The table contains an array filled with random numbers from 1 to 10 and a mandatory number 5, which is winning digit.
Below, the player is asked to enter the boxes number, where, in his opinion, the winning digit is hidden.
The number entered by the player is an array index. If the value is "5", the program goes to the congratulations page.
Otherwise, the player sees the page with the suggestion to try again.


git clone git@github.com:KhrystynaInzhuvatova/game_rails.git

rails s - start the server and go to the main page 'localhost: 3000'

rake db:migrate

you can change board's size in 'config/application.yml'
