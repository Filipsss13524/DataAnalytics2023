data{
    int <lower = 1> N;
    real heights[N];

}

parameters {
   real mu;
   real sigma;
}

model{
    mu ~ normal(170,15);
    sigma ~ normal(15,1);
    heights ~ normal(mu, sigma);
}

generated quantities {
   real heights_sample = normal_rng(mu,sigma);
}