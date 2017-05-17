echo 'Python'
time python primes.py
printf "\n"

echo 'Julia'
time julia primes.jl
printf "\n"

echo 'Lua'
time lua primes.lua
printf "\n"

echo 'LuaJit'
time luajit primes.lua
printf "\n"

echo 'C++'
g++ primes.cpp -lm -o primes
time ./primes
printf "\n"
