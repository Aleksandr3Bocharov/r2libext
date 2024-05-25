SET REFAL=F:\Programming\refal2
SET CC=F:\Programming\mingw32\bin

%REFAL%\bin\refal2 test > test.log
%CC%\as -o test.o test.asm >> test.log
%REFAL%\bin\refal2 platformposix > platformposix.log
%CC%\as -o platformposix.o platformposix.asm >> platformposix.log
%CC%\gcc -o test.exe %REFAL%\lib\r2objects\mainrf.o platformposix.o test.o -Wl,-L%REFAL%\lib -Wl,-lrefal2,-lr2user >> test.log
test

