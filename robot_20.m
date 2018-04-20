function XYT_dot = robot_20(Q_dot, X)

    global r  L;
    r = 0.1;
    L = 0.26/2;
    v = [r/2, r/2] * [Q_dot(1); Q_dot(2)];
    w = [r/(2*L), -r/(2*L)]*[Q_dot(1); Q_dot(2)];
    x_dot = v*cos(X(3));
    y_dot = v*sin(X(3));  
    XYT_dot = [x_dot; y_dot; w];

end