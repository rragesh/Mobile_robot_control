function e = error_plot(u)
  delta_x = u(1)-u(3);
  delta_y = u(2)-u(4);
  e = (delta_x.^2 + delta_y.^2).^0.5
end