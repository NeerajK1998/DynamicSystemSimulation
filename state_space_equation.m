function dw = state_space_equation(~, w, mass, stiffness, damping)

A = [0,1; -stiffness/mass, -damping/mass];

dw = A*w;

end