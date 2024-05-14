function[z] = circularconvulation(x1,x2)
n1 = length(x1);
n2 = length(x2);

N = max(n1,n2);

x1 = [x1 zeros(1, N-n1)];

x2 = [x2 zeros(1, N-n2)];

s = n1 - n2;

if(s==0)
    x2 = [x2 zeros(1,s)];
else
    x1 = [x1 zeros(1,-s)];
    x2 = [x2 zeros(1,s)];
end

%circular multiplication
z = [];

for k = 1:N
    y = 0;
    for i = 1:N
        j = (k-i) + 1;
        if(j<=0)
            j = j + N;
        end
        y = y + (x1(i) * x2(j));
    end
    z = [z,y];
end

end