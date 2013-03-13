######################################################################
# @@id@@ main file
######################################################################

# purpose: Clean and set up workspace (using @@id@@_init), 
# load data (using @@id@@_data.R)
# and start analyses (in  @@id@@_proj.R)


######################################################################
# backup and clear R environment
save(list = ls(all=TRUE), file = "./data/@@id@@_backupworkspace.rdat")
rm(list=ls())



######################################################################
# run initialisation

source("./lib/@@id@@_init.R")

######################################################################
# main configuration

cfg.dataread<-FALSE

######################################################################
# data handling

if (cfg.dataread) {
    cat("reading data\n")


}

######################################################################
# run main file

source("@@id@@_proj.R")




