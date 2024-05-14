function[y] = linearconvulation(x,h)

n1 = length(x);
n2 = length(h);

N = (n1+n2) - 1;

x1 = [x zeros(1, N-n1)];

h1 = [h zeros(1, N-n2)];


for n = 1:N
    for m = 1:N
        
        if n>m
            H(m,n) = 0;
        else
            H(m,n) = h1(m - (n-1));
        end
    end
end

y = H * x1';

end