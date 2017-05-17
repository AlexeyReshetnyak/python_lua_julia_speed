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

echo 'C++ -O0'
g++ primes.cpp -O0 -lm -o primes
time ./primes
printf "\n"

echo 'C++ -O2'
g++ primes.cpp -O2 -lm -o primes
time ./primes
printf "\n"

echo 'C++ -O3'
g++ primes.cpp -O3 -lm -o primes
time ./primes
printf "\n"
