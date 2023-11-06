Algoritmo GUESS_THE_NUMBER
	Escribir "WELCOME TO THE GUESS THE NUMBER GAME."
	Escribir "GUESS A NUMBER BETWEEN 1-100."
	Escribir "TYPE 999 TO EXIT THE GAME"
	Definir secretNumber, count, numberFromUser Como Entero
	Definir exitGame Como Logico
	secretNumber<-azar(100)
	count<-0
	numberFromUser<-0
	exitGame<-Falso
	Mientras exitGame = Falso Hacer
		
		Leer numberFromUser
		
		Si numberFromUser = 9999 Entonces
			Escribir  "You are cheating!!!"
			Escribir secretNumber
			exitGame<-Verdadero
		Fin Si
		
		Si numberFromUser = 999 Entonces
			Escribir  "You are leaving the game"
			exitGame<-Verdadero
		SiNo
			Si numberFromUser > secretNumber Entonces
				Escribir "Almost, but is above"
			Fin Si
			Si numberFromUser < secretNumber Entonces
				Escribir "Too low :("
			Fin Si
			Si numberFromUser = secretNumber Entonces
				Escribir "You are the Champion!!!"
				exitGame<-Verdadero
			Fin Si
			
			count<-count+1
			Escribir "TRIES: " count
			Escribir ""
		FinSi
	Fin Mientras
FinAlgoritmo
