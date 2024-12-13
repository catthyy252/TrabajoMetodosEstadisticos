# Leer y cargar las tablas 
evolucion_sustancias <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/evolucion_del_consumo_de_alcohol,_cannabis,_cocaina_en_polvo,_hipnosedantes_y_tabaco_en_españa.csv", header = TRUE, sep = ";", dec = ".", nrows = 13)
prevalencia_consumo <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/prevalencia_de_consumo_alguna_vez_en_la_vida_segun_tipo_de_droga.csv", header = TRUE, nrows = 14, sep = ";", dec = ".")
evolucion_tabaco <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/evolucion_el_numero_de_usuarios_de_tabaco_a_nivel_mundial.csv", header = TRUE, sep = ";", dec = ".", nrows = 6)
fumadores_diarios <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/fumadores_a_diario_en_españa_por_grupos_de_edad_y_sexo.csv", header = TRUE, nrows = 7, sep = ";", dec = ".")
consecuencias <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/los_cancer_de_laringe_y_pulmon_son_los_que_mas_relacionados_estan_con_el_tabaco.csv", header = TRUE, nrows = 16, sep = ";", dec = ".")
muertes_por_drogas <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/muertes_por_sobredosis_de_drogas_por_paises_europeos.csv", header = TRUE, nrows = 30, sep = ";", dec = ".")
fumadores_por_provincias <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/personas_que_fuman_a_diario_por_provincias_en_españa.csv", header = TRUE, nrows = 14, sep = ";", dec = ".")
prevalencia_alcohol <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/prevalencia_del_consumo_de_alcohol_entre_los_estudiantes_de_enseñanzas_secundarias_de_14-18_años_en_españa.csv", header = TRUE, nrows = 14, sep = ";", dec = ".")
fallecidos <- read.csv("C:/Users/catth/OneDrive/Documentos/ASIGNATURAS UNIVERSIDAD/SEGUNDO/ME/temas trabajo/tabaco, drogas, alcohol/fallecidos_por_reaccion_aguda_tras_el_consumo_de_sustancias_psicoactivas_en_españa.csv", header = TRUE, nrows = 16, sep = ";", dec = ".")

# Cambios de tipos de variables
str(evolucion_sustancias)

evolucion_sustancias$Alcohol <- gsub(",", ".", evolucion_sustancias$Alcohol)
evolucion_sustancias$Tabaco <- gsub(",", ".", evolucion_sustancias$Tabaco)
evolucion_sustancias$Cannabis <- gsub(",", ".", evolucion_sustancias$Cannabis)
evolucion_sustancias$Hipnosedantes.con.o.sin.receta <- gsub(",", ".", evolucion_sustancias$Hipnosedantes.con.o.sin.receta)
evolucion_sustancias$Cocaína.en.polvo <- gsub(",", ".", evolucion_sustancias$Cocaína.en.polvo)

evolucion_sustancias$Alcohol <- as.numeric(evolucion_sustancias$Alcohol)
evolucion_sustancias$Tabaco <- as.numeric(evolucion_sustancias$Tabaco)
evolucion_sustancias$Cannabis <- as.numeric(evolucion_sustancias$Cannabis)
evolucion_sustancias$Hipnosedantes.con.o.sin.receta <- as.numeric(evolucion_sustancias$Hipnosedantes.con.o.sin.receta)
evolucion_sustancias$Cocaína.en.polvo <- as.numeric(evolucion_sustancias$Cocaína.en.polvo)

str(prevalencia_consumo)

prevalencia_consumo$Alcohol <- gsub(",", ".", prevalencia_consumo$Alcohol)
prevalencia_consumo$Tabaco <- gsub(",", ".", prevalencia_consumo$Tabaco)
prevalencia_consumo$Cannabis <- gsub(",", ".", prevalencia_consumo$Cannabis)
prevalencia_consumo$Hipnosedantes.con.o.sin.receta <- gsub(",", ".", prevalencia_consumo$Hipnosedantes.con.o.sin.receta)
prevalencia_consumo$Cocaína.polvo.y.o.base<- gsub(",", ".", prevalencia_consumo$Cocaína.polvo.y.o.base)

