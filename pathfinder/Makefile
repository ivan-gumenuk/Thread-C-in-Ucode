NAME = pathfinder
INC = ./inc/libmx.h
HEADTMP = ./libmx.h
NAME = pathfinder
INC = ./inc/libmx.h

HEADTMP = ./libmx.h

SRC = ./main.c \
	./mx_final_print.c \
	./mx_making_matrix.c \
	./mx_print_error.c \
	./mx_reading_strarr.c \
	./mx_recover_path.c \
	./mx_create_zero.c \
	./mx_print_distance.c \
	./mx_floyd.c \
	./mx_printerr.c \
	./mx_line_check.c \
	./mx_arr_size.c \
	./mx_count_short_ways.c \

SRCS = ./src/main.c \
	./src/mx_final_print.c \
	./src/mx_making_matrix.c \
	./src/mx_print_error.c \
	./src/mx_reading_strarr.c \
	./src/mx_recover_path.c \
	./src/mx_create_zero.c \
	./src/mx_print_distance.c \
	./src/mx_floyd.c \
	./src/mx_printerr.c \
	./src/mx_line_check.c \
	./src/mx_arr_size.c \
	./src/mx_count_short_ways.c \

OBJ = ./main.o \
	./mx_final_print.o \
	./mx_making_matrix.o \
	./mx_print_error.o \
	./mx_reading_strarr.o \
	./mx_recover_path.o \
	./mx_create_zero.o \
	./mx_print_distance.o \
	./mx_floyd.o \
	./mx_printerr.o \
	./mx_line_check.o \
	./mx_arr_size.o \
	./mx_count_short_ways.o \
	
OBJO = ./obj/main.o \
	./obj/mx_final_print.o \
	./obj/mx_making_matrix.o \
	./obj/mx_print_error.o \
	./obj/mx_reading_strarr.o \
	./obj/mx_recover_path.o \
    ./obj/mx_create_zero.o \
	./obj/mx_print_distance.o \
	./obj/mx_floyd.o \
	./obj/mx_printerr.o \
	./obj/mx_line_check.o \
	./obj/mx_arr_size.o \
	./obj/mx_count_short_ways.o \

CFLGS = -std=c11 -Wall -Wextra -Wpedantic -Werror 
all: install uninstall
install:
	@cd libmx && make -f Makefile all
	@cp $(INC) $(SRCS) .
	@clang $(CFLGS) -c  $(SRC)
	@mkdir  obj
	@mv $(OBJ) ./obj
	@clang $(CFLGS) $(OBJO) libmx/libmx.a -o $(NAME)
uninstall:
	@cd libmx && make -f Makefile uninstall
	@rm -rf $(OBJO) $(SRC) $(HEADTMP)
	@rm -rf ./obj
clean: uninstall
	@cd libmx && make -f Makefile clean
	@rm -rf $(NAME)
reinstall: clean all
