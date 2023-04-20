generated quantities {
 real alpha;
 int y_i;
 real theta;
 real n_i;
 real lambda;
 alpha = normal_rng(3.2,0.2);
 n_i = normal_rng(0,1);
 theta = normal_rng(0.3,0.1);
 lambda = exp(alpha+ theta*n_i);
 y_i = poisson_rng(lambda);   
}