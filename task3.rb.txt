def isdigit(num)
    num =~ /[0-9]/
 end
 def evaluate(exp)
   exp = exp.split("")
operands = []
evaluation = []
exp.each do |x|
case x
 when /[0-9]/ 
   evaluation.push(x.to_f)
 when "-"
   operands = evaluation.pop(2)
evaluation.push(operands[0]-operands[1])
when "/"
 operands = evaluation.pop(2)
evaluation.push(operands[0]/operands[1])
 when "+"
   operands = evaluation.pop(2)
evaluation.push(operands[0]+operands[1])
when "*"
 operands = evaluation.pop(2)
 evaluation.push(operands[0]*operands[1])
end
end
puts evaluation
end
evaluate("23*23++")
