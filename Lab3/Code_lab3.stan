generated quantities {
    int N = 50;
    // real<lower=0,upper=1> p = normal_rng(0,1);
    real<lower=0,upper=1> p = beta_rng(2,8);
    int y = binomial_rng(N,p);
}