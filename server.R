library(UsingR)
shinyServer(
  function(input, output) {
    output$myPDF <- renderPlot({
      mu <- input$mu
      p <- input$p
      x <- seq(-5,5,0.025)
      plot(x,dnorm(x,mean=mu,sd=1),type="l"
           ,xlim=c(-5,5),ylim=c(0,0.5)
           ,xlab="x",ylab="p(x)"
           ,main="Probability density function (Normal Distribution)")
      z_p <- round(qnorm(p),1) + mu
      lines(c(z_p, z_p), c(0, 5),col="red",lwd=5)
      text(-4, 0.4, paste("mu = ", mu), cex=1.5)
      text(-4, 0.35, paste("probability = ", p), cex=1.5)
      text(-4, 0.3, paste("quantile = ", z_p), cex=1.5)
    })
    
  }
)

