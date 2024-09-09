import pandas as pd
from sqlalchemy import create_engine

# Read the CSV file into a DataFrame
df = pd.read_csv('your_csv_file.csv')

# Create a SQLAlchemy engine
engine = create_engine('mssql+pyodbc://your_user:your_password@your_server/your_db')

# Write the DataFrame to the SQL Server table
df.to_sql('YourTable', con=engine, if_exists='append', index=False)
