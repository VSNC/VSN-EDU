#' Yield of oats with different fertilizer 
#' treatments in a split-plot design
#' 
#' Results of a classic split-plot experiment, 
#' carried out at Rothamsted in 1931; also see Yates, 
#' F. (1937) The Design and Analysis of Factorial Experiments, 
#' page 74; John, P.W.M. (1971) Statistical 
#' Design and Analysis of Experiments, page 99.
#' @format 
#' \describe{A data frame with 72 observations on the 
#' following six variables:
#' \item{blcoks}{a factor specifying six blocks.}
#' \item{wplots}{a factor specifying three whole-plots
#'  for each block.}
#' \item{blcoks}{a factor specifying six blocks.}
#' \item{subplots}{a factor specifying four subplots 
#' for each whole-plot}
#' \item{variety}{a factor specifying three varieties of oats (Victory, Golden rain and Marvellous).}
#' \item{nitrogen}{a factor specifying four different amounts 
#' of nitrogen fertilizer (0, 0.2, 0.4 and 0.6 cwt).}
#' \item{yield}{a numerical vector recording yield of oats.}
#'  
#' }
#' 
#' @details 
#' The design has two treatment factors: three varieties of 
#' oats (Victory, Golden rain and Marvellous), and four levels
#'  of nitrogen (0, 0.2, 0.4 and 0.6 cwt). 
#'  Because of limitations on the machines for sowing seed, 
#'  the different varieties could not conveniently be applied 
#'  to plots as small as those that could be used for the 
#'  different rates of fertilizer. So the design was set 
#'  up in two stages. First of all, the blocks were each 
#'  divided into three plots of the size required for the 
#'  varieties, and the three varieties were randomly allocated 
#'  to the plots within each block 
#'  (exactly as in a randomized-block design). Then each of
#'  these plots, or whole-plots as they are usually known, 
#'  was split into four sub-plots 
#'  (one for each rate of nitrogen), and the allocation of 
#'  nitrogen was randomized independently within each
#'   whole-plot.
#'   
#' @source 
#' VSN International (2014). Genstat for Windows 17th Edition.
#'   VSN International, Hemel Hempstead, UK. Web page:
#'    Genstat.co.uk
#'    
#' @examples 
#' library(VSNEDU)
#' data(oats)
#' moda <- aov(yield ~ Nitrogen*Variety + Error(Blocks/Wplots),data= oats)
#' summary(moda)
#' 
"oats"