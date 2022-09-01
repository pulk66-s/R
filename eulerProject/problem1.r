list <- 1:999
sum <- 0
for (i in list) {
    if (i %% 3 == 0 || i %% 5 == 0) {
        sum = sum + i
    }
}
print(sum)