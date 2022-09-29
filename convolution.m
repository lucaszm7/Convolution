function y = convolution(x, nx, h, nh)

  nh = nh * -1;
  nh = nh(length(nh):-1:1);
  
  # diff = nh(length(nh)) - nx(1);
  # nh = nh - diff;
  
  h = h(length(h):-1:1);
  # figure; stem(nh, h);
  

  for i = 1 : length(nh) + length(nx) - 1
    
    
    interX = [];
    interH = [];
    
    for n = 1 : length(nh)
      for nn = 1 : length(nx)
        if nh(n) == nx(nn)
          interX(end+1) = nn;
          interH(end+1) = n;
        endif
      endfor
    endfor
    
    interX
    interH
    
    yl = 0;
    for j = 1 : length(interH)
      yl += h(interH(j)) * x(interX(j));
    endfor
    y(i) = yl;
    
    nh += 1;
    
  endfor
  
  # y += diff;
  
end