
### PRISMA 2009 Flow Diagram

library(DiagrammeR)

grViz("digraph {
      
      # Set general properties
      splines=ortho 
      Node [shape = box, fontname = Helvetica, fontsize= 11, width=2]
      
      
      # Create nodes
      
      fromDb [label='Records idenitified through\\ndatabase searching\\n(n = )']
      fromOther [label='Additional records identified\\nthrough other sources\\n(n = )']
      duplicatesRemoved [label='Records after duplicates removed\\n(n = )']
screened [label='Records screened\\n(n = )']
screenedExcluded [label='Records excluded\\n(n = )']
assesed [label='Full-text articles assesed\\nfor eligibility\\n(n = )']
assesedExcluded [label='Full-text articles excluded,\\nwith reasons\\n(n = )']
included1 [label='Studies included in\\nqualitative synthesis\\n(n = )']
included2 [label='Studies included in\\nquantitative synthesis\\n(meta-analysis)\\n(n = )']

      
      ### Connect nodes with lines
      
      {fromDb fromOther} -> duplicatesRemoved
      duplicatesRemoved -> screened
screened -> screenedExcluded [minlen=0]
screened -> assesed
assesed -> assesedExcluded [minlen=0]
assesed -> included1
included1 -> included2
      
      }")



