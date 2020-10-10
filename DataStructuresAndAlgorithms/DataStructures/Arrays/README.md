## Why sort?
It is easier to look for and search for an item in a sorted collection over an unsorted one. It greatly reduces the effort involved in searching.
Inefficient way to search for an item in a collection is linear search. Going through all the elements one at a time. Eventhough sorting a collection gives a relative benefit of reducing the time complexity, is it really worth doing it if sorting itself is a more complex process than linear search?

How many different ways are there to sort an item? And how efficiently do we sort them?

## Bubble sort
start from the beginning and start comparing two items at once. swap the items if they are in wrong order. Repeat this for the whole list. Go back to beginning of the list and repeat this until all the elements are moved to the right positions until you do a final sweep where you didn't have to do any exchanges which would imply that the collection is sorted.

Worst case time complexity: O(N2)
Space complexity: O(N)

## Selection sort
Look for the smallest element in the collection by traversing through the whole list. Now exchange the smallest element with whatver was in the first position. Now repeat this for the second lowest element and exchange it with the element in the second position. Repeat this for all the N positions. Now the array is sorted. 
This does a traversal of all the elements despite portion of the collection already in sorted form. So this is kind of stupid

Worst case time complexity: O(N2)
Space complexity: O(N)

## Insertion Sort
Consider a subsection of collection from the beginning having 0 to N elements iteratively. In every iteration all the elements are sorted except the element at the end(the new member added after the previous iteration). Now go through the sub section again to figure out where this fits. Now we can't exchange the element with whatever was already there because the collection is sorted and this will mess up the positions. So this has to be inserted, not exchanged in the right position and the following elements will have to be shifted towards the end. This shifting is pretty costlier because unless the element is already in the right place, we will to exchange all the rest of the elements which evens out the benefit we earn.

Worst case time complexity: O(N2)
Space complexity: O(N)

## Merge Sort
This is one of the divide and conquer algorithms. This divides the collections into multiple smaller parts and individually sorts them and then merges them. Split the array into two parts. Recursively sort them again and merge the returned sorted arrays. Escape statement for recursion is if the array has less than 2 elements them it is considered sorted. To merge two sorted arrays, we assign two pointers to the start of both arrays. We compare them to decide which one should be put first. Add the element to a new memory allocated to the destination array. Increment the pointer's position in the respective array. Now compare the elements pointed again in both arrays and repeat until all the elements are moved to the new memory location. This sorting algorithm is costlier in terms of space since we need a new memory location to copy the merged elements to.

## Quick Sort
This is also another form of Divide and conquer algorithm. In this method, we pick a random element and consider it as a Pivot. By practice it is always picked to be the last element of the collection. We need to rearrange it in such a way that all the elements in collection smaller than pivot are to the left of the pivot and all the elements to the right are larger than pivot. Elaborately we consider the first element of the collection as partitionIndex. We then start from the beginning of the collection to compare if each of them are smaller or larger than the pivot. If they are smaller we swap the element with the element at partition Index since anything smaller than pivot should be on the left of partition index. After going through all the elements, swap the element at partitionIndex with the pivotal element.
Then we take the elements before the pivot and the elements after the pivot as two seperate collections and repeat the same steps. The escape condition for recursion is if the collection has less than 2 elements, then it is already sorted. This is better than Merge sort in terms of space since we don't need to allocate N memory blocks for copying the sorted values, this algorithm sorts the elements using the same available space.

## Heap Sort
Heap is a complete binary tree. A heap can be a min heap or a max heap. A heap in which all the parents are larger than their children is max heap and vice versa. A heap can be simply represented using an array. Each parent of index i has left child at (2*i + 1) and right child at (2*i + 2). In a heap sort you arrange the collection to be sorted as a max heap. You swap out the last element(possibly least) with the first element(possibly largest) and reduce the size of the heap by 1. Now the largest element is in it's right place. You arrange the current structure as a max heap and repeat the process. This will accumulate all the larger elements to the end in the sorted order.
