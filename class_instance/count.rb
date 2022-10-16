class InstanceCount
    @@instance_count = 0

    def self.instance_count
        @@instance_count
    end

    def initialize
        @@instance_count += 1
    end
end

puts InstanceCount.instance_count #=> 0

5.times do 
    InstanceCount.new
end

puts InstanceCount.instance_count #=> 5