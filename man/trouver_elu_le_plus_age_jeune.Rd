% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trouver_elu_le_plus_age_jeune.R
\name{trouver_elu_le_plus_age_jeune}
\alias{trouver_elu_le_plus_age_jeune}
\title{Trouver l'élu(e) le plus âgé(e) et le/la plus jeune}
\usage{
trouver_elu_le_plus_age_jeune(df)
}
\arguments{
\item{df}{Un data frame contenant les informations sur les élus,
incluant les colonnes \verb{Nom de l'élu}, \verb{Prénom de l'élu}, \verb{Date de naissance},
et \verb{Libellé de la commune}.}
}
\value{
Un tibble avec les informations de l'élu(e) le/la plus âgé(e)
et de l'élu(e) le/la plus jeune. Les colonnes retournées incluent :
\itemize{
\item \verb{Nom de l'élu} : Le nom de l'élu,
\item \verb{Prénom de l'élu} : Le prénom de l'élu,
\item \verb{Date de naissance} : La date de naissance de l'élu,
\item \code{âge} : L'âge calculé de l'élu,
\item \verb{Libellé de la commune} : La commune à laquelle appartient l'élu.
}
}
\description{
Cette fonction permet de trouver l'élu(e) le plus âgé(e) et le/la plus jeune
dans un data frame d'élus. Elle calcule l'âge des élus à partir de leur date de naissance,
puis retourne les informations concernant l'élu(e) le/la plus âgé(e) et le/la plus jeune.
La fonction trie les élus par date de naissance et sélectionne le premier et le dernier élu.
}
\examples{
# Exemples d'utilisation


# Données (villes ou départements)

df_Nantes <- df_Gers_Loire_Atlantique |>
  filter(`Libellé de la commune` == "Nantes")

df_Aignan <- df_Gers_Loire_Atlantique |>
  filter(`Libellé de la commune` == "Aignan")

df_Loire_Atlantique <- df_Gers_Loire_Atlantique |>
  filter(`Libellé du département` == "Loire-Atlantique")

df_Gers <- df_Gers_Loire_Atlantique |>
  filter(`Libellé du département` == "Gers")


# Utilisation de la fonction

trouver_elu_le_plus_age_jeune(df_Nantes)

trouver_elu_le_plus_age_jeune(df_Aignan)

trouver_elu_le_plus_age_jeune(df_Loire_Atlantique)

trouver_elu_le_plus_age_jeune(df_Gers)
}
\keyword{internal}
