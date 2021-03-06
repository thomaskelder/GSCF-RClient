library(inlinedocs)

#package.skeleton("GSCFClient", code_files = "dbnp.functions.R")
dir.create("GSCFClient/R")
dir.create("GSCFClient/man")
file.copy("dbnp.functions.R", "GSCFClient/R/dbnp.functions.R", overwrite = T)
package.skeleton.dx("GSCFClient")
system("R CMD build GSCFClient")

install.packages("GSCFClient_1.0.tar.gz", repo=NULL)
detach("package:GSCFClient", unload = T)
library(GSCFClient)