
# LAB 2  ------------------------------------------------------------------

# Kamil £angowski



# Zadanie 1 ---------------------------------------------------------------

install.packages("igraph")
library(igraph)

G1 <- matrix( c(0,0,3,0,3,0,
                0,0,0,0,0,0,
                0,0,0,1,0,0,
                0,2,0,0,7,8,
                0,0,0,0,0,2,
                0,10,0,0,0,0),
              ncol = 6,
              nrow = 6,
              byrow = TRUE,
              dimnames = list(c("V1", "V2", "V3", "V4", "V5", "V6"),
              c("V1", "V2", "V3", "V4", "V5", "V6")))

G1_plot <- graph_from_adjacency_matrix(G1, mode = "directed", weighted = TRUE)


tkplot(G1_plot,
       vertex.color = "green",
       edge.label=E(G1_plot)$weight)


x1 <- c(1,3,3)
x2 <- c(1,5,3)
x3 <- c(3,4,1)
x4 <- c(4,5,7)
x5 <- c(4,6,8)
x6 <- c(4,2,2)
x7 <- c(5,6,2)
x8 <- c(6,2,10)

G2 <-  rbind(x1, x2, x3, x4, x5, x6, x7, x8)
colnames(G2) <- c("poczatek", "koniec", "waga")



G2_df <- as.data.frame(G2)

G2_plot <- graph_from_data_frame(G2_df)



tkplot(G2_plot,
       vertex.color = "green",
       edge.label=E(G2_plot)$waga)



# Zadanie 2 ---------------------------------------------------------------


drzewo <- make_tree(10, children = 3, mode = "undirected" )

tkplot(drzewo, vertex.color = "red", vertex.label = letters[1:10])



# Zadanie 3 ---------------------------------------------------------------
G3 <- make_full_bipartite_graph(3, 3)
tkplot(G3, vertex.color = "red", vertex.label =c(1:3,letters[1:3]), edge.color = "green")



# Zadanie 4 ---------------------------------------------------------------

franklin <- make_graph("franklin")
frucht <- make_graph("frucht")

print(isomorphic(franklin, frucht))





