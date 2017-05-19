echo 'sqrt C++ -O2'
gcc test_sqrt.c -O2 -lm -o test_sqrt
time ./test_sqrt
printf "\n"

echo 'LuaJit'
time luajit test_sqrt.lua
printf "\n"

