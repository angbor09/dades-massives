dades <- baixa


library(ggplot2)

datos <- table(dades$date_inscribed)
datos <- as.data.frame(datos)
datos$Var1 <- as.numeric(as.character(datos$Var1))

ggplot(datos, aes(x = Var1, y = Freq)) +
  geom_line() +
  geom_point() +
  labs(title = "Evolució de les declaracions de Patrimoni Mundial",
    x = "Any de declaració",
    y = "Número de declaraciones") +
  theme_minimal()


datos <- table(dades$date_inscribed, dades$category)
datos <- as.data.frame(datos)
datos$Var1 <- as.numeric(as.character(datos$Var1))


ggplot(datos, aes(x = Var1, y = Freq, color = Var2)) +
  geom_line(linewidth = 1) +
  geom_point(size = 1.5) +
  labs(title = "Evolución de las declaraciones de Patrimonio Mundial",
    x = "Año de declaración",
    y = "Número de declaraciones",
    color = "Tipo de patrimonio") +
  theme_minimal()
