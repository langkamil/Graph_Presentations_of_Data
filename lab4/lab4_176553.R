# Kamil Langowski
# 176553
# Laboratorium 4

library(igraph)

# Zadanie 1

E <- rbind( c(1,3,3), c(3,4,1), c(4,2,2), c(1,5,3), c(5,6,2), c(6,2,10))
colnames(E) <- c("from", "to", "capacity")
g1 <- graph_from_data_frame(as.data.frame(E))

tkplot(g1, edge.label=E(g1)$capacity, vertex.color = "yellow")

gp <- max_flow(g1, source=V(g1)["1"], target=V(g1)["2"])

gp$value
# $value - wartosc numeryczna odpowiadajaca wartosci maksymalnego przeplywu

gp$flow
# $flow - wektor liczbowy zawierajacy przeplyw dla ka¿dej krawedzi

gp$cut
# $cut - wektor liczbowy zawierajacey id krawedzi minimalnego przekroju w maksymalnym przeplywie

gp$partition1
# $partition1 - wektor numeryczny zawierajacy id wierzcholkow w pierwszym podziale maksymalnego przeplywu
# przez minimalny przekroj

gp$partition2
# $partition2 - analogiczne do partition1, ale tym razem dla drugiego podzialu

#zmieniamy capacity na flow
E(g1)$capacity <- gp$flow


E(g1)$color <- "red"
E(g1)[gp$cut]$color <- "blue"

tkplot(g1, edge.label=E(g1)$capacity, vertex.color = "yellow")


# Zadanie 2

g2 <- graph( c(1,2,2,3,3,4, 1,6,6,5,5,4, 4,1) )
E(g2)$capacity <- c(3,1,2, 10,1,3, 2)
g2_max <- max_flow(g2, source=2, target=5)

tkplot(g2, vertex.color = "yellow", edge.label=E(g2)$capacity)

g2_flow <- g2
E(g2_flow)$flow = g2_max$flow

E(g2_flow)$color <- "red"
E(g2_flow)[g2_max$cut]$color <- "blue"

tkplot(g2_flow, vertex.color = "yellow", edge.label=E(g2_flow)$flow)

# Zadanie 3

G <- rbind( c(1,2,16), c(1,3,13), c(2,4,12), c(2,3,10), c(3,2,4),
            c(4,6,20),c(4,3,9), c(3,5,14), c(5,6,4), c(5,4,7))
colnames(G) <- c("from", "to", "capacity")
g3 <- graph_from_data_frame(as.data.frame(G))

tkplot(g3, vertex.color = "yellow", edge.label = E(g3)$capacity)

g3_max <- g2_max <- max_flow(g3, source=1, target=6)

g3_flow <- g3

E(g3_flow)$color <- "red"
E(g3_flow)[g3_max$cut]$color <- "blue"
E(g3_flow)$flow <- g3_max$flow


V(g3_flow)[g3_max$partition1]$color <- "yellow"
V(g3_flow)[g3_max$partition2]$color <- "pink"

tkplot(g3_flow, edge.label=E(g3_flow)$flow)




