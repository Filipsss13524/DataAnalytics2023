
generated quantities {
   real mu = normal_rng(170,10);
   real sigma = normal_rng(15,1);;
   real height = normal_rng(mu,sigma);
}