prevalencia_consumo$Hipnosedantes.sin.receta <- gsub(",", ".", prevalencia_consumo$Hipnosedantes.sin.receta)
prevalencia_consumo$Éxtasis <- gsub(",", ".", prevalencia_consumo$Éxtasis)
prevalencia_consumo$Alucinógenos <- gsub(",", ".", prevalencia_consumo$Alucinógenos)

prevalencia_consumo$Alcohol <- as.numeric(prevalencia_consumo$Alcohol)
prevalencia_consumo$Tabaco <- as.numeric(prevalencia_consumo$Tabaco)
prevalencia_consumo$Cannabis <- as.numeric(prevalencia_consumo$Cannabis)
prevalencia_consumo$Hipnosedantes.con.o.sin.receta <- as.numeric(prevalencia_consumo$Hipnosedantes.con.o.sin.receta)

prevalencia_consumo$Cocaína.polvo.y.o.base<- as.numeric(prevalencia_consumo$Cocaína.polvo.y.o.base)
prevalencia_consumo$Hipnosedantes.sin.receta <- as.numeric(prevalencia_consumo$Hipnosedantes.sin.receta)
prevalencia_consumo$Éxtasis <- as.numeric(prevalencia_consumo$Éxtasis)
prevalencia_consumo$Alucinógenos <- as.numeric(prevalencia_consumo$Alucinógenos)

str(evolucion_tabaco)
evolucion_tabaco$X15.24 <- gsub(",", ".", evolucion_tabaco$X15.24)
evolucion_tabaco$X25.34 <- gsub(",", ".", evolucion_tabaco$X25.34)
evolucion_tabaco$X35.44 <- gsub(",", ".", evolucion_tabaco$X35.44)
evolucion_tabaco$X45.54 <- gsub(",", ".", evolucion_tabaco$X45.54)
evolucion_tabaco$X55.64 <- gsub(",", ".", evolucion_tabaco$X55.64)
evolucion_tabaco$X65.74 <- gsub(",", ".", evolucion_tabaco$X65.74)
evolucion_tabaco$X75.84 <- gsub(",", ".", evolucion_tabaco$X75.84)
evolucion_tabaco$X85.o.más <- gsub(",", ".", evolucion_tabaco$X85.o.más)

evolucion_tabaco$X15.24 <- as.numeric(evolucion_tabaco$X15.24)
evolucion_tabaco$X25.34 <- as.numeric(evolucion_tabaco$X25.34)
evolucion_tabaco$X35.44 <- as.numeric(evolucion_tabaco$X35.44)
evolucion_tabaco$X45.54 <- as.numeric(evolucion_tabaco$X45.54)
evolucion_tabaco$X55.64 <- as.numeric(evolucion_tabaco$X55.64)
evolucion_tabaco$X65.74 <- as.numeric(evolucion_tabaco$X65.74)
evolucion_tabaco$X75.84 <- as.numeric(evolucion_tabaco$X75.84)
evolucion_tabaco$X85.o.más <- as.numeric(evolucion_tabaco$X85.o.más)

str(fumadores_diarios)
fumadores_diarios$Hombres = as.integer(gsub("\\.", "",fumadores_diarios$Hombres))
fumadores_diarios$Mujeres = as.integer(gsub("\\.", "",fumadores_diarios$Mujeres))

str(consecuencias)
colnames(consecuencias)[colnames(consecuencias) == "X."] <- "%"

str(muertes_por_drogas)
muertes_por_drogas$Fallecidos = as.integer(gsub("\\.", "",muertes_por_drogas$Fallecidos))

str(fumadores_por_provincias)
fumadores_por_provincias$Fumadores = as.integer(gsub("\\.", "",fumadores_por_provincias$Fumadores))

str(prevalencia_alcohol)
prevalencia_alcohol$Alguna.vez.en.la.vida = as.numeric(gsub(",", ".", prevalencia_alcohol$Alguna.vez.en.la.vida))
prevalencia_alcohol$Últimos.12.meses = as.numeric(gsub(",", ".", prevalencia_alcohol$Últimos.12.meses))
prevalencia_alcohol$Últimos.30.días = as.numeric(gsub(",", ".", prevalencia_alcohol$Últimos.30.días))

# Primera tabla -> evolución de sustancias
# Estudio del alcohol
media_consumo_alcohol <- mean(evolucion_sustancias$Alcohol, na.rm = TRUE)
desviacion_consumo_alcohol <- sd(evolucion_sustancias$Alcohol, na.rm = TRUE)
print(media_consumo_alcohol)
print(desviacion_consumo_alcohol)

