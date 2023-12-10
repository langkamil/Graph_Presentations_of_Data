library(igraph)


# Zadanie 1 ---------------------------------------------------------------


G1 <- matrix( c(0,2,0,0,3,3,
                2,0,3,0,1,2,
                0,3,0,2,1,1,
                0,0,2,0,2,3,
                3,1,1,2,0,2,
                3,2,1,3,2,0),
              ncol = 6,
              nrow = 6,
              byrow = TRUE,
              dimnames = list(c("V1", "V2", "V3", "V4", "V5", "V6"),
                              c("V1", "V2", "V3", "V4", "V5", "V6")))

G1_graf <- graph_from_adjacency_matrix(G1, mode = "undirected", weighted = TRUE)

tkplot(G1_graf,
       vertex.color = "yellow",
       edge.label=E(G1_plot)$weight)
                                       


# Zadanie 2 ---------------------------------------------------------------

sp <- shortest.paths(G1_graf, algorithm = "dijkstra")

print(sp)


# Zadanie 3 ---------------------------------------------------------------

sp24 <- shortest.paths(G1_graf,2,4, algorithm = "dijkstra")
print(sp24)

sp24$v




sciezka <- get.shortest.paths(G1_graf, 2, 4)

sciezka$vpath



E(G1_graf)$color <- "blue"
E(G1_graf)$width <- 3
E(G1_graf, path =unlist(sciezka$vpath))$color <- "red" 

V(G1_graf)$color <- "green"
V(G1_graf)$width <- 3
V(G1_graf)[unlist(sciezka)]$color <- "orange" 


tkplot(G1_graf, edge.label=E(G1_plot)$weight)

# 
# V(G1_graf)[shortest_paths(G1_graf, from =  2, to =  4)$vpath[[1]]$color <- "blue"
# 
#            
# 
# tkplot(G1_graf,
#        vertex.color = "yellow",
#        edge.label=E(G1_plot)$weight)
# 
# V(G1_graf)[]
# 
# (shortest_paths(G1_graf, from =  2, to =  4)$vpath[[1]])

# sciezka <- get.shortest.paths(G1_graf,4,2)$vpath[[1]]
# 
# sciezka

# V(G1_graf)[sciezka]$color <-  "red"


