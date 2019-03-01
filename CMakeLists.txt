cmake_minimum_required(VERSION 3.13)
project(dr_quine C)

set(CMAKE_C_STANDARD 11)

add_executable(dr_quine
        C/Colleen.c
        C/Grace.c
        C/Sully.c)
