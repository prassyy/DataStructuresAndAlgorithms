## Loops in a linked list

### Detect a loop
- Floyd's Cycle finding algorithm (Fast pointer and a slow pointer)

### Break a loop
- Hash the addresses of the nodes visited, if an address is visited again them make the previous node's next to point to null to break the loop
- Add a new field called visited in each node. Flag it after traversal and use that to do the exact same thing above
- Create a temporary node and after traversing the nodes change their next to point to the temp node. Check in every node if it is pointing to temp node. When you find the first node which returns true, change the next pointer of the previous node to NULL
- Floyd's algorithm to find a point in loop, Start from this meeting point and see if you can reach each of the nodes from list Head before you reach the same point. The first node from which you do is the meeting point.
- Find the meeting point, Find the loop's length k, Start two pointers one from HEAD and another one from HEAD + k, Move them in same speed. They will meet at the loop starting point
- Find the meeting point. Move one pointer back to HEAD and move both in the same pace again. They will meet at the starting of the loop
