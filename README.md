# Rental-Management-System [DBMS]  

## Implementation Environment

### FrontEnd

- In this Project, the frontend part is done by using the famous Python library streamlit.

-  Streamlit is an open-source app framework in Python language. It helps us create web apps for data science and machine learning in a short time. It is compatible with major Python libraries such as sci-kit-learn, Keras, PyTorch, SymPy(latex), NumPy, pandas, Matplotlib, etc.

- We can Perform operations such as Create, Read, Delete, Update aslso known as [CRUD] Operations.

- Here the app can able to  tenants,owners  store payments associated with CRUD operations

### Backend

- In Backend creation of table and table population is done in MySQL 
- It also uses libraries such as Pandas, sql connector, Streamlit 
- It is mostly done Using Python Language. 

## Project File Structure 

### In Projets folder the following files are present 
* create_database.py --> This file is used to Create database Ptrolpump_Management  
* app.py --> This is the main file you need to run after creation of the databases. It has codes for GUI part.
*  databases.py --> This file has all the important function calls
* create.py --> It creates new table rows when you want to add new data.
* delete.py --> It has delete function implementation used for deleting any specific row in table.
* read.py --> It read data from table and send it to view function to display.
* update.py -->  It updates the data in the table.

## How TO RUN 
- First create databases using Create_database.py
- Install all the librarys
- run app.py file using command: "Python -m streamlit run app.py"
