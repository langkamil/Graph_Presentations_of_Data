library(igraph)


# Zadanie 1 i 2 ---------------------------------------------------------------


# G1 <- matrix( c(0,1,0,0,0,0,0,0,0,0,
#                0,0,1,0,0,0,0,0,0,0,
#                0,0,0,1,0,0,0,0,0,0,
#                0,0,0,0,1,0,0,0,0,0,
#                0,0,0,0,0,1,0,0,0,0,
#                0,0,0,0,0,0,1,0,0,0,
#                0,0,0,0,0,0,0,1,0,0,
#                0,0,0,0,0,0,0,0,1,0,
#                0,0,0,0,0,0,0,0,0,1,
#                1,0,0,0,0,0,0,0,0,0),
#               ncol = 10,
#               nrow = 10,
#               byrow = TRUE
#               )
# 
# G1_graf <- graph_from_adjacency_matrix(G1, mode = "undirected", weighted = TRUE)
# 
# tkplot(G1_graf,
#        vertex.color = "yellow",
#        edge.color = "blue"
#        )
# 
# g1 <- add_edges(G1_graf,  c(1,6, 1,7, 10,8), color = "red") 
# 
#   
# G1_graf <- graph_from_adjacency_matrix(G1, mode = "undirected", weighted = TRUE)
# tkplot(g1,
#        vertex.color = "yellow",
#        edge.color = "blue"
# )




g <- make_empty_graph(n = 10,directed = FALSE ) %>%
  add_edges(c(1,2, 2,3, 3,4, 4,5, 5,6, 6,7, 7,8, 8,9, 9,10, 10,1)) %>%
  set_edge_attr("color", value = "blue") %>%
  add_edges(c(1,6, 1,7, 10,8), color = "red")


tkplot(g,
       vertex.color = "yellow"
       # edge.color = "blue"
)


# Zadanie 3 ---------------------------------------------------------------


g <- make_empty_graph(n = 5,directed = FALSE ) %>%
  add_edges(c(3,2, 4,5, 5,1, 1,3)) %>%
  set_edge_attr("color", value = "blue") %>%
  add_edges(c(1,2, 2,5, 5,3, 3,4, 4,1), color = "red")


tkplot(g,
       vertex.color = "yellow"
       # edge.color = "blue"
)

# Zadanie 4 ---------------------------------------------------------------


g <- make_empty_graph(n = 5,directed = FALSE ) %>%
  add_edges(c(1,2, 4,5), color = "black") %>%
  add_edges(c(5,1, 3,4), color = "blue") %>%
  add_edges(c(2,5, 1,3), color = "red") %>%
  add_edges(c(2,3, 1,4), color = "green") %>%
  add_edges(c(2,4, 3,5), color = "yellow") 


tkplot(g,
       vertex.color = "yellow"
       # edge.color = "blue"
)





