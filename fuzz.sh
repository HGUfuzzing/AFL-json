
afl-gcc -o ./test-instr1 ./test-instr.c
afl-gcc -o ./test-instr2 ./test-instr.c
afl-gcc -o ./test-instr3 ./test-instr.c
afl-gcc -o ./test-instr4 ./test-instr.c
screen -dmS fuzzer1 /bin/bash -c "afl-fuzz -i ./testcases -o ./outputs -j ./jsons/test1.json -S fuzzer1 -- ./test-instr1"
screen -dmS fuzzer2 /bin/bash -c "afl-fuzz -i ./testcases -o ./outputs -j ./jsons/test2.json -S fuzzer2 -- ./test-instr2"
screen -dmS fuzzer3 /bin/bash -c "afl-fuzz -i ./testcases -o ./outputs -j ./jsons/test3.json -S fuzzer3 -- ./test-instr3"
screen -dmS fuzzer4 /bin/bash -c "afl-fuzz -i ./testcases -o ./outputs -j ./jsons/test4.json -S fuzzer4 -- ./test-instr4"
