% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/creer_commune.R
\name{creer_commune}
\alias{creer_commune}
\title{Créer un objet de classe 'commune' à partir d'un data frame}
\usage{
creer_commune(df)
}
\arguments{
\item{df}{Un data frame contenant des informations sur les élus d'une commune. Le data frame doit inclure la colonne
\verb{Code de la commune}.}
}
\value{
Un objet de classe \code{commune} contenant les mêmes informations que le data frame d'entrée, mais avec une nouvelle
classe attribuée.
}
\description{
Cette fonction prend un data frame contenant des informations sur une commune et valide que toutes les lignes correspondent
à une seule commune (en vérifiant que le \verb{Code de la commune} est unique). Elle transforme ensuite ce data frame en un objet de
classe \code{commune} pour lui attribuer un comportement spécifique lors de son utilisation.
}
\examples{
# Exemples d'utilisation


# Données (villes)

df_Nantes <- df_Gers_Loire_Atlantique |>
  filter(`Libellé de la commune` == "Nantes")

df_Aignan <- df_Gers_Loire_Atlantique |>
  filter(`Libellé de la commune` == "Aignan")


# Utilisation de la fonction

df_Nantes <- creer_commune(df_Nantes)

df_Aignan <- creer_commune(df_Aignan)

}
