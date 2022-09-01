fibonacci <- function(n) {
    if (n == 0) {
        return(1)
    } else if (n == 1) {
        return(2)
    } else {
        return(fibonacci(n - 1) + fibonacci(n - 2))
    }
}

index <- 0
fibNb = fibonacci(index)
sum <- fibNb

while (fibNb < 4000000) {
    if (fibNb %% 2 == 0) {
        sum <- sum + fibNb
    }
    index <- index + 1
    fibNb = fibonacci(index)
}
print(sum)