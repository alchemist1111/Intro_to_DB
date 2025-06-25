import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server
        connection = mysql.connector.connect(
            host = "localhost",
            user = "root",
            password = "SuntonC3@25",
            
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            
            # Sql command to create the database if it does not exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
            cursor.close() # Close the cursor
    except mysql.connector.Error as e:
        print(f"Error: {e}")
    finally:
        if connection.is_connected():
            connection.close() # Close the connection
            print("MySQL connection is closed") 


if __name__ == "__main__":
    create_database()