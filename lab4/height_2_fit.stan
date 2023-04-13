data {
  int<lower=1> N;
  vector[N] weights;
  vector[N] heights;
}

parameters {
  real alpha;
  real beta;
  real<lower=0> sigma;
}

transformed parameters {
    vector[N] mean;
    for (i in 1:N) {
      mean[i] = alpha + beta * weights[i];
  }
}

model {
    alpha ~ normal(165,10);
    sigma ~ normal(15, 1);
    beta ~ lognormal(0, 1);
    
    for (i in 1:N) {
      heights[i] ~ normal(mean[i], sigma);
    }
}

generated quantities {
    vector[N] h_hat;
    for (i in 1:N) {
        h_hat[i] = normal_rng(mean[i], sigma);
    }
}