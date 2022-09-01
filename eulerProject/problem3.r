isPrime <- function(n) {
    if (n == 2) {
        return(TRUE)
    }
    if (n %% 2 == 0) {
        return(FALSE)
    }
    i <- 3
    while (i <= n - 1) {
        if (n %% i == 0) {
            return (FALSE)
        }
        i <- i + 2
    }
    return(TRUE)
}

nb <- 600851475143
div <- 2
factors <- c()

while (nb > 1) {
    while (!isPrime(div)) {
        div <- div + 1
    }
    while (nb %% div == 0) {
        factors <- c(factors, div)
        nb <- nb / div
    }
    div <- div + 1
}
print(factors)
print(max(factors))