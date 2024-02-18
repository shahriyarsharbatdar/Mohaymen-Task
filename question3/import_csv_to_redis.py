import csv
import redis

# Connect to Redis
r = redis.Redis(host='localhost', port=6379, db=0)

# Path to your CSV file
csv_file = '/Users/shahriyarsharbatdar/Downloads/task/Cities/CountryCode-City.csv'

# Function to import data from CSV to Redis
def import_csv_to_redis(csv_file):
    with open(csv_file, 'r') as file:
        reader = csv.DictReader(file)
        for row in reader:
            country_code = row['countyCode']
            city = row['city']
            r.sadd(country_code, city)

if __name__ == "__main__":
    import_csv_to_redis(csv_file)
    print("CSV data imported to Redis successfully.")

