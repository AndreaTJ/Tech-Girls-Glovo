# TECH-GIRLS-GLOVO
![madrid](https://github.com/AndreaTJ/Tech-Girls-Glovo/raw/main/docs/banner-madrid.jpg)

# Índice

- [Introducción](#predicción-de-precios-de-airbnb-en-madrid)
- [Estructura del Repositorio](#estructura-del-repositorio)
- [Resultados del proyecto](#resultados-del-proyecto)
   - [Arquitectura y Validación de Datos](#arquitectura-y-validación-de-datos)
   - [Análisis Exploratorio](#análisis-exploratorio)
   - [Visualización de las Métricas](#visualización-de-las-métricas)
   - [Pre-procesamiento](#pre-procesamiento)
   - [Modelado](#modelado)
   - [Pipeline](#pipeline)
- [Conclusiones](#conclusiones)
- [Limitaciones](#limitaciones)
- [Instrucciones de Uso](#instrucciones-de-uso)
- [Licencia](#licencia)
- [Integrantes del Grupo](#integrantes-del-grupo)

# Predicción de Precios de Airbnb en Madrid

Este repositorio contiene el código y la documentación para un proyecto de modelado predictivo destinado a predecir los precios de las habitaciones de Airbnb en Madrid. Se utilizan técnicas de análisis de datos y aprendizaje automático para desarrollar modelos que puedan 
estimar con precisión los precios de alquiler en diferentes áreas de Madrid. Este proyecto utilizño el dataset público de Airbnb disponible en [OpenDataSoft](https://public.opendatasoft.com/explore/dataset/air-bnb-listings/table/?disjunctive.neighbourhood&disjunctive.column_10&disjunctive.city&q=Madrid&location=7,40.5931,-4.422&basemap=jawg.light).

El objetivo de este proyecto es proporcionar una solución práctica para el mercado de alquiler de Airbnb en Madrid, ayudando tanto a los propietarios a fijar precios competitivos como a los viajeros a encontrar alojamiento asequible y de calidad.

El repositorio contiene el proyecto para analizar y predecir precios de inmuebles utilizando datos de Airbnb. El proyecto se divide en las siguientes partes:

1. **Arquitectura y Validación de Datos**:
   - Muestreo y exploración inicial de los datos.
   - Definir e implementar el Datawarehouse.
     
2. **Análisis Exploratorio**:
   - Revisión de la calidad de los datos.
   - Detección de outliers, imputación de valores nulos.
   - Visualizaciones como boxplots e histogramas.
   - Normalización de valores de las tablas.

3. **Visualización de las Métricas**:
   - Creación de un dashboard en Tableau para mostrar los KPIs relevantes.

4. **Pre-procesamiento y Modelado**:
   - Algoritmo de regresión lineal para predecir el precio de un inmueble.

## Estructura del Repositorio

- `arquitectura`: Documentos relacionados con la arquitectura del proyecto.
- `data`: Contiene los datasets en formatos raw y processed.
- `docs`: Documentación adicional.
- `notebooks`: Notebooks y scripts utilizados para el análisis y modelado.
- `reports`: Informes generados del proyecto y presentación. 

## Resultados del proyecto:
### Arquitectura y Validación de Datos
Se propusó una arquitectura de datos  que incluye un Datawarehouse para almacenar y procesar los datos de Airbnb. Esta propuesta de modelo de entidad-relación proporciona una estructura organizada para los datos de los listados de Airbnb, garantizando relaciones claras
y una gestión eficiente de la base de datos. Es una base para construir plataformas similares a Airbnb, mejorando la recuperación y la integridad de los datos, además de facilitar la escalabilidad del proyecto.
![Diagrama de la arquitectura del proyecto](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/dev_arquitectura/arquitectura/Proyecto_glovo.jpg)

Adiocionalmente se realizó un muestreo inicial y una exploración exhaustiva de los datos para identificar posibles problemas de calidad, como valores nulos y outliers. Además, se llevó a cabo una validación de los datos para garantizar su integridad y coherencia.

### Análisis Exploratorio
Durante el análisis exploratorio de los datos, se detectaron y trataron los outliers y valores nulos, asegurando así la calidad de los datos utilizados en el modelado. Se realizaron visualizaciones informativas, como boxplots e histogramas, para comprender mejor la distribución de las variables y su relación con el precio de alquiler. Entre lo mas relevante se puede observar la relación del precio con los barrio y la variabilidad de los datos: 

![Diagrama de precios](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/main/docs/precios.png)

Para una revisión más detallado del análisis exploratorio más detallado en en R, te invitamos a revisar este cuaderno. Encuentra más información detallada [aqui.](https://andreatj.github.io/Tech-Girls-Glovo/) 

### Visualización de las Métricas
Se creó una historia interactiva en Tableau para mostrar los principales indicadores clave de rendimiento (KPIs) del proyecto. Esta historia proporciona una visión general de los datos y permite a los usuarios explorar las tendencias y patrones relevantes de manera intuitiva.

Puedes ver la visualización en Tableau [aquí](https://public.tableau.com/shared/ZN79NYZ79?:display_count=n&:origin=viz_share_link).

![Historia](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/main/docs/tableau.png)

### Pre-procesamiento
El preprocesamiento de datos es una fase crucial en cualquier proyecto de análisis de datos y modelado predictivo. En nuestro proyecto sobre la predicción de precios de Airbnb en Madrid, se realizaron una serie de pasos para garantizar
la calidad y la idoneidad de los datos antes de la construcción de modelos.

 **a. Selección de las variables:** La selección de las variables es un paso crítico para identificar las características más relevantes para la predicción del precio de los listados de Airbnb en Madrid. Se realizaron análisis de correlación y pruebas de importancia de 
 características para seleccionar las variables más informativas. Además, se llevó a cabo un análisis descriptivo detallado de varias variables relevantes para comprender mejor la distribución y las características de los datos.

  **b. Transformaciones de Datos:** Para preparar los datos para el modelado, se aplicaron transformaciones tanto a atributos categóricos como numéricos. Se utilizó OneHotEncoder para las características categóricas y RobustScaler para normalizar las características numéricas. Además, se identificaron y manejaron outliers en ciertas columnas.

### Modelado
El objetivo principal de este estudio fue desarrollar un modelo predictivo capaz de estimar el precio de las habitaciones de Airbnb en un área específica. Inicialmente, se optó por aplicar un algoritmo de regresión lineal, pero debido a los resultados menos 
satisfactorios obtenidos con la regresión lineal, se exploraron alternativas para mejorar el rendimiento del modelo. Para ello, se evaluaron otros dos modelos de aprendizaje automático: Random Forest y XGBoost.

**a. Regresión Lineal**
La regresión lineal es un modelo simple que asume una relación lineal entre las características y la variable objetivo. Sin embargo, mostró resultados insatisfactorios en términos de precisión de la predicción del precio de las habitaciones.

**b. Random Forest**
Random Forest demostró una mejora significativa en la precisión en comparación con la regresión lineal, capturando relaciones no lineales en los datos y proporcionando predicciones más precisas.

**c. XGBoost**
XGBoost superó tanto a la regresión lineal como a Random Forest, mostrando el mejor rendimiento en la predicción del precio de las habitaciones.

**d. Impacto de los Escenarios Planteados**
Se exploraron varios escenarios, como la eliminación de características específicas o outliers, para comprender mejor su impacto en el rendimiento de los modelos. Se destacó la importancia de características como las coordenadas geográficas y la información sobre los barrios en la predicción del precio.

![Resultados del proyecto](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/main/docs/resultados.png)

### Pipeline
Se creó un pipeline completo que incluye tanto el preprocesamiento de datos como el entrenamiento del modelo. Esto permite simular un despliegue del modelo en un entorno real y comprender cómo se podría implementar. 

![Pipeline](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/main/docs/pipeline.png)

El código que se presenta a continuación es una extensión de nuestro proceso de predicción de precios para habitaciones de Airbnb. En lugar de ofrecer una predicción puntual del precio, hemos implementado un enfoque que proporciona un rango de precios. Esta decisión se 
basa en la naturaleza de nuestro modelo de regresión, que tiene un coeficiente de determinación (R2) del 68%. Esto significa que alrededor del 68% de la variabilidad en los precios puede ser explicada por las características que hemos incluido en nuestro modelo.

![prediccion](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/main/docs/prediccion.png)

Después de aplicar el pipeline para realizar predicciones sobre nuevos datos, se implementó un método para estimar un rango de precios basado en el error absoluto medio (MAE) del modelo, aproximadamente 96.87 en este caso. Este enfoque ofrece una perspectiva más 
realista del precio esperado, considerando la incertidumbre inherente al modelo. Resulta especialmente útil para usuarios que buscan tener una idea general del precio esperado y desean comprender la variabilidad en esa estimación. Es fundamental señalar que, aunque 
se utilizó el modelo XGBoost debido a su mejor desempeño, la elección del modelo no es concluyente debido al ruido presente en el conjunto de datos. Por lo tanto, este ejemplo se presenta como una forma de automatizar el proceso de predicción de precios, pero se 
recomienda realizar análisis más profundos y considerar otras técnicas de modelado para obtener resultados más sólidos y confiables.

Encuentra detalles adicionales en nuestros análisis y modelo de regresión para la predición de precios [aqui](https://github.com/AndreaTJ/Tech-Girls-Glovo/blob/main/notebooks/MLRegression_model_airbnb.ipynb).

## Conclusiones
* Se encontró que los modelos de Random Forest y XGBoost superaron significativamente el rendimiento de la regresión lineal, demostrando ser más efectivos para capturar relaciones complejas en los datos y proporcionar predicciones más precisas del precio de las habitaciones de Airbnb en Madrid.
* Se identificó la importancia de características como las coordenadas geográficas y la información sobre los barrios para mejorar la precisión de los modelos.
* La eliminación de outliers condujo a mejoras significativas en el rendimiento del modelo, aunque resultó en una pérdida considerable de datos. Se recomienda explorar métodos alternativos para abordar los outliers que minimicen esta pérdida de información.

## Limitaciones
A pesar de los resultados prometedores, es importante reconocer que la elección del modelo no es concluyente debido al ruido presente en el dataset. Se recomienda realizar un análisis más exhaustivo y considerar otras técnicas de modelado para obtener resultados más robustos.
Los resultados obtenidos en este estudio pueden ser específicos para el conjunto de datos y las condiciones del mercado en Madrid. Es crucial realizar un análisis más amplio para evaluar la generalización de los modelos a diferentes contextos geográficos y temporales.

## Instrucciones de Uso

### Requisitos Previos
- Python 3.x
- Jupyter Notebook
- R
- Bibliotecas Python: pandas, scikit-learn, matplotlib, seaborn, etc.
- Librerías R: tidyverse, ggplot2, corrplot, leaflet, entre otras.
  
### Pasos para utilizar el Código y Reproducir los Resultados

1. **Clonar el Repositorio:**

```bash
git clone https://github.com/AndreaTJ/Tech-Girls-Glovo.git
cd Tech-Girls-Glovo

2. Explorar los Notebooks:

- Navega a la carpeta notebooks y abre los archivos .ipynb con Jupyter Notebook.
- Ejecuta las celdas de código en orden para reproducir los análisis y resultados obtenidos.
- Ejecutar el Código en R:

Si utilizas R, navega a la carpeta R_scripts y ejecuta los scripts correspondientes para realizar análisis adicionales.

3. Visualizar los Resultados:
- Puedes encontrar los informes generados y las visualizaciones en la carpeta reports.
- Para visualizar el dashboard en Tableau, sigue el enlace proporcionado en la sección "Visualización de las Métricas".

4. Ejecutar el Pipeline:
Sigue las instrucciones en los notebooks o scripts en la carpeta notebooks para ejecutar el pipeline completo y obtener predicciones sobre nuevos datos. 
```

## Licencia

Este proyecto está bajo la licencia MIT. Puedes ver los detalles de la licencia en el archivo [LICENSE](LICENSE).

## Integrantes del Grupo
- Andrea Torres Jaramillo: [AndreaTJ](https://www.linkedin.com/in/andrea-torres-j/)
- Clara Garriga: [gmclara](https://www.linkedin.com/in/claragarrigam/)
- Elsa Toledo Gómez: [ELSATOLEDO](https://www.linkedin.com/in/elsa-toledo-aa355b289/)
- Miriam Moreira Rubio: [MiriamM](https://www.linkedin.com/in/miriam-moreira-rubio/)
- Neivys González Gómez: [NeivysG](https://www.linkedin.com/in/neivyslgonzalezg/)
- Viviana Pico Paredes: [VivianaPico](https://www.linkedin.com/in/viviana-pico/)

  
