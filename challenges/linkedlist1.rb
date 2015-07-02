class LinkedListNode
    attr_accessor :value, :next_node
     
        def initialize(value, next_node=nil)
            @value = value
            @next_node = next_node
        end

        def print_values(list_node)
          print "#{list_node.value} --> "
          if list_node.next_node.nil?
            print "nil\n"
          else
            print_values(list_node.next_node)
          end
        end

end

class Stack
    attr_accessor :data
    
    def initialize
        @data = nil
    end

    # Push a value onto the stack
    # def push(item from list to be stacked on top of existing stack)
        # stack = stack fed in/created + new stack element (value) on top until value = nil (end of stacking)
        # returns stack
    # end
    
    def push(value) 
        if value != nil 
            return value
        else
            return nil
        end
    end
    
    # 
    # def Pop (remove the top item off the stack)  
    #   extract the last item (value=node1) that was pushed onto the
    #   stack and return the value.

    def pop      
        return self.value    
    end

    # def reverse_list
    #   look at first list node
    #   look at its attached value 
    #   add that value to the stack
    #   look at the next node 
    #   if next node != nil then
    #      do above again (recursive step)
    #   
    #     
    #   else
    #       extract ('pop') the first item in the stack containing the values separated from the node
    #       add that popped value to a new final list via the print_values method
    #       repeat above two steps until there are no more values
    #       return that series of values
    #   end

    def reverse_list(list)
    
        while list
            list = list.next_node.push(list.value)
            reverse_list(list.next_node)
        end

    return list.value.pop
    end
    
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
revlist = Stack.new
revlist = reverse_list(node3)
print_values(revlist)
