isPrime <- function(n) {
    if (n == 2) {
        return(TRUE)
    }
    if (n %% 2 == 0) {
        return(FALSE)
    }
    for (i in 2:(n - 1)) {
        if (n %% i == 0) {
            return(FALSE)
        }
    }
    return(TRUE)
}

index <- 1
nb <- 2

while (index < 10001) {
    nb <- nb + 1
    if (isPrime(nb)) {
        index <- index + 1
    }
}
print("==END==")
print(nb)