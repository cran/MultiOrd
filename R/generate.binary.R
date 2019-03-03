generate.binary <-
function(nObs, prop.vec.bin, corr.mat){
validation.CorrMat(prop.vec.bin, corr.mat) # conformity, symmetry, Pd and range is checked here
sigma_star=compute.sigma.star(prop.vec.bin, corr.mat) 

d = ncol(sigma_star)
data = rmvnorm(nObs, mean = rep(0, d), sigma = sigma_star)
    p = prop.vec.bin
    q = 1 - p

for (i in 1:nObs) {
            for (j in 1:d) {
                if (data[i, j] <= qnorm(1 - p[j])) 
                  data[i, j] = 0
                else data[i, j] = 1
        }
    }
    return(data)
}
