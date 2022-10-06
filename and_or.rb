first = 1
second = 0


def is_one?(a,b)
return (a & b).equal? 1
end

if is_one?(first,second)
    puts 1
else
    puts 0
end