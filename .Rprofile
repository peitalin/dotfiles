
options("width"=150)
options("prompt"="R> ", digits=4)

println <- function(...) {
    cat(..., '\n')
}
println('\t', version$version.string)
println('\t', 'pbpaste: paste commands from clipboard')

.First <- function() {
    library(graphics)
    options("repos" = c(CRAN = "http://cran.r-project.org/"))
    options("device" = "quartz")
}

# require(devtools, quietly=TRUE, warn.conflicts=FALSE)
# require(lubridate, quietly=TRUE)
# require(reshape2, quietly=TRUE)
# require(stringr, quietly=TRUE)
# require(pryr, quietly=TRUE)
require(dplyr, quietly=TRUE, warn.conflicts=FALSE)
# require(hash)
dict <- hash::hash

exit <- q

words <- function(string) {
    unlist(strsplit(string, " "))
}

type <- function(obj) {
    cat("RPROFILE: Alias for `typeof()`\n")
    typeof(obj)
}

chdir <- function(string) {
    cat("RPROFILE: Alias for `setwd()`\n")
    setwd(string)
}

getcwd <- function() {
    cat("RPROFILE: Alias for `getwd()`\n")
    getwd()
}

xrange <- function(start, end, by) {
    cat("RPROFILE: Use `seq` or `seq_along`\n")
    seq(start, end-1, by)
}


# read.csv <- function(...) {
#     cat("RPROFILE: Alias for `dplyr::tbl_df(data.table::fread(...))`\n")
#     cat("\tAs `read.csv()` corrupts float64.\n")
#     dplyr::tbl_df(data.table::fread(...))
# }


substrR <- function(string, n) {
    substr(string, nchar(string)-n+1, nchar(string))
}

src <- function(file="None") {
    if (file=="None") {
        f <- Filter(function(x) substr(x, nchar(x)-1, nchar(x)) == '.R', list.files())[1]
    } else {
        f <- file
    }
    ifelse(is.na(f), return("No .R file specified or found in cwd"), source(f))
    print(paste("RPROFILE: Alias for 'source()' => Loaded file: ", f))
}


and <- function(f1, f2) {
    function(...) {
        f1(...) && f2(...)
    }
}

or <- function(f1, f2) {
    function(...) {
        f1(...) || f2 (...)
    }
}

not <- function(f1) {
    function(...) {
        !f1(...)
    }
}




pbpaste <- function(echo=TRUE, max.deparse.length=Inf, ...) {
    # This is the Mac input strategy
    L <- readLines(pipe("pbpaste"))
    source(textConnection(L),
        echo=echo, max.deparse.length=max.deparse.length, ...) }





