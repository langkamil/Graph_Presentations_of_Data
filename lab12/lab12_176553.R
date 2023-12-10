install.packages("visNetwork")
library(visNetwork)

# kompilacja programu z tresci zadania ------------------------------------

nodes <- data.frame(id = 1:3)
edges <- data.frame(from = c(1,2), to = c(1,3))

visNetwork(nodes, edges, main = "visNetwork minimal example")
visNetwork(nodes, edges, main = list(text = "visNetwork minimal example",
                                     style = "font-family:Comic Sans MS;color:#ff0000;font-size:15px;textalign:center;"))

visNetwork(nodes, edges, background = "black")

nodes <- data.frame(id = 1:3, color.background = c("red", "blue", "green"),
                    color.highlight.background = c("red", NA, "red"), shadow.size = c(5, 10, 15))
edges <- data.frame(from = c(1,2), to = c(1,3),
                    label = LETTERS[1:2], font.color =c ("red", "blue"), font.size = c(10,20))
visNetwork(nodes, edges)

nodes <- data.frame(id = 1:15, label = paste("Label", 1:15),
                    group = sample(LETTERS[1:3], 15, replace = TRUE))
edges <- data.frame(from = trunc(runif(15)*(15-1))+1,
                    to = trunc(runif(15)*(15-1))+1)

visNetwork(nodes, edges) %>%
  visOptions(highlightNearest = TRUE, nodesIdSelection = TRUE)

visNetwork(nodes, edges) %>%
  visOptions(selectedBy = "group")

visNetwork(nodes, edges) %>%
  visInteraction(navigationButtons = TRUE)

visNetwork(nodes, edges) %>% visOptions(manipulation = TRUE)

visNetwork(nodes, edges) %>% visExport(type = "jpeg", name = "rysunek")

nodes <- data.frame(id = 1:3, group = c("B", "A", "B"))
edges <- data.frame(from = c(1,2), to = c(2,3))
visNetwork(nodes, edges) %>%
  visGroups(groupname = "A", shape = "icon", icon = list(code = "f0c0", size =
                                                           75)) %>%
  visGroups(groupname = "B", shape = "icon", icon = list(code = "f007", color =
                                                           "red")) %>%
  addFontAwesome()

nodes <- data.frame(id = 1:3)
edges <- data.frame(from = c(1,2), to = c(1,3))
visNetwork(nodes, edges) %>%
  visNodes(shape = "icon", icon = list( face ='FontAwesome', code = "f135")) %>%
  addFontAwesome()


# moj graf ----------------------------------------------------------------
nodes <- data.frame(id = 1:30, label = paste("V", 1:30),
                    group = sample(LETTERS[1:3], 30, replace = TRUE))
edges <- data.frame(from = trunc(runif(30)*(30))+1,
                    to = trunc(runif(30)*(30))+1)


visNetwork(nodes,
           edges,
           main = list(text = "Mój graf", 
                       style = "font-family:Times New Roman   MS;color:#fff0f;font-size:30px;textalign:center;"),
           background = "pink") %>% 
  visExport(type = "jpeg", name = "wynikowy_graf") %>% 
  visOptions(manipulation = TRUE,
             highlightNearest = TRUE) %>%
  visInteraction(navigationButtons = T) %>%
  visGroups(groupname = "A", shape = "icon", icon = list(code = "f0fc", color = "green", size =75)) %>%
  visGroups(groupname = "B", shape = "icon", icon = list(code = "f13d", color = "red", size = 75)) %>%
  visGroups(groupname = "C", shape = "icon", icon = list(code = "f083", color = "orange", size = 75)) %>%
  addFontAwesome()