frec_absoluta_alcohol <- table(evolucion_sustancias$Alcohol)
frec_relativa_alcohol <- prop.table(frec_absoluta_alcohol)
print(frec_relativa_alcohol)

# Estudio del tabaco
media_consumo_tabaco <- mean(evolucion_sustancias$Tabaco, na.rm = TRUE)
desviacion_consumo_tabaco <- sd(evolucion_sustancias$Tabaco, na.rm = TRUE)
print(media_consumo_tabaco)
print(desviacion_consumo_tabaco)

frec_absoluta_tabaco <- table(evolucion_sustancias$Tabaco)
frec_relativa_tabaco <- prop.table(frec_absoluta_tabaco)
print(frec_relativa_tabaco)

# Estudio del cannabis
media_consumo_cannabis <- mean(evolucion_sustancias$Cannabis)
desviacion_consumo_cannabis <- sd(evolucion_sustancias$Cannabis)
print(media_consumo_cannabis)
print(desviacion_consumo_cannabis)

frec_absoluta_cannabis <- table(evolucion_sustancias$Cannabis)
frec_relativa_cannabis <- prop.table(frec_absoluta_cannabis)
print(frec_relativa_cannabis)

# Estudio de hipnosedantes con o sin receta
media_consumo_hipnosedantes <- mean(evolucion_sustancias$Hipnosedantes.con.o.sin.receta, na.rm = TRUE)
desviacion_consumo_hipnosedantes <- sd(evolucion_sustancias$Hipnosedantes.con.o.sin.receta, na.rm = TRUE)
print(media_consumo_hipnosedantes)
print(desviacion_consumo_hipnosedantes)

frec_absoluta_hipnosedantes <- table(evolucion_sustancias$Hipnosedantes.con.o.sin.receta)
frec_relativa_hipnosedantes <- prop.table(frec_absoluta_hipnosedantes)
print(frec_relativa_hipnosedantes)

# Estudio de la cocaína en polvo
media_consumo_cocaina <- mean(evolucion_sustancias$Cocaína.en.polvo)
desviacion_consumo_cocaina <- sd(evolucion_sustancias$Cocaína.en.polvo)
print(media_consumo_cocaina)
print(desviacion_consumo_cocaina)

frec_absoluta_cocaina <- table(evolucion_sustancias$Cocaína.en.polvo)
frec_relativa_cocaina <- prop.table(frec_absoluta_cocaina)
print(frec_relativa_cocaina)

# Diagrama de cajas
# Cargar librerías necesarias
library(ggplot2)
library(dplyr)
library(tidyr)

evolucion_sustancias_datos <- data.frame(
  Año = c(1997, 1999, 2001, 2003, 2005, 2007, 2009, 2011, 2013, 2015, 2018, 2020, 2022),
  Alcohol = c(90.6, 87.3, 89.0, 88.6, 93.7, 88.0, 94.2, 90.9, 93.1, 93.5, 91.2, 93.0, 93.2),
  Tabaco = c(69.7, 64.9, 68.4, 68.9, 69.5, 68.5, 75.0, 71.7, 73.1, 72.5, 69.7, 70.0, 69.6),
  Cannabis = c(22.9, 19.6, 23.8, 29.0, 28.6, 27.3, 32.1, 27.4, 30.4, 31.5, 35.2, 37.5, 40.9),
  Hipnosedantes = c(NA, NA, NA, NA, 8.7, 15.4, 13.4, 19.5, 22.2, 18.7, 20.8, 22.5, 23.5),
  Cocaina = c(3.4, 3.1, 4.8, 5.9, 7.0, 8.0, 10.2, 8.8, 10.2, 8.9, 10.0, 10.9, 11.7)
)

# Convertir los datos a formato largo
datos_largos <- evolucion_sustancias_datos %>%
  pivot_longer(cols = -Año, names_to = "Sustancia", values_to = "Consumo")

