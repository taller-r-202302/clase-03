## Eduard Martinez
## Update: 22/08/2023
## R version 4.2.3 (2023-03-15)

## configuracion inicial
rm(list = ls())            # limpia el entorno de R
install.packages("pacman") # Instalar las libreria
require("pacman")          # Llamar las librerias

## usar la función p_load de pacman para instalar/llamar las librerías de la clase
p_load(dplyr,
       tidyr,
       tibble,
       data.table) 


## **2.Tipos de datos**

#### **2.1 Numérico y texto**

# Numericos
is.numeric(10)

# Las cadenas de caracteres se escriben entre " " o entre ''
is.character("Hola")

is.numeric("10")

#### **2.2 Lógicos**

# Lógicos (TRUE,FALSE,NA,NULL)
is(TRUE)

is(Inf)

is(NULL)

## **3. Vectores y matrices**

#### **3.1.1 Vectores: Indexación**

a = c(10 , 20 , 30 , 40 , 50 , 60)

a[4] # obtener el cuarto elemento del objeto "a"

a[2:3] # maneter elementos de la posición 2 a la 3

a[-3] # eliminar el tercer elemento


#### **3.1.2 Vectores: extraer valores**

x = c(NA,1,2,3,4,5,NA)

x[!is.na(x)] # Diferentes de NA

x[x>3] # Mayores a 3 (Ojo con los NA)

x[x %in% 1:3] # Contenidos en 1 a 3


#### **3.1.3 Vectores: atributos**

length(x) # largo del vector
class(x) # clase
str(x) # estructura del dato
object.size(x) # tamaño


#### **3.1.4 Vectores: numéricos**
x <- c(1 , 2 , 3 , 4 , 5)
is.numeric(x)
x = 1:5
x
x1 = seq(-5, 5, by=2)
x1
x2 <- rep(x, times=5)
x2
x3 <- rep(x, each=5)
x3


#### **3.1.5 Vectores: Operaciones aritméticas**

sum(x) ; length(x) ; prod(x) ; mean(x)

##### **3.1.6 Vectores: lógicos**

logi = c(TRUE,NA,FALSE,NULL)
logi

# aplicar un operador
logi = 1:5 >= 3
logi

x = c(1:3,NA,0/0,NULL,Inf,-Inf)
x
is.na(x)
is(0/0)


##### **3.1.7 Vectores: Caracteres**

x = c("Hola-","Mundo-","10-")
x

y = paste(x, 1:5, sep = "")
y


#### **3.2 Matrices**

##### **3.2.1 Matrices: Numéricas**


x = matrix(data = 1:9 , nrow=3 , ncol=3)
x


##### **3.2.1 Matrices: Caracteres**


y = matrix(data = c("hola","mundo") , nrow=2 , ncol=2)
y


##### **3.2.3 Matrices: Atributos**


attributes(x) # atributos
class(x) # clase
str(x) # tipo de dato


##### **3.2.3 Matrices: Indexación**


x[1,] # Obtener la fila 1
x[,3] # Obtener la columna 3
x[2,2] # Obtener elemento de la fila y columna 2


##### **3.2.4 Matrices: reemplazar valores**

x[x<4] = NA
x

## **4. Dataframes**

#### **4.1 Importar dataframe**

data(package="datasets")

df = as.data.frame(mtcars) 
df

#### **4.2 Atributos un dataframe**

colnames(df) # acceder a los nombres de las variables/columnas
attributes(df) # Ver atributos

dim(df) # dimensiones
str(df) # Estructura

##### **4.2.1 Indexación**

df[1,] # Obtener la fila 1
df[,3] # Obtener la columna 3
df[2,2] # Obtener elemento de la fila y columa 2

##### **4.2.2 Acceder a las columnas/variables:**

df$wt
df[,1]

##### **4.2.3 Maneter/remover filas y/o columnas**

df[1,] # Obtener primera fila
df[1:3,1:4] # Obtener las primeras 4 filas/columnas

x = df[-1:-10,] # Remover primeras 10 filas
x


#### **4.3 `tibble()` o `data.frame()`**

vignette("tibble")

## Tibbles

## Tibbles vs data frames

tb = tibble::as_tibble(df)
class(tb)
tb

## **5. Listas**

#### **5.1 Generar lista**

lista = list("tibble_1"=tb[1:5,],"tibble_2"=tb[6:10,]) # Asignar nombre a cada posición dentro de la lista
lista[[3]] = tb[11:nrow(tb),] # Almacenar en la tercera posición
lista

#### **5.2 atributos**
length(lista) # dimensiones
names(lista) # nombres de los elementos
names(lista)[3] = "tibble_3" # Asignar nombre al elemento 3
attributes(lista) # Ver atributos

#### **5.3 Indexación**
lista[[4]] = letters
head(lista)  

##### **5.3.1 Remover un elemento**

lista = lista[-4]
head(lista)

##### **5.3.2 Subset elmentos:**

lista[[1]] # usando la posición del elemento
lista[[1]][,"mpg"] # dentro del objeto
lista[["tibble_1"]] # Usando el nombre del elemento


#### **5.4 Apilar los elementos de una lista:**
tbl = data.table::rbindlist(l = lista , use.names = T)
head(tbl)
class(tbl)
