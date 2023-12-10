install.packages('petrinetR')
library(petrinetR)

?petrinetR

?create_PN

?visNetwork_from_PN



# Zadanie 1 ---------------------------------------------------------------


PN1 <- create_PN(c("pl1", 'pl2', 'pl3', 'pl4', 'pl5', 'pl6'),
          c("tr1", 'tr2', 'tr3', 'tr4', 'tr5', 'tr6'),
          
          
          data.frame(from = c('pl1', 'tr2', 'pl2', 'tr6', 'pl5', 'tr5',
                              'pl4', 'tr3', 'tr3', 'pl3', 'tr4', 'pl6',
                              'pl2', 'tr1') ,
                     
                     to = c("tr2", 'pl2', 'tr6', 'pl5', 'tr5', 'pl4',
                            'tr3', 'pl1', 'pl3', 'tr4', 'pl6', 'tr6', 
                            'tr1', 'pl1')),

          marking = c('pl4', 'pl6'))

visNetwork_from_PN(PN1)


# Zadanie 2 ---------------------------------------------------------------

PN1 <- create_PN(c("pl1", 'pl2', 'pl3', 'pl4', 'pl5', 'pl6', 'pl7'),
                 c("tr1", 'tr2', 'tr3', 'tr4', 'tr5', 'tr6'),
                 
                 
data.frame(
  from = c('pl1', 'tr3', 'pl3', 'tr2', 'tr2', 'pl2', 'tr1', 'pl4', 'tr4',
           'pl5', 'tr5', 'pl4', 'tr5', 'pl7', 'tr6', 'pl6') ,
                            
  to = c('tr3', 'pl3', 'tr2', 'pl4', 'pl2', 'tr1', 'pl1', 'tr4', 'pl5',
         'tr5', 'pl4', 'tr3', 'pl7', 'tr6', 'pl6', 'tr4')),
                 
  marking = c('pl4', 'pl6', 'pl1'))

visNetwork_from_PN(PN1)

