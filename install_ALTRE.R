setRepositories(ind=1:3)
install.packages("devtools")
if (.Platform$OS.type == "windows")
{
	devtools::install_github("hadley/devtools")
}
r.major.version <- as.numeric(R.Version()$major)
r.minor.version <- as.numeric(R.Version()$minor)
if (length(grep("darwin", R.Version()$os)) > 0 && (r.major.version <= 2 || (r.major.version == 3 && r.minor.version < 3)))
{
	source("http://bioconductor.org/biocLite.R")
} else
{
	source("https://bioconductor.org/biocLite.R")
}
biocLite(c("org.Hs.eg.db","EnsDb.Hsapiens.v75","GO.db"))
devtools::install_github("mathelab/ALTRE",ref="webgraphs",dependencies=TRUE)
if (.Platform$OS.type == "windows")
{
	# don't permamently replace the user's devtools
	install.packages("devtools")
}

