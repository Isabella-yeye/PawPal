import mysql.connector

conn = mysql.connector.connect(
    host='localhost',
    user='root',       
    password='DBPawPal2025',   
    database='PawPal'    
)

cursor = conn.cursor()

# Example: Get completed appointments with pet and sitter names
query = """
SELECT 
    Pet.Name AS PetName,
    Sitter.Name AS SitterName,
    SittingAppointment.Status
FROM SittingAppointment
JOIN Pet ON SittingAppointment.PetID = Pet.PetID
JOIN Sitter ON SittingAppointment.SitterID = Sitter.SitterID
WHERE SittingAppointment.Status = 'Completed';
"""

cursor.execute(query)
results = cursor.fetchall()

print("Completed Appointments:")
for row in results:
    print(f"Pet: {row[0]}, Sitter: {row[1]}, Status: {row[2]}")

cursor.close()
conn.close()
