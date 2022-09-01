# Algorithme d'euclide
PGCD <- function(a, b) {
    while (b != 0) {
        t <- b
        b <- a %% b
        a <- t
    }
    return (a)
}

print(PGCD(10, 15))