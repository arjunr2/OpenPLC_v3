#!/bin/bash

# Compile the generated application
clang -Wno-varargs -Wno-parentheses-equality -Ilib main_runtime.c Config0.c Res0.c glueVars.cpp 
