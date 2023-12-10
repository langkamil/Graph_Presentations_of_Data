
# Zadanie 1 ---------------------------------------------------------------

install.packages("visNetwork")
library(visNetwork)


# Zadanie 2 ---------------------------------------------------------------

nodes <- data.frame(id = 1:3,label = paste("v",1:3),
                    shape=c("circle","star","triangle"))

edges <- data.frame(from = c(1,2), to = c(1,3),dashes = c(TRUE, FALSE),
                    arrows = c("to", "middle"))

visNetwork(nodes, edges, width = "100%")


# Zadanie 3 ---------------------------------------------------------------

visNetwork(nodes, edges, width = "100%")%>%
  
  visLegend(useGroups = FALSE,
            addNodes = data.frame(label = "Nodes", shape ="circle"),
            addEdges = data.frame(label = "link", color = "black"))%>%
  
  visOptions(highlightNearest = TRUE,
             nodesIdSelection = TRUE)


# Zadanie 4 ---------------------------------------------------------------

nodes1 <- data.frame(id = 1:6,label = paste("v",1:6),
                    shape=c("circle","circle","circle","star", "square",
                            "square"),
                    color = c('orange', 'orange', 'orange', 'gray', 'purple',
                              'purple'),
                    shadow = c(T,T,T,F,T,T))


edges1 <- data.frame(from = c(1,1,3,3,2,5,6),
                     to =   c(2,3,4,2,5,6,3),
                     dashes= c(F,F,F,T,F,F,F),
                     label = paste("e",1:7),
                     color = c('orange', 'orange', 'orange', 'orange', 'orange',
                               'purple', 'orange') 
                     )
                     
                    

visNetwork(nodes1, edges1, width = "100%")%>%
  
  visLegend(useGroups = FALSE,
            addNodes = data.frame(label = c("dach", "podloga", 'komin'),
                                  shape = c("circle", "square", "star"),
                                  color = c('orange', 'purple', 'gray')),
           )%>%
  
  visOptions(highlightNearest = TRUE,
             nodesIdSelection = TRUE)

  



label = c("dach", "podloga", 'komin'),
  shape = c("circle", "square", "star")

