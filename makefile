# that is a simple makefile

dependencies := $(guessinggame.sh)

readme : $(dependencies)
	@echo '##The besT guessingGame.sh' > README.md	
	@echo 'The date and time of this make : $(date +"%Y-%m-%d %H:%M:%S").' >> README.md 
	@echo 'The guessing game has $(wc -l $(dependencies)) lines.' >> README.md  

