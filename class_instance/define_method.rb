class Klass
    define_method :add_one do  |n| 
        n + 1 
    end


    %w(foo baz bar).map do |str|
        define_method :str, -> { str }
    end
end


p Klass.new.add_one(3)

p Klass.new.str