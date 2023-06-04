#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo -e "\nEnter your username:"
read USERNAME
USERNAME_RESULT=$($PSQL "select username from users where username='$USERNAME'")
#SE FIJA SI EXISTE EL USUARIO
if [[ -z $USERNAME_RESULT ]]
#SI NO EXISTE LO AGREGA
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  INSERT_USERNAME=$($PSQL "insert into users(username) values('$USERNAME')")
#SI EXISTE LE MUESTRA LA CANTIDAD DE PARTIDAS JUGADAS Y SU MEJOR INTENTO
else
  GAMES_PLAYED=$($PSQL "select count(game_id) from games join users using(user_id) where username='$USERNAME'")
  BEST_GAME=$($PSQL "select min(guesses) from games join users using(user_id) where username='$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
#GENERA NUMERO SECRETO
SECRET_NUMBER=$((RANDOM % 1000 + 1))
NUMBER_OF_GUESSES=0

echo -e "\nGuess the secret number between 1 and 1000:"
read USER_GUESS
#SE REPITE HASTA QUE EL USUARIO ACIERTE EL NUMERO SECRETO
while [[ $USER_GUESS != $SECRET_NUMBER ]]
do 
  ((NUMBER_OF_GUESSES++))
  #SE FIJA QUE SE HAYA INGRESADO UN NUMERO
  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    read USER_GUESS
  else
  #REVISA SI EL NUMERO INGRESADO ES MAYOR O MENOR
    if [[ $USER_GUESS -gt $SECRET_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      read USER_GUESS
    else
      echo -e "\nIt's lower than that, guess again:"
      read USER_GUESS
    fi
  fi
done
#SUMA LA ULTIMA ADIVINANZA
((NUMBER_OF_GUESSES++))
#DA EL RESULTADO DE LA PARTIDA
echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
#BUSCA LA ID
USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
#INSERTA RESULTADOS DEL JUEGO
INSERT_GAME_RESULTS=$($PSQL "insert into games(user_id,guesses) values($USER_ID,$NUMBER_OF_GUESSES)")