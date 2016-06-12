class TodoList

	def initialize(list)
		@list = list
	end

	def add_item(item)
		@list.push(item)
		return @list
	end

	def delete_item(item)
		index = @list.find_index(item)
		@list.delete_at(index)
	end

	def get_item(index)
		@list[index]
	end

	def get_items()
		@list
	end

end