#stockpicker
def stockpicker(array)
	diff= []
	collector=[]
	hash= Hash.new

	
	if array[0]==array.max
	     array.delete(array.max)
	end


	until array.length < 1
	     for i in 0...array.index(array.max)
	          collector.push(array[i])
	     end

	     d=array.max.to_i-collector.min.to_i

	     hash["#{collector.min.to_s} , #{array.max.to_s}"] = d
	     diff.push(d)
	     collector=[]
	     array.delete(array.max)


	end

	a=hash.max_by{|k,v| v}
	print a[0]

end
stockpicker([17,3,6,9,15,8,6,1,10])
