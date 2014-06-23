shinyUI(pageWithSidebar(
  headerPanel("An interactive quantile computing tool"),
  sidebarPanel(
    h4('How to use'),
    p('This is a simple tool for computing a normal distribtion quantile from
      probability and mu. Simply choose the mu and probability values from the
      slide bars on the left panel, the tool will compute the quantile and show
      it in the diagram on the right panel. For simplification sd is fixed to 1.'),
    sliderInput('mu', 'mu',value = 0, min = -3, max = 3, step = 0.5,),
    sliderInput('p', 'probability',value = 0.5, min = 0, max = 1, step = 0.025,)
  ),
  mainPanel(
    plotOutput('myPDF')
  )
))