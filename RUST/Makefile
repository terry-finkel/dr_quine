#################
##  VARIABLES  ##
#################

#	Environment
OS :=					$(shell uname)

#	Output
BIN_1 :=				Colleen
BIN_2 :=				Grace
BIN_3 :=				Sully

#	Compiler
CC :=					rustc
ifeq ($(OS), Darwin)
	THREADS := 			$(shell sysctl -n hw.ncpu)
else
	THREADS :=			4
endif
FAST :=					-j$(THREADS)

#	Sources
BIN1_SRC :=				Colleen.rs
BIN2_SRC :=				Grace.rs
BIN3_SRC :=				Sully.rs

#################
##    RULES    ##
#################

all: $(BIN_1) $(BIN_2) $(BIN_3)

$(BIN_1):
	@$(CC) $(BIN1_SRC) -o $@

$(BIN_2):
	@$(CC) $(BIN2_SRC) -o $@

$(BIN_3):
	@$(CC) $(BIN3_SRC) -o $@

clean:
	@/bin/rm -f $(BIN_1)
	@/bin/rm -f $(BIN_2)
	@/bin/rm -f $(BIN_3)

fast:
	@$(MAKE) --no-print-directory $(FAST)

fclean: clean
	@/bin/rm -f Grace_*
	@/bin/rm -f Sully_*

re: fclean fast

.PHONY: all clean fast fclean re
