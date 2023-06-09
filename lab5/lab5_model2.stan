data{
    int <lower =0> N;
    real n_i[N];
    int accidents[N];
}

parameters{
    real alpha;
    real theta;
}

model{
    alpha ~ normal(3.2,0.2); 
    theta ~ normal(0.3,0.1);  
    for (i in 1:N){
        accidents[i] ~ poisson_log(alpha + theta * n_i[i]);
    }
}
generated quantities {
    real accidents_sample[N];
    for (i in 1:N){
        accidents_sample[i] = poisson_log_rng(alpha + theta *n_i[i]);
    }
}