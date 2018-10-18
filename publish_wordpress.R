if (!require('RWordPress')) {
  devtools::install_github(c("duncantl/XMLRPC", "duncantl/RWordPress"))
}



install_github("duncantl/XMLRPC", force = TRUE)
install_github("duncantl/RWordPress", force = TRUE)

#activate the necessary libraries
library(RWordPress)
library(knitr)

# Tell RWordPress how to set the user name, password, and URL for your WordPress site.

options(WordpressLogin = c(leilalam = 'mxQvm#GYR**?8n3Yp,pcA}=X'),
               WordpressURL = "https://leilalam.wordpress.com/xmlrpc.php")

knit2wp('pdf_import_test.Rmd', 
        title = 'Data Import Series: Importing Data Stored in PDF Tables',
        publish = FALSE)

