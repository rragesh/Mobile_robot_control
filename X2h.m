function h = X2h(X)
   global d;
   d = 0.15;
    h = [X(1)+d*cos(X(3));
         X(2)+d*sin(X(3))];
end