cd ..
echo compile..
make reinstall

echo Standart test:
echo "\n"

echo Test: ls
./uls ./Libmx/src 1> ./test/test.txt
ls ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -l -a -T
./uls -l -a -T 1> ./test/test.txt
ls -l -a -T 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -a -l -- -1 ./
mkdir -- -1
./uls -a -l -- -1 ./ 1> ./test/test.txt
ls -a -l -- -1 ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
rm -rf -- -1
echo "\n"

echo Test: ls -lCml
./uls -lCml 1> ./test/test.txt
ls -lCml 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -laA ./../
./uls -laA ./../  1> ./test/test.txt
ls -laA ./../ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -l /usr/bin
./uls -l /usr/bin 1> ./test/test.txt
ls -l /usr/bin 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls {link}
./uls ./test 1> ./test/test.txt
ls ./test 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -la
./uls -la 1> ./test/test.txt
ls -la 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -lA
./uls -lA 1> ./test/test.txt
ls -lA 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lf
./uls -lf 1> ./test/test.txt
ls -lf 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lu
./uls -lu 1> ./test/test.txt
ls -lu 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -li
./uls -li ./Libmx/src 1> ./test/test.txt
ls -li ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lk
./uls -lk ./Libmx/src 1> ./test/test.txt
ls -lk ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lshi
./uls -lshi ./Libmx/src 1> ./test/test.txt
ls -lshi ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lat
./uls -lat 1> ./test/test.txt
ls -lat 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -ltc
./uls -ltc 1> ./test/test.txt
ls -ltc 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lT
./uls -lT 1> ./test/test.txt
ls -lT 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lSr
./uls -lSr ./Libmx/src 1> ./test/test.txt
ls -lSr ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lSa
./uls -lSa 1> ./test/test.txt
ls -lSa 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lS
./uls -lS 1> ./test/test.txt
ls -lS 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lag
./uls -lag 1> ./test/test.txt
ls -lag 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -l1
./uls -l1 1> ./test/test.txt
ls -l1 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C
./uls -C ./Libmx/src 1> ./test/test.txt
ls -C ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lf
./uls -lf ./Libmx/src 1> ./test/test.txt
ls -lf ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -Cf
./uls -Cf ./Libmx/src 1> ./test/test.txt
ls -Cf ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -ln
./uls -ln ./Libmx/src 1> ./test/test.txt
ls -ln ./Libmx/src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lh /
./uls -lh / 1> test/test.txt
ls -lh / 1> test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -lRh ./../
touch ./../../test.txt ./../../std.txt
ls -lRh ./../ 1> ./../../test.txt
ls -lRh ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo "-----------------------------------------------------"
echo "all -> ./Uls -l\n"

echo Test: ls -lR ./../
touch ./../../test.txt ./../../std.txt
ls -lR ./../ 1> ./../../test.txt
ls -lR ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo Test: ls -l
./uls -l 1> ./test/test.txt
ls -l 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l .
./uls -l . 1> ./test/test.txt
ls -l . 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./
./uls -l ./ 1> ./test/test.txt
ls -l ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l /
./uls -l / 1> ./test/test.txt
ls -l / 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./Makefile ./.gitignore
./uls -l ./Makefile ./.gitignore 1> ./test/test.txt
ls -l ./Makefile ./.gitignore 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./Makefile
./uls -l ./Makefile 1> ./test/test.txt
ls -l ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./Libmx
./uls -l ./Libmx 1> ./test/test.txt
ls -l ./Libmx 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./Libmx ./Makefile
./uls -l ./Libmx ./Makefile 1> ./test/test.txt
ls -l ./Libmx ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./Libmx ./uls ./src
./uls -l ./Libmx ./uls ./src 1> ./test/test.txt
ls -l ./Libmx ./uls ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -l ./Libmx ./src
./uls -l ./Libmx ./src 1> ./test/test.txt
ls -l ./Libmx ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo "-----------------------------------------------------"
echo Additionall test:
echo "all -> ./Uls\n"

echo Test: ls
./uls 1> ./test/test.txt
ls 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls .
./uls . 1> ./test/test.txt
ls . 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./
./uls ./ 1> ./test/test.txt
ls ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls /
./uls / 1> ./test/test.txt
ls / 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./Makefile 
./uls ./Makefile 1> ./test/test.txt
ls ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./Makefile ./.gitignore
./uls ./Makefile ./.gitignore 1> ./test/test.txt
ls ./Makefile ./.gitignore 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./Makefile ./uls
./uls ./Makefile ./uls 1> ./test/test.txt
ls ./Makefile ./uls 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./Libmx
./uls ./Libmx 1> ./test/test.txt
ls ./Libmx 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./Libmx ./src
./uls ./Libmx ./src 1> ./test/test.txt
ls ./Libmx ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls ./Libmx ./Makefile ./src
./uls ./Libmx ./Makefile ./src 1> ./test/test.txt
ls ./Libmx ./Makefile ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -R ./../
touch ./../../test.txt ./../../std.txt
ls -R ./../ 1> ./../../test.txt
ls -R ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo "-----------------------------------------------------"
echo Additionall test2:
echo "all -> ./Uls -1\n"

