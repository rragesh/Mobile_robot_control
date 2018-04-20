function Q_dot = control(trajectory, X)

    global d Kp r L;
     d = 0.15;
     Kp = 10;
    h = [X(1)+d*cos(X(3));
         X(2)+d*sin(X(3))];
     
% J function from h_dot to X_dot
    j1 = [1 0 -d*sin(X(3)); 
          0 1  d*cos(X(3))];
      
% J function from X_dot to u
    j2 = [cos(X(3)) 0;
        sin(X(3)) 0;
        0         1];
    
% J function from u to Q_dot
    j3 = [r/2     r/2;
          r/(2*L) -r/(2*L)];
% J function from h_dot to Q_dot
    J = j1*j2*j3;
    J_inv = inv(J);

% calculating q_dot
    hd = trajectory(1:2);
    hd_dot = trajectory(3:4);
    delta_h = hd-h;
    h_dot = hd_dot +Kp*delta_h;
    Q_dot = J_inv*h_dot;
        
end