# Diagrama de cajas con los datos
ggplot(datos_largos, aes(x = Sustancia, y = Consumo, fill = Sustancia)) +
  geom_boxplot(outlier.color = "red", outlier.shape = 16, outlier.size = 2) +
  labs(
    title = "Diagrama de Caja del Consumo de Sustancias (1995-2022)",
    x = "Sustancia",
    y = "Nivel de Consumo"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_fill_brewer(palette = "Set3")

# Octava tabla -> Prevalencia de alcohol en jóvenes
# Calcular la media total de personas que han consumido alguna vez en la vida, en los últimos 12 meses y 30 días.
media_alguna_vez <- mean(prevalencia_alcohol$Alguna.vez.en.la.vida, na.rm = TRUE)
print(media_alguna_vez)
media_ultimos_12_meses <- mean(prevalencia_alcohol$Últimos.12.meses, na.rm = TRUE)
print(media_ultimos_12_meses)
media_ultimos_30_dias <- mean(prevalencia_alcohol$Últimos.30.días, na.rm = TRUE)
print(media_ultimos_30_dias)

# Calcular el max y min de consumo alguna vez en la vida
valor_max_alguna_vez <- max(prevalencia_alcohol$Alguna.vez.en.la.vida)
años_max_alguna_vez <- prevalencia_alcohol$Año[prevalencia_alcohol$Alguna.vez.en.la.vida == valor_max_alguna_vez]
cat("El porcentaje máximo de adolescentes que han consumido alcohol alguna vez en la vida es de:", valor_max_alguna_vez, "% y ocurrió en el año(s):", años_max_alguna_vez, "\n")
valor_min_alguna_vez <- min(prevalencia_alcohol$Alguna.vez.en.la.vida)
años_min_alguna_vez <- prevalencia_alcohol$Año[prevalencia_alcohol$Alguna.vez.en.la.vida == valor_min_alguna_vez]
cat("El porcentaje mínimo de adolescentes que han consumido alcohol alguna vez en la vida es de:", valor_min_alguna_vez, "% y ocurrió en el año(s):", años_min_alguna_vez, "\n")

# Calcular el max y min de consumo últimos 12 meses
valor_max_12_meses <- max(prevalencia_alcohol$Últimos.12.meses)
años_max_12_meses <- prevalencia_alcohol$Año[prevalencia_alcohol$Últimos.12.meses == valor_max_12_meses]
cat("El porcentaje máximo de adolescentes que han consumido alcohol en los últimos 12 meses es de:", valor_max_12_meses, "% y ocurrió en el año(s):", años_max_12_meses, "\n")
valor_min_12_meses <- min(prevalencia_alcohol$Últimos.12.meses)
años_min_12_meses <- prevalencia_alcohol$Año[prevalencia_alcohol$Últimos.12.meses == valor_min_12_meses]
cat("El porcentaje mínimo de adolescentes que han consumido alcohol en los últimos 12 meses es de:", valor_min_12_meses, "% y ocurrió en el año(s):", años_min_12_meses, "\n")

# Calcular el max y min de consumo últimos 30 días
valor_max_30_dias <- max(prevalencia_alcohol$Últimos.30.días)
años_max_30_dias <- prevalencia_alcohol$Año[prevalencia_alcohol$Últimos.30.días == valor_max_30_dias]
cat("El porcentaje máximo de adolescentes que han consumido alcohol en los últimos 30 días es de:", valor_max_30_dias, "% y ocurrió en el año(s):", años_max_30_dias, "\n")
valor_min_30_dias <- min(prevalencia_alcohol$Últimos.30.días)
años_min_30_dias <- prevalencia_alcohol$Año[prevalencia_alcohol$Últimos.30.días == valor_min_30_dias]
cat("El porcentaje mínimo de adolescentes que han consumido alcohol en los últimos 30 días es de:", valor_min_30_dias, "% y ocurrió en el año(s):", años_min_30_dias, "\n")

# Problema haciendo uso de la distribución binomial
media <- mean(prevalencia_alcohol$Alguna.vez.en.la.vida[12:14])
result <- pbinom(9, 20, media/100)
print(result)

# Cuarta tabla -> fumadores diarios (hombres y mujeres)
# Diagrama Piramide de fumadores diarios
install.packages("pyramid")
library(pyramid)
str(fumadores_diarios)
fumadores_diarios$Mujeres <- as.integer(gsub("\\.", "",fumadores_diarios$Mujeres))
fumadores_diarios$Hombres <- as.integer(gsub("\\.", "",fumadores_diarios$Hombres))
piramide <- data.frame(fumadores_diarios$Hombres, fumadores_diarios$Mujeres, fumadores_diarios$Parámetro)
pyramid(piramide, Llab="Hombres", Rlab="Mujeres", Clab="Edad")

# Séptima tabla -> fumadores por provincias
# Gráfico de sectores de fumadores por provincias (gráfico de queso)
library(ggplot2)
ggplot(fumadores_por_provincias, aes(x = "", y = Fumadores, fill = Parámetro)) +
  geom_bar(stat = "identity", width = 1, color = "black") +
  coord_polar("y", start = 0) +
  labs(title = "Fumadores por provincias") +
  theme_void()

# Tercera tabla -> evolución del número de usuarios de tabaco a nivel mundial.
# Visualizar la tendencia de los fumadores por años a nivel mundial (Hipótesis paramétrica).
datos <- data.frame(
  Año = c(2000, 2005, 2010, 2015, 2020, 2025),
  `15-24` = c(20.8, 18.7, 17.1, 15.6, 14.2, 13.0),
  `25-34` = c(31.2, 28.4, 25.8, 23.5, 21.7, 19.7),
  `35-44` = c(38.4, 34.7, 31.6, 28.9, 26.3, 24.3),
  `45-54` = c(41.2, 37.3, 33.8, 31.0, 28.5, 26.1),
  `55-64` = c(40.1, 35.7, 32.1, 29.3, 26.8, 24.8),
  `65-74` = c(34.0, 30.7, 27.5, 24.7, 22.7, 20.9),
  `75-84` = c(27.1, 24.2, 22.0, 19.9, 18.0, 16.4),
  `85 o más` = c(18.9, 18.0, 15.7, 14.0, 12.7, 11.6)
)
str(datos)
datos$Promedio <- rowMeans(datos[, 2:9], na.rm = TRUE)
modelo <- lm(Promedio ~ Año, data = datos)  
summary(modelo)

library(ggplot2)
ggplot(datos, aes(x = Año, y = Promedio)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  labs(
    title = "Tendencia del promedio de usuarios que consumen tabaco",
    x = "Año",
    y = "Promedio de usuarios"
  ) +
  theme_minimal()

datos_2000 <- datos[datos$Año == 2000, 2:9]  
datos_2020 <- datos[datos$Año == 2020, 2:9]
datos_2000 <- na.omit(datos_2000)
datos_2020 <- na.omit(datos_2020)

t_resultado <- t.test(as.numeric(datos_2000), as.numeric(datos_2020), paired = TRUE)
print(t_resultado)  

# Novena tabla -> fallecidos
# Gráfico de líneas por puntos de dispersión de fallecidos.
library(ggplot2)
media_fallecidos <- mean(fallecidos$Número.de.fallecidos)
max_fallecidos <- fallecidos$Año[which.max(fallecidos$Número.de.fallecidos)]
min_fallecidos <- fallecidos$Año[which.min(fallecidos$Número.de.fallecidos)]
ggplot(fallecidos, aes(x = Año, y = Número.de.fallecidos)) +
  geom_point(size = 3, color = "Green") +                  
  geom_line(color = "Green", linewidth = 1) +          
  labs(
    title = "Evolución de Fallecidos por Año",            
    x = "Año",                                            
    y = "Número de Fallecidos"                            
  ) +
  theme_minimal()

# Sexta tabla -> muertes por sobredosis de droga en países europeos.
# Diagrama de barras de las muertes por sobredosis.
library(ggplot2)
ggplot(muertes_por_drogas, aes(x = Parámetro, y = Fallecidos, fill = Parámetro)) +
  geom_bar(stat = "identity", color = "black") +        
  labs(
    title = "Evolución de Fallecidos por Drogas",       
    x = "Países",                                    
    y = "Número de Fallecidos"                          
  ) +
  theme_minimal() + theme(
    axis.text.x = element_text(angle = 90, hjust = 1)
  )

# Segunda tabla -> prevalencia de consumo de otros tipos de drogas
media_prevalencia_alcohol_pre <- mean(prevalencia_consumo$Alcohol, na.rm = TRUE)
desviacion_prevalencia_alcohol_pre <- sd(prevalencia_consumo$Alcohol, na.rm = TRUE)
frec_absoluta_alcohol_pre <- table(prevalencia_consumo$Alcohol)
frec_relativa_alcohol_pre <- prop.table(frec_absoluta_alcohol_pre)

media_prevalencia_tabaco_pre <- mean(prevalencia_consumo$Tabaco, na.rm = TRUE)
desviacion_prevalencia_tabaco_pre <- sd(prevalencia_consumo$Tabaco, na.rm = TRUE)
frec_absoluta_tabaco_pre <- table(prevalencia_consumo$Tabaco)
frec_relativa_tabaco_pre <- prop.table(frec_absoluta_tabaco_pre)

media_prevalencia_cannabis_pre <- mean(prevalencia_consumo$Cannabis)
desviacion_prevalencia_cannabis_pre <- sd(prevalencia_consumo$Cannabis)
frec_absoluta_cannabis_pre <- table(prevalencia_consumo$Cannabis)
frec_relativa_cannabis_pre <- prop.table(frec_absoluta_cannabis_pre)

media_prevalencia_hipnosedantes_pre <- mean(prevalencia_consumo$Hipnosedantes.con.o.sin.receta, na.rm = TRUE)
desviacion_prevalencia_hipnosedantes_pre <- sd(prevalencia_consumo$Hipnosedantes.con.o.sin.receta, na.rm = TRUE)
frec_absoluta_hipnosedantes_pre <- table(prevalencia_consumo$Hipnosedantes.con.o.sin.receta)
frec_relativa_hipnosedantes_pre <- prop.table(frec_absoluta_hipnosedantes_pre)

media_prevalencia_cocaina_pre <- mean(prevalencia_consumo$Cocaína.polvo.y.o.base)
desviacion_prevalencia_cocaina_pre <- sd(prevalencia_consumo$Cocaína.polvo.y.o.base)
frec_absoluta_cocaina_pre <- table(prevalencia_consumo$Cocaína.polvo.y.o.base)
frec_relativa_cocaina_pre <- prop.table(frec_absoluta_cocaina_pre)

media_prevalencia_hipnosedantessin_pre <- mean(prevalencia_consumo$Hipnosedantes.sin.receta, na.rm = TRUE)
desviacion_prevalencia_hipnosedantessin_pre <- sd(prevalencia_consumo$Hipnosedantes.sin.receta, na.rm = TRUE)
frec_absoluta_hipnosedantessin_pre <- table(prevalencia_consumo$Hipnosedantes.sin.receta)
frec_relativa_hipnosedantessin_pre <- prop.table(frec_absoluta_hipnosedantessin_pre)

media_prevalencia_extasis <- mean(prevalencia_consumo$Éxtasis, na.rm = TRUE)
desviacion_prevalencia_extasis <- sd(prevalencia_consumo$Éxtasis, na.rm = TRUE)
frec_absoluta_extasis <- table(prevalencia_consumo$Éxtasis)
frec_relativa_extasis <- prop.table(frec_absoluta_extasis)

media_prevalencia_alucinogenos <- mean(prevalencia_consumo$Alucinógenos, na.rm = TRUE)
desviacion_prevalencia_alucinogenos <- sd(prevalencia_consumo$Alucinógenos, na.rm = TRUE)
frec_absoluta_alucinogenos <- table(prevalencia_consumo$Alucinógenos)
frec_relativa_alucinogenos <- prop.table(frec_absoluta_alucinogenos)

# Quinta tabla -> cánceres relacionados con el tabaco.
# Calcular porcentaje max y min del tipo de cáncer por consumo del tabaco.
valor_max <- max(consecuencias$"%")
nombre_cancer_max <- consecuencias$Parámetro[consecuencias$"%" == valor_max]
cat("El cáncer más común producido por el consumo del tabaco ha sido el de:", nombre_cancer_max, "con un porcentaje de:", valor_max, "% de personas afectadas, ocurrido en el año(s): 2012", "\n")
valor_min <- min(consecuencias$"%")
nombre_cancer_min <- consecuencias$Parámetro[consecuencias$"%" == valor_min]
cat("El cáncer menos común producido por el consumo del tabaco ha sido el de:", nombre_cancer_min, "con un porcentaje de:", valor_min, "% de personas afectadas, ocurrido en el año(s): 2012", "\n")

