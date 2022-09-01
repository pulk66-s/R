isPalindrom <- function(a, b) {
    x <- a * b
    x <- as.character(x)
    splitted <- strsplit(x, "")[[1]]
    reversed <- rev(splitted)
    y <- paste(reversed, collapse = "")
    y <- as.numeric(y)
    return(x == y)
}

max <- 0
a <- 0
b <- 0


for (i in 999:100) {
    print(i)
    for (j in 999:100) {
        if (isPalindrom(i, j)) {
            if (i * j > max) {
                max <- i * j
                a <- i
                b <- j
            }
        }
    }
}
print("===END===")
print(a)
print(b)
print(max)