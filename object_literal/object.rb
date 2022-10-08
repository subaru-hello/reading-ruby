def default_params_array
   {
      points: [1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34, 37],
      weight: 60
    }
  end

  def extract_point(block)
       block
  end

  def liquors
    {
        object:   [name: 'lemon_sour', amount: '350', percentage: '4']
    }
  end

  def liquors_multi_objects
    {
        object:   {
            [name: 'lemon_sour', amount: '350', percentage: '4'],
            [name: 'lemon_sour', amount: '350', percentage: '4'],
            [name: 'lemon_sour', amount: '350', percentage: '4'],
        }
    }
  end

  def liquors_array
    [
        object:     [name: 'lemon_sour', amount: '350', percentage: '4']
    ]
  end

  p default_params_array[:points]
  p extract_point(default_params_array)
  p liquors[:object][0][:name]
  p liquors_array[0][:object]
  p liquors_multi_objects