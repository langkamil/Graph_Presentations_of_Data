library(igraph)


# Zadanie 1 ---------------------------------------------------------------


g <- make_empty_graph(directed = F) %>%
  add_vertices(6) %>%
  add_edges(c(1,2, 2,6, 2,4, 6,4, 4,5, 4,3, 5,3, 3,1))
g
V(g)[[]]
plot(g)

E(g)$color = 1
V(g)$color  = 1

bfs_g <- bfs(g, root = 1, order = T, father = T, dist = T)


h <- graph(rbind(bfs_g$order,bfs_g$father[bfs_g$order, na_ok = TRUE])[,-1],
           directed=FALSE)

tkplot(h, vertex.color=3, edge.width=3)

# tabela
pp <- rbind(bfs_g$order,
            bfs_g$father[bfs_g$order, na_ok = TRUE])[,-1]
pp

# id
id <- get.edge.ids(g, pp)


id

# kolorowanie
E(g)$color[id] <- 5
plot(g)



# zadanie 2 ---------------------------------------------------------------


# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
x1 <- c(1,3,2)
x2 <- c(2,4,2)
x3 <- c(4,3,4)
x4 <- c(2,1,2)
x5 <- c(3,5,2)
x6 <- c(5,4,1)
x7 <- c(4,6,3)
x8 <- c(6,2,3)
# x6 <- c(5,4,1)

G2 <-  rbind(x1, x2, x3, x4, x5, x6, x7, x8)
colnames(G2) <- c("poczatek", "koniec", "waga")



G2_df <- as.data.frame(G2)

G2_plot <- graph_from_data_frame(G2_df, directed = F)

E(G2_plot)$color = 1
V(G2_plot)$color  = 1

plot(G2_plot,
       vertex.color = "green",
       edge.label=E(G2_plot)$waga)


# spinajace
g_mst <- mst(G2_plot)

# id
id <- get.edge.ids(G2_plot, t(as_edgelist(g_mst)))


id

# kolorowanie
E(G2_plot)$color[id] <- 5
plot(G2_plot, edge.label=E(G2_plot)$waga)





