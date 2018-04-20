function trajectory = traj_gen(t)

     global R w_d;
     R = 2;
     w_d = 0.5;
     hd = [R * cos( w_d*t );
           R * sin( w_d*t )];
     hd_dot = [-R * w_d*sin( w_d*t );
                R * w_d*cos( w_d*t )];
     trajectory = [hd; hd_dot];
     
end