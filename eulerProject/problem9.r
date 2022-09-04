for (a in 1:1000) {
  for (b in 1:1000) {
    c <- 1000 - a - b
    if (a^2 + b^2 == c^2 && a + b + c == 1000) {
      res <- a * b * c
      break
    }
  }
}

print(res)