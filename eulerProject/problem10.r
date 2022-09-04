#library(bit64)

isPrime <- function(n) {
    if (n == 2) {
        return(TRUE)
    }
    if (n %% 2 == 0) {
        return(FALSE)
    }
    if (n < 2) {
        return(FALSE)
    }
    for (i in seq(2, ceiling(sqrt(n)))) {
        if (n %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

res <- 2

for (a in seq(1, 2000000, by=2)) {
    if (isPrime(a)) {
        res <- res + a
    }
}
print("===END===")
print(res)

a <- 142913828922
print(a)