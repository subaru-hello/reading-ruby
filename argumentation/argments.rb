# frozen_string_literal: true

def keyrest_param(**args)
  args
end

p keyrest_param(name: 'subaru', age: 25)
