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

## **3. Vectores y matrices**

#### **3.1.1 Vectores: Indexación**
## La indexación en R comienza en 1. No 0 como en algunos lenguajes (por ejemplo, Python y JavaScript).
## Podemos usar `[]` para indexar objetos que creamos en R.


#### **3.1.2 Vectores: extraer valores usando operadores lógicos o aritméticos**


#### **3.1.3 Vectores: atributos**


#### **3.1.4 Vectores: numéricos**


#### **3.1.5 Vectores: Operaciones aritméticas**
## Algunos operadores que se pueden aplicar: `+`, `-`, `*`, `/`, `^`, `sum()`, `mean()`, `min()`...


##### **3.1.6 Vectores: lógicos**


##### **3.1.7 Vectores: Caracteres**


#### **3.2 Matrices**

##### **3.2.1 Matrices: Numéricas**



##### **3.2.1 Matrices: Caracteres**



##### **3.2.3 Matrices: Atributos**



##### **3.2.3 Matrices: Indexación**
## Las matrices tienen dos dimensiones `[i,j]`, siendo `i` y `j` la la i-ésima fila y j-ésima la columna respectivamente.


##### **3.2.4 Matrices: reemplazar valores**


### **4. Dataframes**
## Los dataframes son objetos **heterogéneos** de **dos dimensiones**. Es decir, puede almacenar elementos de diferentes tipos (numéricos, caracteres y lógicos al mismo tiempo) y tiene dos dimensiones (filas y columnas).

#### **4.1 Importar dataframe**
## Conjuntos de datos disponibles en la memoria de R
data(package="datasets")

#### **4.2 Atributos un dataframe**


##### **4.2.1 Indexación**


##### **4.2.2 Acceder a las columnas/variables:**


##### **4.2.3 Maneter/remover filas y/o columnas**


#### **4.3 `tibble()` o `data.frame()`**
vignette("tibble")

## **5. Listas**
  
#### **5.1 Generar lista**


#### **5.2 atributos**


#### **5.3 Indexación**


##### **5.3.1 Remover un elemento**


##### **5.3.2 Subset elmentos:**


#### **5.4 Apilar los elementos de una lista:**

