
# Now, suppose you want to make some tweaks to format the flowchart to your study design

grViz("digraph {

#Node specifications
Node [shape = box, fontname = Helvetica, fixedsize = true, width=2]


### Create nodes

Assesed [label='Assesed for eligibility', width=3]
Randomized [label='Eligible for randomization', width=3]

A1 [label='This group', fontsize=10]
A2 [label='Lost to follow-up', fontname=Times]
A3 [label='Analyzed', color=darkgray]

B1 [label='That group', style=bold]
B2 [label='Lost to follow-up']
B3 [label='Analyzed', shape=ellipse]

C1 [label='Excluded']


### Connect nodes with lines

Assesed -> C1 [minlen=0]
Assesed->Randomized-> {A1 B1}  [sametail=TRUE]
A1->A2 [penwidth=2, arrowsize=2]
A2->A3 [penwidth=0, arrowsize=0]
B1->B2 [style='dotted']
B2->B3


}")

# Exporting
# Unlike most other plots in R, the diagrammer output is rendered using HTML instead of the graphics devices. Without going
# into details, this means that you cannot use R:s functions to export it as a high quality image-file.


# Export > Copy to clipboard and then paste it into your favorite 

# However, I found that it able to save to a vectorized PDF by using the "print to PDF"-feature. Here is how: 
# Right clicking the image in the viewver tab, select "open frame in new window".
# In the new window, click the printer-icon and then look for the print/save as PDF function. (OS X: lower-left corner, Windows 10: ____)
# The resulting file should be a scalable vector graphic, meaning that you can resize and zoom it all you like without distorting the image.




# The full set of attributes available can be found on p31-33 at http://www.graphviz.org/pdf/dotguide.pdf 