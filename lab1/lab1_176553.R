# Kamil £angowski


install.packages("igraph")
library(igraph)


# Zadanie 1 ---------------------------------------------------------------

?make_graph

# Diamond
# A graph with 4 vertices and 5 edges,
# resembles to a schematic diamond if drawn properly.


diamond <- make_graph("diamond")
plot(diamond)
tkplot(diamond, vertex.label = c("a", "b", "c", "d"), vertex.color = "green",
       edge.width = 4, edge.color = "red")


# Zadanie 2 ---------------------------------------------------------------

#graf nieskierowany

adjency_matrix_niesk <- matrix( c(0,1,1,1,1, 1,0,1,1,1, 1,1,0,1,1, 1,1,1,1,1, 1,1,1,1,1  ),
                          ncol = 5,
                          nrow = 5,
                          byrow = TRUE,
                          dimnames = list(c("V1", "V2", "V3", "V4", "V5"),
                                          c("V1", "V2", "V3", "V4", "V5")))



tkplot(graph_from_adjacency_matrix(adjency_matrix_niesk, mode = "undirected"),
       vertex.color = "green")

#graf skierowany

adjency_matrix <- matrix( c(0,2,0,1,4, 1,0,3,4,5, 1,2,3,4,0, 1,2,3,4,5, 1,2,3,4,5  ),
        ncol = 5,
        nrow = 5,
        byrow = TRUE,
        dimnames = list(c("V1", "V2", "V3", "V4", "V5"),
                        c("V1", "V2", "V3", "V4", "V5")))
  

?graph_from_adjacency_matrix

tkplot(graph_from_adjacency_matrix(adjency_matrix),
       vertex.color = "green")

# graf wa¿ony

adjency_matrix_wazony <- matrix( c(0,3,1,1,1, 1,0,1,8,1, 5,1,0,1,1, 1,1,4,1,1, 1,2,1,1,1  ),
                                ncol = 5,
                                nrow = 5,
                                byrow = TRUE,
                                dimnames = list(c("V1", "V2", "V3", "V4", "V5"),
                                                c("V1", "V2", "V3", "V4", "V5")))

g <- graph_from_adjacency_matrix(adjency_matrix_wazony, mode = "undirected", weighted = TRUE)

tkplot(g,
       vertex.color = "green",
       edge.label=E(g)$weight)


