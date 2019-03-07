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
CC :=					gcc
SCC :=					nasm64 -f macho64
FLAGS :=				-Wall -Wextra -Werror
ifeq ($(OS), Darwin)
	THREADS := 			$(shell sysctl -n hw.ncpu)
else
	THREADS :=			4
endif
FAST :=					-j$(THREADS)

#	Sources
BIN1_SRC :=				$(BIN_1).s
BIN2_SRC :=				$(BIN_2).s
BIN3_SRC :=				$(BIN_3).s
OBJ_1 :=				$(patsubst %.s, %.o, $(BIN1_SRC))
OBJ_2 :=				$(patsubst %.s, %.o, $(BIN2_SRC))
OBJ_3 :=				$(patsubst %.s, %.o, $(BIN3_SRC))

#################
##    RULES    ##
#################

all: $(BIN_1) $(BIN_2) $(BIN_3)

$(OBJ_1):
	@$(SCC) $(BIN1_SRC)
$(BIN_1): $(OBJ_1)
	@$(CC) $(FLAGS) $< -o $@

$(OBJ_2):
	@$(SCC) $(BIN2_SRC)
$(BIN_2): $(OBJ_2)
	@$(CC) $(FLAGS) $< -o $@

$(OBJ_3):
	@$(SCC) $(BIN3_SRC)
$(BIN_3): $(OBJ_3)
	@$(CC) $(FLAGS) $< -o $@

clean:
	@/bin/rm -f $(OBJ_1)
	@/bin/rm -f $(OBJ_2)
	@/bin/rm -f $(OBJ_3)

fast:
	@$(MAKE) --no-print-directory $(FAST)

fclean: clean
	@/bin/rm -f $(BIN_1)
	@/bin/rm -f $(BIN_2)
	@/bin/rm -f $(BIN_3)

purge: fclean
	@/bin/rm -f Grace_*
	@/bin/rm -f Sully_*

re: fclean fast

.PHONY: all clean fast fclean re
