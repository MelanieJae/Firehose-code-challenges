class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    # Push a value onto the stack
    # def push(item to be stacked on top of existing stack)
        # create/feed new stack
        # stack(value) = stack fed in/created + new stack element (value) on top until value = nil (end of stacking)
        # returns stack
    # end
    
    def push(value) 
        if value != nil 
            return value
        end
    end
    
    # Pop an item off the stack.  
    # take node3 fed to method, node 3 value is first into stack, then node 2 value then node 1.
    # node 1 is last in so first out 
    # Remove the last item (value) that was pushed onto the
    # stack and return the value.
    
    def pop      
        return list.value    
    end

    def reverse_list(list)
        value = list.value
        next_node = list.node

        while list
            self.push(list.value)
            list = list.next_node
            reverse_list(list.next_node)
        end

        return list 
    end

    def print_values(list)
       puts "#{list}"
    end
    
end

node1 = Stack.new(37)
node2 = Stack.new(99, node1)
node3 = Stack.new(12, node2)
print_values(node3)
revlist = reverse_list(node3)
print_values(revlist)
