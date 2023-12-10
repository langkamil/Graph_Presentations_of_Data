library(igraph)



# Zadanie 1 ---------------------------------------------------------------


G1 <- matrix( c(0,0,0,1,1,0,
                0,0,0,0,0,1,
                0,0,0,0,1,1,
                1,0,0,0,0,0,
                1,0,1,0,0,1,
                0,1,1,0,1,0),
              ncol = 6,
              nrow = 6,
              byrow = TRUE,
              dimnames = list(c("V1", "V2", "V3", "V4", "V5", "V6"),
                              c("V1", "V2", "V3", "V4", "V5", "V6")))

G1_graf <- graph_from_adjacency_matrix(G1, mode = "undirected", weighted = TRUE)

tkplot(G1_graf,
       vertex.color = "yellow")


G2 <- matrix( c(0,1,0,1,0,0,
                1,0,0,0,1,0,
                0,0,0,0,0,1,
                1,0,0,0,1,0,
                0,1,0,1,0,1,
                0,0,1,0,1,0),
              ncol = 6,
              nrow = 6,
              byrow = TRUE,
              dimnames = list(c("V1", "V2", "V3", "V4", "V5", "V6"),
                              c("V1", "V2", "V3", "V4", "V5", "V6")))

G2_graf <- graph_from_adjacency_matrix(G2, mode = "undirected", weighted = TRUE)

tkplot(G2_graf,
       vertex.color = "yellow")

# suma

suma <- graph.union(G1_graf, G2_graf)

tkplot(suma,
       vertex.color = "yellow")

# roznica 

roznica <- graph.difference(G1_graf, G2_graf)

tkplot(roznica,
       vertex.color = "yellow")

# przekroj 

przekroj <- graph.intersection(G1_graf, G2_graf)

tkplot(przekroj,
       vertex.color = "yellow")


# dopelnienie

dopelnienie1 <- graph.complementer(G1_graf)

dope³nienia2 <- graph.complementer(G2_graf)

tkplot(dopelnienie1,
       vertex.color = "yellow")

tkplot(dope³nienia2,
       vertex.color = "yellow")


# Zadanie 2 ---------------------------------------------------------------


star <- graph.star(8, center = 1, mode = 'undirected')

tkplot(star,
       vertex.color = "yellow")



cos <- graph.lattice(length=3, dim=3)

tkplot(cos,
       vertex.color = "yellow")

szesc <- graph.lattice(length=2, dim=3)

tkplot(szesc,
       vertex.color = "yellow")


tree <- graph.tree(10, 4)

tkplot(tree,
       vertex.color = "yellow")

graph_from_edgelist(el)
el <- matrix( c("raz", "dwa", "dwa", "trzy", "trzy", "cztery"), nc=2, byrow=TRUE)


tkplot(graph_from_edgelist(el),
       vertex.color = "yellow")


# Zadanie 3 ---------------------------------------------------------------




g <- make_empty_graph(directed = F) %>%
  add_vertices(2, color = "red") %>%
  add_vertices(2, color = "green") %>%
  add_vertices(1, color = "blue") %>%
  add_edges(c(1,3, 3,2, 2,4, 4,5, 5,1))
g
V(g)[[]]
plot(g)


# Zadanie 4 ---------------------------------------------------------------


f <- make_empty_graph(directed = F) %>%
  add_vertices(1, color = "red") %>%
  add_vertices(1, color = "blue") %>%
  add_vertices(1, color = "green") %>%
  add_vertices(1, color = "yellow") %>%
  add_vertices(1, color = "white") %>%
  add_edges(c(1,2, 2,3, 3,4, 4,5, 5,1, 1,3, 1,4, 5,2, 5,3, 2,4))
f
V(f)[[]]
tkplot(f)


