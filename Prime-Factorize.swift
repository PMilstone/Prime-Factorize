var primeFactor: [Int] = []
var x = 2

func isPrime(test: Int) {
    var num = abs(test)
    if test < 0 {
        primeFactor.append(-1)
    }
    while num > 1 && x <= num {
        if x == 1 && num == 1 {
            break
        } else if num % x == 0 {
            primeFactor.append(x)
            num /= x
            x = 2
        } else {
            x += 1
        }        
    }
    if test < -1 && primeFactor.count == 2 {
        print("\(test) is negative prime?")
    } else if test >= -1 && test <= 1 {
        print("\(test) is not prime and has no prime factorization.")
    } else if primeFactor.count == 1 {
        print("\(test) is prime!")
    } else {
        print("\(test) = \(primeFactor)")
    }
    primeFactor.removeAll()
}

for num in -1000...1000 {
    isPrime(test: num)
}