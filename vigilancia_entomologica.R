


DiagrammeR::grViz("digraph {
                  # graph definitions
  graph [layout = dot, rankdir = TB]
  
  # node definitions
  node [shape = rectangle, 
  style = filled, 
  color = grey, 
  nodesep = .5,
  fixedsize = true, 
  width = 2.5] 
  
  # edge definition
  edge [color = grey, arrowhead = normal, arrowtail = dot]
  
  ##### epidemiological data
  
  epi [label = 'Vigilancia Epidemiológica',  fillcolor =  '#DB4437', color = 'white', fontcolor = 'white']
  data_historic [label = 'Datos Históricos',  fillcolor =  'gray', color = 'white', fontcolor = 'white']
  data_datos_actuales [label = 'Datos Actuales',  fillcolor =  'gray', color = 'white', fontcolor = 'white']
  data_acumulados [label = 'Datos Acumulados',  fillcolor =  'gray', color = 'white', fontcolor = 'white']
  data_trans_activa [label = 'Transmisión Activa',  fillcolor =  'gray', color = 'white', fontcolor = 'white']
  
  
  ##### Spatial Data
  
  areal [label = 'Areal Data',  fillcolor =  '#0F9D58', color = 'white', fontcolor = 'white']
  pp_data [label = 'Point Pattern Data',  fillcolor =  ' #0F9D58', color = 'white', fontcolor = 'white']
  
  
 
 # Análisis 
 hotspots [label = 'Hotspots Analysis',  fillcolor =  'orange', color = 'white', fontcolor = 'black']
 cadenas [label = 'Cadenas de Transmisión',  fillcolor =  'orange', color = 'white', fontcolor = 'black']
 cluster_ana [label = 'Cluster Analysis',  fillcolor =  'orange', color = 'white', fontcolor = 'black']
 lgcp [label = 'Spatial LGCP',  fillcolor =  'orange', color = 'white', fontcolor = 'black']
 
 
 # software
 
 geoda [label = 'Geoda',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
 cluster_s [label = 'ClusterSeer',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
 satscan [label = 'SatScan',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']
 
 r_rstudio [label = 'R & RStudio',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white']

  denhotspot [label = 'denhotspots Package',  fillcolor =  'DodgerBlue', color = 'white', fontcolor = 'white'] 
 
 ##### define the relation
 
 epi -> {data_historic  data_datos_actuales}
 data_historic -> areal -> hotspots -> geoda
 data_datos_actuales -> {data_acumulados, data_trans_activa} -> pp_data -> {cadenas cluster_ana lgcp}
 cadenas -> cluster_s
 cluster_ana -> satscan
 
 {geoda cluster_s satscan lgcp} -> r_rstudio -> denhotspot
 
}")

