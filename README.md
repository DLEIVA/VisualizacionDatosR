# VisualizacionDatosR

Materiales para el curso de Visualización de Datos con R

## Asociación Española de Metodología de las Ciencias del Comportamiento (AEMCCO)

### 11 y 12 de Junio, 2025

### David Leiva Ureña

#### Departmento Psicología Social y Psicología Cuantitativa, Universidad de Barcelona

---

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />Este trabajo se ha realizado bajo licencia <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.8152802.svg)](https://doi.org/10.5281/zenodo.15574102)

## Sobre el curso

Este curso se ha pensado como un taller de tipo práctico en el que se introducirá a los participantes en la visualización de datos mediante el software estadístico de libre distribución R. Se utilizarán numerosos ejemplos que faciliten el dominio de la sintaxis básica para la visualización de datos, utilizando para ello diversos paquetes de R.

### Programa del curso:

1. Introducción (15 min.)
 - Objetivos del curso
 - Revisión técnica: RStudio y librerías instaladas

2. Visualización de datos con R base (1.15h)
 - Sistemas y funciones gráficas tradicionales 
 - Parámetros gráficos
 - Gráficos avanzados con R base

3. Visualización de datos con ggplot2 (1.30h)
 - Gramática de los gráficos
 - Gráficos básicos con qplot
 - Gráficos avanzados con ggplot
 - Otros paquetes basados en ggplot2

4. Visualización interactiva con plotly (1.30h)
 - Introducción a plotly
 - Gráficos interactivos con el paquete plotly

5. Visualización interactiva con flexdashboard (1.30h)
 - Dashboards: características y utilidad
 - Introducción a flexdashboard
 - Dashboards básicos mediante flexdashboard

## Sobre el instructor

Me llamo David Leiva y soy profesor Agregado (Contratado Doctor) en el Departamento de Psicología Social y Psicología Cuantitativa. Imparto cursos de grado, máster y doctorado en Estadística, Técnicas de Investigación, Modelización Estadística, Ciencia de Datos y Matemáticas Aplicadas. Mis principales intereses de investigación son el análisis de datos diádicos, la modelización y el software estadístico. También he participado en numerosos trabajos en campos como la Psicología de las Organizaciones, la Neuropsicología, la Psicogerontología o la Biología, entre otros. Puedes encontrar mi CV en el siguiente [enlace](https://github.com/DLEIVA/CV/blob/main/CV_DLU_2025.pdf).

## Preparación previa

Por favor, asegúrate que tienes al menos la versión 4.1 de R instalada &mdash; *y preferiblemente la versión 4.5* &mdash; (pues dependiendo de los paquetes que se utilicen requieren versiones actualizadas del software). Nótese que R y RStudio son dos programas distintos: no es suficiente tener actualizada la versión de RStudio pues R se va actualizando independientemente de forma periódica.

Para comprobar la versión de R instalada, puedes ejecutar

```r
version
```

en R y leer en el apartado `version.string` (o las secciones `major` y `minor`).

Si la versión instalada de R es < 4.1.0, necesitarás actualizar el programa previa descarga e instalación. Para descargar R ve a la página [CRAN Download](https://cran.r-project.org/) y selececciona el enlace apropiado según tu sistema operativo:

* [Windows](https://cran.r-project.org/bin/windows/)
* [MacOS X](https://cran.r-project.org/bin/macosx/)
* [Linux](https://cran.r-project.org/bin/linux/)

A lo largo de las sesiones vamos a utilizar diversos paquetes de R que necesitarás tener instalados. Antes del inicio del taller, ejecuta el siguiente código que actualizará los paquetes instalados e instalará los paquetes necesarios durante el taller:

```r
# Actualiza paquetes
update.packages(ask = FALSE, checkBuilt = TRUE)

# Algunos paquetes a instalar
pkgs <- c("tidyverse", "rmarkdown", "haven", "usethis", "learnr", "car", "magick","gridExtra", "dslabs", "ggthemes", "ggrepel", "latex2exp", "patchwork", "gganimate", "ggvis", "gapminder", "plotly", "knitr", "lorem", "flexdashboard")

# Instalar esos paquetes
install.packages(pkgs, Ncpus = 4) # especifica Ncpus según nº CPUs disponibles en tu ordenador
```

# Materiales del curso

## Desde Github

Para descargar los materiales del taller puedes abrir RStudio y ejecutar `use_course()` tal y como se muestra a continuación:

```r
usethis::use_course("DLEIVA/VisualizacionDatosR")
```

Una vez ejecutada la instrucción se os preguntará si queréis descargar los materiales del curso en el directorio `~/Desktop` (en este caso, `~/` se refiere a vuestro directorio raíz). Presionad el número indicado y presionad la tecla <kbd>Enter</kbd> para mostrar vuestro acuerdo. Los materiales se descargarán como un archivo zip y se extraerán automáticamente.

Tras la extracción, se os preguntará si queréis eliminar el archivo `.zip` descargado. Seleccionad la opción que creáis oportuna.

Finalmente, tras responder a esta cuestión, RStudio cargará el proyecto del taller en una nueva sesión de RStudio. Una vez abierto el proyecto, podeís cerrar la otra ventana de RStudio (en la que habéis ejecutado la instrucción `use_course()`).

### Descarga directa

Si no estáis utilizando RStudio o sabéis lo que hacéis, podeís descargar el archivo zip directamente desde <https://github.com/DLEIVA/VisualizacionDatosR.git>. La extracción de archivos y el inicio en el directorio correcto correrá entonces a vuestro cargo.


**Bibliografía recomendada**

Murrell, P. (2019). R graphics. (3rd. Ed.). Boca Raton, FL: Chapman & Hall/CRC.

Healy, K. (2019). Data Visualization. A practical introduction, NJ: Princeton University Press. [ENLACE AL LIBRO ABIERTO](https://socviz.co/index.html)

Wilke, C. O. (2019). Fundamentals of Data Visualization. (2nd. Ed.). Sebastopol,
CA: O’Reilly. [ENLACE AL LIBRO ABIERTO](https://clauswilke.com/dataviz/)

Whickam, H, Grolemund, G. (2023). R for Data Science. (2nd. Ed.). Sebastopol,
CA: O’Reilly. [ENLACE AL LIBRO ABIERTO](https://r4ds.hadley.nz/)