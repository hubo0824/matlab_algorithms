clc
data = fopen('data.txt','r');
i = 1;
while (~feof(data))
    line = fgetl(data);
    a = length(find(line==97));
    b = length(find(line==99));
    c = length(find(line==103));
    d = length(find(line==116));
    e = length(find(line>=97&line<=122));
    f(i,:) = [a,b,c,d,e,a+b+c+d];
    i = i+1;
end
fclose(data);

    