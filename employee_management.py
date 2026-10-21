import mysql.connector
from mysql.connector import Error

def connect_database():
    """Function to connect Python with MySQL Database"""
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",  # <-- Check your password here
            database="CompanyDB"
        )
        return connection
    except Error as e:
        print(f"❌ Database Connection Error: {e}")
        return None

def fetch_and_display_employees():
    """Function to fetch and display all 70 rows from SQL"""
    conn = connect_database()
    if conn is None:
        return

    try:
        cursor = conn.cursor()
        # Explicitly fetching all 4 target data columns
        cursor.execute("SELECT id, name, department, salary FROM employees")
        rows = cursor.fetchall()

        print("\n" + "="*65)
        print(f"{'ID':<6} | {'Employee Name':<18} | {'Department':<15} | {'Salary ($)':<10}")
        print("="*65)

        # Unpacking indices safely to map distinct column outputs
        for row in rows:
            emp_id = row[0]
            name = row[1]
            dept = row[2]
            salary = float(row[3])
            
            print(f"{emp_id:<6} | {name:<18} | {dept:<15} | {salary:<10.2f}")
            
        print("="*65)
        print(f"📊 Total Records Displayed: {len(rows)} Rows successfully fetched!")
        print("="*65)

    except Error as e:
        print(f"❌ Data Fetch Error: {e}")
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

def main():
    """Main menu of the project"""
    while True:
        print("\n╔════════════════════════════════════════╗")
        print("║      EMPLOYEE MANAGEMENT SYSTEM        ║")
        print("╚════════════════════════════════════════╝")
        print("1. View All 70 Employees Details")
        print("2. Exit Project")
        
        choice = input("\nEnter your choice (1 or 2): ")
        
        if choice == '1':
            fetch_and_display_employees()
        elif choice == '2':
            print("\n👋 Exiting Project... Thank you!")
            break
        else:
            print("\n❌ Invalid choice! Please enter 1 or 2.")

if __name__ == "__main__":
    main()
