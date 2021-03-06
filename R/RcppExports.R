# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' @name prox_gradient_mapping
#'
#' @title Proximal-gradient mapping method.
#'
#' @description Performs the proximal-gradient mapping operation to
#'              estimate a regularized version of the inverse cov.
#'              matrix.  Follows the procedure described in,
#'              http://dept.stat.lsa.umich.edu/~yvesa/sto_prox.pdf
#'
#' @param data N x P matrix corresponding to the raw data.
#' @param theta_start Initial value for precision estimate.
#' @param update_w Step size for prox-gradient mapping.
#' @param update_change Proportion of \code{update_w} to keep when
#'        the algorithm fails to successfully estimate precision.
#' @param regularizer Regularizing constant, lambda.
#' @param max_iter Number of mapping iterations.
#' @param tol Tolerance at which the algorithm stops running.
#'
#' @return Theta (precision matrix) estimate.
#'
#' @author \packageMaintainer{changepointsHD}
prox_gradient_mapping <- function(data, theta_start, update_w, update_change, regularizer, max_iter, tol) {
    .Call('changepointsHD_prox_gradient_mapping', PACKAGE = 'changepointsHD', data, theta_start, update_w, update_change, regularizer, max_iter, tol)
}

#' @name prox_gradient_ll
#'
#' @title Proxmal-gradient log-likelihood estimator.
#'
#' @description Estimates the log-likeihood for the corresponding
#'              precision matrix and data set.
#'
#' @param data N x P matrix corresponding to the raw data.
#' @param theta_i Estimate for precision.
#' @param regularizer Regularizing constant, lambda.
#'
#' @return Log-likelihood estimate.
#'
#' @author \packageMaintainer{changepointsHD}
prox_gradient_ll <- function(data, theta_i, regularizer) {
    .Call('changepointsHD_prox_gradient_ll', PACKAGE = 'changepointsHD', data, theta_i, regularizer)
}

#' @name rank_one
#'
#' @title Rank one update single change-point estimation.
#'
#' @description This is a method for estimating a single-changepoint
#'              which takes advantage of the special structure
#'              of the Gaussian graphical model.  It cannot take
#'              arbitrary black-box models like \code{simulated_annealing}
#'              or \code{brute_force}.  However, it can still be run within
#'              \code{binary_segmentation}.
#'
#' @param data N x P Matrix corresponding to the raw data.
#' @param theta_init Initial value for theta estimate.
#' @param buff Distance to maintain from edge of sample.
#' @param regularizer Regularizing constant, lambda.
#' @param tau Initial Estimate for change-point.
#' @param max_iter Maximum number of rank-one updates to be
#'        run.
#' @param update_w Step size for prox-gradient.
#' @param update_change Proportion of \code{update_w} to keep when
#'        the algorithm fails to successfully estimate theta.
#' @param mapping_iter Number of mapping iterations.
#' @param tol Tolerance at which the algorithm stops running.
#'
#' @return List containing the estimated change-point and
#'         theta values.
#'
#' @author \packageMaintainer{changepointsHD}
rank_one <- function(data, theta_init, buff = 10L, regularizer = 1., tau = -1L, max_iter = 25L, update_w = 1., update_change = 0.9, mapping_iter = 1L, tol = 0.00001) {
    .Call('changepointsHD_rank_one', PACKAGE = 'changepointsHD', data, theta_init, buff, regularizer, tau, max_iter, update_w, update_change, mapping_iter, tol)
}

