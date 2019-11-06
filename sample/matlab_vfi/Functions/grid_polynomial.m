function x = grid_polynomial(xmin, xmax, N, degree)
    x = xmin + (((linspace(1, N, N) - 1) / (N - 1)).^degree) * (xmax - xmin);
end