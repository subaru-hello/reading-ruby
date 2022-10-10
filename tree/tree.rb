# frozen_string_literal: true

# node1 = ["節1", ["節2", ["葉A"], ["葉B"]], ["節3", ["葉C"], ["葉D"]]]

input_line = {
  leaf_a: 2,
  leaf_b: 8,
  leaf_c: 9,
  leaf_d: 4,
  node_a: '+',
  node_b: '*',
  node_c: '-'
}

def tree(params)
  leaf_d = params[:leaf_d]
  leaf_c = params[:leaf_c]
  leaf_b = params[:leaf_b]
  leaf_a = params[:leaf_a]
  node_a = params[:node_a]
  node_b = params[:node_b]
  node_c = params[:node_c]

  [
    node_a, # tree[0]
    [node_b, ['lit', leaf_a], ['lit', leaf_b]], # tree[1]
    [node_c, ['lit', leaf_c], ['lit', leaf_d]] # tree[2]
  ]
end

def evaluate(tree)
  case tree[0]
  when 'lit'
    tree[1]
  when '+'
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when '-'
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when '*'
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  else
    # ここでは tree[0] == "/"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  end
end

tree = tree(input_line)

puts evaluate(tree)
