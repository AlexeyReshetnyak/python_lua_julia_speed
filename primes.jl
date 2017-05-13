function is_prime(n::Int64)
    if n < 4
        return true
    end
    if n % 2 == 0
        return false
    end
    for a = 3:round(sqrt(n))
        if n % a == 0
            return false
        end
    end
    return true
end

function calculate_primes(n::Int64)
    primes = Int64[]
    p = 1
    for i = 1:n
        while ! is_prime(p)
            p += 1
        end
        push!(primes, p)
        p += 1
    end
    return primes
end

calculate_primes(100000)
