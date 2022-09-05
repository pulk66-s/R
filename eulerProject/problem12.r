nbDivisors <- function(n) {
    total = 0
    for (i in 1:n/2) {
        if (n %% i == 0) {
            total = total + 1
        }
    }
    return(total)
}

index = 1
nb = 0

while (TRUE) {
    nb <- nb + index
    if (nbDivisors(nb) > 500) {
        break
    }
    print(nb)
    index = index + 1
}

print("==END==")
print(nb)