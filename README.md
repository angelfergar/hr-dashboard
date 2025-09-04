# 👩‍💼 Proyecto de HR Analytics Dashboard
Este proyecto analiza datos de empleados recogidos por un departamento de Recursos Humanos utilizando Python para la extracción, limpieza y carga a BigQuery, donde se da transforman los datos, y Power BI para el análisis avanzado y creación de un reporte con diferentes dashboards interactivos. Todo esto tiene como objetivo obtener métricas que apoyen la toma de decisiones estratégicas en RRHH. 

El flujo de trabajo combina:
* Extración, limpieza y subida de datos a BigQuery usando Python.
* Queries en BigQuery para corregir el formato de los datos y para crear tablas de hechos y dimensiones.
* Creación de métricas y columnas con DAX para calcular KPIs y construir los diversos dashboards finales en Power BI.

---
## 📌 Estructura del Proyecto
```
/hr-analytics-dashboard
│── /data
│   ├── /datamodel
│   │   ├── Demographics.csv
│   │   ├── Employees.csv		
│   │   ├── EmploymentStatus.csv
│   │   ├── Jobs.csv
│   │   ├── Managers.csv
│   │   ├── Performance.csv
│   ├── RawData.csv          
│   ├── data.csv		# Dataset original
│── /notebooks
│   ├── ETL.pynb
│── /reports
│   ├── hr-report.pbix
│   ├── /images
│   │   ├── 
│── /sql-queries
│   ├── data-model.sql       
│   ├── format-columns.sql  
│── README.md
```

---
## 📊 1. Preparación de Datos (Python & BigQuery)
* Desde un notebook en Python, se conecta a este repositorio para obtener el dataset [data.csv](data/data.csv).
* Se realiza limpieza inicial de datos y se crea un dataset y una tabla en BigQuery, donde se sube los datos limpiados.
* Las queries de la carpeta sql-queries incluyen:
	* Corrección de formatos erróneos (fechas, identificadores).  
	* Separación de RawData en tabla de hechos y tablas de dimensiones. 

📌 Esto permite disponer de un modelo de datos limpio y estructurado para análisis posterior en Power BI.

---
## ⚙️ 2. Dashboard en Power BI

El dashboard interactivo se creó en Power BI, usando datos conectados directamente desde BigQuery con:
* Estructuración del modelo de datos
* Creación de métricas y columnas calculadas para generar KPIs útiles para el departamento de Recursos Humanos.

El report completo incluye los siguientes dashboards:
* **Overview Dashboard** → Métricas globales de empleados.
* **Demographics Dashboard** → Género, edad, estado civil, ciudadanía y diversidad.
* **Compensation Dashboard** → Sueldos, proyectos adicionales y equidad salarial.
* **Performance Dashboard** → Performance, satisfacción y engagement.
* **Tenure & Term Dashboard** → Antigüedad, contratacion y causas de salida.
* **Managers Dashboard** → Performance, engagement y salario por Manager.

📷 ### **Dashboard Previews**

🔹 #### Overview Dashboard

url

🔹 #### Demographics Dashboard

url

🔹 #### Compensation Dashboard

url

🔹 #### Performance Dashboard

url

🔹 #### Tenure & Term Dashboard

url

🔹 #### Managers Dashboard

url

---
## 📈 3. Insights Clave del Análisis

---
### Conclusiones Estratégicas

---
## 📥 4. Instalación y Uso

### Descargar el Repositorio

```
git clone https://github.com/angelfergar/hr-analytics-dashboard.git
cd hr-analytics-dashboard
```

### Reproducir el análisis

1. Usar el notebook [/notebooks/ETL.ipynb](/notebooks/ETL.ipynb) para:
   * Descargar el dataset desde GitHub.
   * Limpiar los datos.
   * Subir la tabla RawData a BigQuery.

2. En BigQuery:
   * Ejecutar las queries de `/sql-queries` para dar formato a los datos y crear las tablas limpias y dimensionales.

3. Abrir el archivo Power BI:
   * [/dashboards/hr-report.pbix](/dashboards/hr-report.pbix)
   * Explorar los dashboards interactivos con KPIs de Recursos Humanos.

---
## 📊 5. Resultados Clave

---
## 🤝 6. Contribución

¡Sugerencias y mejoras son bienvenidas! 🚀

📌 Desarrollado por: **Ángel Fernández**

✉️ **Contacto:** anfernagar@gmail.com
