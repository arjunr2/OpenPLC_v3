#!/bin/bash

SYSROOT_DIR=/home/arjun/Documents/research/wasm/wali/wali-musl/sysroot
# Compile the generated application
clang --target=wasm32-wasi-threads -O1 -pthread \
               --sysroot=$SYSROOT_DIR -L$SYSROOT_DIR/lib \
               -matomics -mbulk-memory -mmutable-globals -msign-ext \
               -Wl,--shared-memory -Wl,--export-memory -Wl,--max-memory=67108864 \
               -Wno-varargs -Wno-parentheses-equality \
               -Ilib \
               main_runtime.c Config0.c Res0.c glueVars.cpp \
               -o app.wasm
wasm2wat --enable-threads app.wasm -o app.wat
