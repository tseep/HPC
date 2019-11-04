function pi = stationary(Pi, tol)
    % Initialize stationary distibution to uniform
    pi = ones(dim(Pi)[1]) / Pi.shape[0]
    
    % Iterate until convergence
    err = torch.tensor([1.0], dtype=Pi.dtype, device=Pi.device)
    while bool(err > tol):
        pi_new = torch.matmul(pi, Pi)
        err = torch.norm(pi - pi_new, p=float('inf'))
        pi = pi_new
        
    return pi