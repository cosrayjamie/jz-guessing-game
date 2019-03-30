# Jamie's makefile for guessinggame program

all: say_hello generate

say_hello:
	@echo "Hello, thanks for making this file."

generate:
	@echo "It created README.md for a GitHub Page."
	@touch README.md
	@echo "#Title: Guessing Game Project#" > README.md
	@echo "##**By Jamie Z**##" >> README.md
	@echo >> README.md
	@echo "##Date & time at which make was run: ##" >> README.md
	@echo "`date +%x,%X`" >> README.md
	@echo >> README.md
	@echo "*The number of lines of code contained in guessinggame.sh:* " >> README.md
	@wc -l guessinggame.sh | grep -o "^[0-9].." >> README.md
	
clean:
	@echo "Cleaning up..."
	rm *.md
