options("scipen"=3000, "digits"=4)

digitsum <- function(x) {
    sum(as.numeric(strsplit(as.character(x), "")[[1]]))
}

nb <- 2^1000
print(nb)
print(digitsum(nb))