echo Test: ls -1
./uls -1 1> ./test/test.txt
ls -1 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 .
./uls -1 . 1> ./test/test.txt
ls -1 . 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./
./uls -1 ./ 1> ./test/test.txt
ls -1 ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 /
./uls -1 / 1> ./test/test.txt
ls -1 / 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./Makefile 
./uls -1 ./Makefile 1> ./test/test.txt
ls -1 ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./Makefile ./.gitignore
./uls -1 ./Makefile ./.gitignore 1> ./test/test.txt
ls -1 ./Makefile ./.gitignore 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./Makefile ./uls
./uls -1 ./Makefile ./uls 1> ./test/test.txt
ls -1 ./Makefile ./uls 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./Libmx
./uls -1 ./Libmx 1> ./test/test.txt
ls -1 ./Libmx 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./Libmx ./src
./uls -1 ./Libmx ./src 1> ./test/test.txt
ls -1 ./Libmx ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1 ./Libmx ./Makefile ./src
./uls -1 ./Libmx ./Makefile ./src 1> ./test/test.txt
ls -1 ./Libmx ./Makefile ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -1R ./../
touch ./../../test.txt ./../../std.txt
ls -1R ./../ 1> ./../../test.txt
ls -1R ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo "-----------------------------------------------------"
echo Additionall test3:
echo "all -> ./Uls -m\n"

echo Test: ls -m
./uls -m 1> ./test/test.txt
ls -m 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m .
./uls -m . 1> ./test/test.txt
ls -m . 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./
./uls -m ./ 1> ./test/test.txt
ls -m ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m /
./uls -m / 1> ./test/test.txt
ls -m / 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./Makefile 
./uls -m ./Makefile 1> ./test/test.txt
ls -m ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./Makefile ./.gitignore
./uls -m ./Makefile ./.gitignore 1> ./test/test.txt
ls -m ./Makefile ./.gitignore 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./Makefile ./uls
./uls -m ./Makefile ./uls 1> ./test/test.txt
ls -m ./Makefile ./uls 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./Libmx
./uls -m ./Libmx 1> ./test/test.txt
ls -m ./Libmx 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./Libmx ./src
./uls -m ./Libmx ./src 1> ./test/test.txt
ls -m ./Libmx ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -m ./Libmx ./Makefile ./src
./uls -m ./Libmx ./Makefile ./src 1> ./test/test.txt
ls -m ./Libmx ./Makefile ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -mR ./../
touch ./../../test.txt ./../../std.txt
ls -mR ./../ 1> ./../../test.txt
ls -mR ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo "-----------------------------------------------------"
echo Additionall test4:
echo "all -> ./Uls -C\n"

echo Test: ls -C 
./uls -C 1> ./test/test.txt
ls -C 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C .
./uls -C . 1> ./test/test.txt
ls -C . 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./
./uls -C ./ 1> ./test/test.txt
ls -C ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C /
./uls -C / 1> ./test/test.txt
ls -C / 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./Makefile 
./uls -C ./Makefile 1> ./test/test.txt
ls -C ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./Makefile ./.gitignore
./uls -C ./Makefile ./.gitignore 1> ./test/test.txt
ls -C ./Makefile ./.gitignore 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./Makefile ./uls
./uls -C ./Makefile ./uls 1> ./test/test.txt
ls -C ./Makefile ./uls 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./Libmx
./uls -C ./Libmx 1> ./test/test.txt
ls -C ./Libmx 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./Libmx ./src
./uls -C ./Libmx ./src 1> ./test/test.txt
ls -C ./Libmx ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -C ./Libmx ./Makefile ./src
./uls -C ./Libmx ./Makefile ./src 1> ./test/test.txt
ls -C ./Libmx ./Makefile ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -CR ./../
touch ./../../test.txt ./../../std.txt
ls -CR ./../ 1> ./../../test.txt
ls -CR ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo "-----------------------------------------------------"
echo Additionall test5:
echo "all -> ./Uls -la\n"

echo Test: ls -la 
./uls -la 1> ./test/test.txt
ls -la 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la .
./uls -la . 1> ./test/test.txt
ls -la . 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./
./uls -la ./ 1> ./test/test.txt
ls -la ./ 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la /
./uls -la / 1> ./test/test.txt
ls -la / 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./Makefile ./.gitignore
./uls -la ./Makefile ./.gitignore 1> ./test/test.txt
ls -la ./Makefile ./.gitignore 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./Makefile
./uls -la ./Makefile 1> ./test/test.txt
ls -la ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./Libmx
./uls -la ./Libmx 1> ./test/test.txt
ls -la ./Libmx 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./Libmx ./Makefile
./uls -la ./Libmx ./Makefile 1> ./test/test.txt
ls -la ./Libmx ./Makefile 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./Libmx ./uls ./src
./uls -la ./Libmx ./uls ./src 1> ./test/test.txt
ls -la ./Libmx ./uls ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt 
echo "\n"

echo Test: ls -la ./Libmx ./src
./uls -la ./Libmx ./src 1> ./test/test.txt
ls -la ./Libmx ./src 1> ./test/std.txt
diff -q ./test/test.txt ./test/std.txt
echo "\n"

echo Test: ls -laR ./../
touch ./../../test.txt ./../../std.txt
ls -laR ./../ 1> ./../../test.txt
ls -laR ./../ 1> ./../../std.txt
diff -q ./../../std.txt ./../../test.txt
rm -rf ./../../test.txt ./../../std.txt
echo "\n"

echo "The END\n"
