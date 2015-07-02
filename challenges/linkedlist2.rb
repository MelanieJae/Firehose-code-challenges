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

        # previous node(node1) is nil; used to be the head of the list is
        # is now the 'tail' of the new reverse list (first in last out)        
        # def reverse_list(list, previous_node)
        # 	 head = list.next_node 
        #    (keeps shifting the head to be the next_node?)
        #    reverse_list(head)
        #    (calls reverse list on the next node so that the head is moved to the
        #	  following list.next_node
        #    return the list with the last node now being the first
        # end

       def reverse_list(list, previous_node=nil)
       		head = list.next_node
       		list = reverse_list(head)
       return list
       end
end



node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)