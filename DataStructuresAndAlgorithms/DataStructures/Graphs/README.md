# Graphs:

A Graph G is an ordered pair of vertices V and edges E 
G = (V, E)

The Vertices of a graph can be in any order. So they can be represented by an unordered Pair of all vertices in the Graph
V = { V1, V2, V3, .. }

An edge can be represented as a pair of the vertices it is connecting. An edge can be either directed or undirected. A directed edge can be represented with a ordered pair of vertices and an undirected edge can be represented with an unordered pair of vertices.
Directed Edge = (V1, V2)
Undirectted Edge = { V1, V2 }

E = { {V1, V2}, {V2, V3}, {V3,V1}, ... } (with Undirected edges)

## Applications of graphs:
- People in a social network
- Nodes in a network 
- Web Pages in Internet (Can be used for crawling)
- Locations in a Map 

## Directed graph:
Based on the type of edges in a graph, a graph can be of two types. A graph with all directed edges in called a Directed graph or Digraph. A graph with undirected edges can be called Undirected graph.
An undirected graph can be represented by a directed graph with each node connected by two edges in pointing in directions.

## Weighted graphs:
A graph whose edges have a weight or cost associated with it
An unweighted graph is nothing but a weighted graph with equal or 1 unit of weight for all the edges.

### Some Eg:
- Social network (Undirected, unweighted graph)
- An Intercity road network (Undirected, weighted graph)
- An Intracity road network (Directed, weighted graph) - Because of one ways

### Self loops:
A graph containing one edge for which the origin and destination are the same node. It can be either directed or undirected. Eg: A web page containing a link redirecting to itself.

### Multi Edge or Parallel edge:
When more than one edge connects two same vertices. Eg: Multiple flights connecting same cities with varied costs

A graph with no self loops or parallel edges is called **Simple graph**.
A simple directed graph(with no self loops or multiedges) with N vertices can have maximum of N(N-1) number of edges.
A simple undirected graph with N vertices can have maximum of N(N-1)/2 number of edges.

A graph is called a **Dense graph** if the number of edges is close to the maximum number of edges (in the order of square of the number of vertices). (Use an adjacency matrix)
A graph is called a **Sparse graph** if the number of edges is in the order of the number of vertices. (Use an adjacency list)

Walk: A sequence of vertices where each adjacent pair is connected by an edge.
Path (Simple): A walk in which no vertices (thus no edges) are repeated.
Trail: A walk in which no edges are repeated, but vertices can be repeated.

Strongly connected graph: A graph in which there is a path from any vertex to any other vertex

Closed walk: If the walk starts and ends at the same vertex
Simple cycle: A closed walk in which only the start/end vertex is repeated and no edges are repeated
Acyclic graph: A graph with no cycle

## Special graph types:
- Trees
- Rooted Trees (Out-root - Arborescence, In-root - Anti-arborescence)
- Directed Acyclic Graph (DAGs - Represent prerequisites, dependencies - Without going in Cycles)
- Bipartite graph - Represents the connections between two distinct groups - u, v
- Complete graphs - Kn graph denotes a graph with n nodes all connected to each other. Considered as the worst possible graph to encounter (Could be used for testing any graph solutions to determine the worst case scenario)

## Graph representations:
- Adjacency Matrix: VxV matrix of weights 
- Adjacency List: Array of V elements containing the nodes meeting each
- Edge List: Unordered list of all edges (u, v, w(weight))

## Things to consider in a graph problem:
- Directed graph or undirected graph
- Weighted or unweighted
- Sparse graph or Dense graph
- Adjacency matrix, Adjacency list or Edge list

## Common problems:
- Shortest path between two nodes (BFS(unweighted), Dijkstra, Bellman-Ford, Floyd-Warshall, A* etc.)
- Connectivity. Exists a path between two nodes? (Union find data structure, Search using DFS/BFS) 
- Does Weighted digraph has a negative cycle? Negative cycles can cause problems in finding the shortest path. One place for good usage of negative weights is that we can use it for Artibrage (Currency exchange between different currencies which will yield profit in the original currency) (Can use Bellman-Ford and Floyd-Warshall)
- Find Strongly connected Components(SCCs) within the graph, cycles within directed graph where wach vertex in a cycle can reach every other vertex in the same cycle (It's usually an intermediate step in many algorithms) (Tarjan's algorithm, Kosaraju algorithm)
- Traveling Salesman Problem, A graph with cities and edges defined what is the path reaching all the cities once with least cost (Held-Karp - Dynamic programming, Branch and bound, Approximation algorithms like Ant-colony optimisation)
- Find Bridges(Edges) in a graph. Bridges are usually vulnerabilities in a graph which when removed creates more Strongly connected components
- Find Articulation points(Nodes) in a graph. Same as above
- Find Minimum Spanning Tree in a given tree, A subset of edges of a connected graph which connects all vertices with minimum possible Edge weight and without any cycles. Many approximation algorithms rely on finding the MSTs (Krustal's, Prim's and Boruvka's algorithms)
- Find the maximum flow through a Flow network, graph which has a source and a sink and has things flow between them. This will help us find the bottlenecks in the network so that we can fix them for better flow (Ford-Fulkerson, Edmonds-Karp, Dinic's Algorithm)
