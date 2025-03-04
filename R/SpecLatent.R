#' Spectral Methods for Latent Variable Models
#'
#' A package that contains spectral methods for latent variable models.
#'
#' @docType package
#' @name SpecLatent
#' @title Spectral Methods for Latent Variable Models
#' @description This package contains spectral methods for latent variable models, including the generalized-GoM model and degree-heterogeneous latent class model.
#' @details
#' 
#' @section Data Example:
#' 
#' `data_anes`, from the American National Election Studies (ANES) 2022 pilot study
#' `data_senate`, from the 112th Senate roll call data
#' 
#' @examples
#' \donttest{
#' # Load the dataset
#' data(data_anes)
#' 
#' # Inspect the first few rows and columns of the dataset
#' anes[1:6, 1:6]
#' 
#' # Estimation of the polytomous GoM model parameters
#' res <- gGoM(anes[, 2:146], K=3, pol=T, dist=NULL, large=T, prune=T, r=10, q=0.4, e=0.2)
#' 
#' # ternary plot
#' library(ggtern)
#' # ternary
#' data_tern <- as.data.frame(res$P_hat)
#' data_tern$party <- as.factor(anes$party)
#' ggtern(data=data_tern, aes(V2, V1, V3)) + 
#'   geom_point(size=0.7, aes(color=party), alpha=1) + 
#'   xlab("Conservative") + ylab("Indifferent") + zlab("Liberal") + 
#'   theme(axis.title=element_text(size=8.5), 
#'         legend.title= element_text(size=9), 
#'         legend.text=element_text(size=9), 
#'         legend.key.size=unit(0.6, 'cm'), 
#'         legend.position = "bottom", 
#'         tern.axis.title.L = element_text(hjust = 0.2, vjust = 0.5),
#'         tern.axis.title.R = element_text(hjust = 0.8, vjust = 0.5),
#'         legend.box.margin = margin(-35, 0, 0, 0), 
#'         plot.margin = margin(-15, -15, 0, -30)) +
#'   scale_color_manual(values=c('#377EC2', "#7FBFBB", '#e26b57'))
#' }
#' 
#' @author 
#' Ling Chen (\email{lc3521@columbia.edu}), Yuqi Gu, Zhongyuan Lyu, Chengzhu Huang
"_PACKAGE"
