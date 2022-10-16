class Klass
    @class_instance_val = :class_instance_val
    @@class_val = :class_val
end

class InheritKlass < Klass
    puts "クラスインスタンス変数: #{@class_instance_val} "

    puts "クラス変数: #{@@class_val}"
end