collatz <- function(n) {
    res = c(n)
    while (n != 1) {
        if (n %% 2 == 0) {
            n <- n / 2
        } else {
            n <- 3 * n + 1
        }
        res <- c(res, n)
    }
    return (res)
}

nb <- 1
maxLen <- 0

for (i in 1:1000000) {
    collatzSeq <- collatz(i)
    # print(paste(i, length(collatzSeq)))
    if (length(collatzSeq) > maxLen) {
        maxLen <- length(collatzSeq)
        nb <- i
        print(paste("found:", nb, "Len", maxLen))
    }
}
print("===END===")
print(paste("final:", nb, "Len", maxLen))