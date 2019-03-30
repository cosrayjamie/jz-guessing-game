# Jamie's makefile for guessinggame program

all: say_hello generate

say_hello:
	@echo "Hello, thanks for making this file."

generate:
	@echo "Creating README.md"
	@touch README.md
	@echo "#Title: Guessing Game Project#" > README.md
	@echo "##Date & time at which make was run: ##" >> README.md
	@now=$(date +%x,%X)
	@echo $now >> README.md
	@echo "*The number of lines of code contained in guessinggame.sh:* " >> README.md
	wc -l guessinggame.sh | grep -o "^[0-9].." >> README.md
	
clean:
	@echo "Cleaning up..."
	rm *.md
