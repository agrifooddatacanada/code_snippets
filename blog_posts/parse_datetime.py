from datetime import datetime, timedelta
import pytz

# Example date and time string with EST timezone
datetime_str = "2024-02-20T09:30:00-05:00"

# Parse the date and time string into a datetime object and localize it to UTC timezone
datetime = datetime.fromisoformat(datetime_str).astimezone(pytz.utc)

# Print the parsed date and time
print(datetime)  # Expected output: "2024-02-20 14:30:00+00:00"

# Parse the date and time string into a datetime object and localize it to "America/Toronto" timezone
datetime = datetime.fromisoformat(datetime_str).astimezone(pytz.timezone("America/Toronto"))

# Print the parsed date and time
print(datetime)  # Expected output: "2024-02-20 09:30:00-05:00"

# Convert the parsed datetime to a different timezone (e.g., Central European Time)
datetime_cet = datetime.astimezone(pytz.timezone("CET"))
print(datetime_cet)  # Expected output: "2024-02-20 15:30:00+01:00"

# Extract components of the datetime (e.g., year, month, day, hour, minute, second)
year = datetime.year
month = datetime.month
day = datetime.day
hour = datetime.hour
minute = datetime.minute
second = datetime.second

# Print the extracted components
print("Year:", year)      # Expected output: "Year: 2024"
print("Month:", month)    # Expected output: "Month: 2"
print("Day:", day)        # Expected output: "Day: 20"
print("Hour:", hour)      # Expected output: "Hour: 14"
print("Minute:", minute)  # Expected output: "Minute: 30"
print("Second:", second)  # Expected output: "Second: 0"

# Perform arithmetic operations with the datetime (e.g., add 1 day)
datetime_plus_one_day = datetime + timedelta(days=1)
print(datetime_plus_one_day)  # Expected output: "2024-02-21 14:30:00+00:00"
