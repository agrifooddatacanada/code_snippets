# Load the lubridate package for date and time manipulation
# Version 1.9.3
library(lubridate)

# Example date and time string with EST timezone
datetime_str <- "2024-02-20T09:30:00-05:00"

# Parse the date and time string, convert to the desired timezone, and store into a POSIXct object
datetime <- lubridate::ymd_hms(datetime_str, tz = "UTC")

# Print the parsed date and time
print(datetime)                  # Expected output: "2024-02-20 14:30:00 UTC"

# You can also parse using a more descriptive timezone format
datetime <- lubridate::ymd_hms(datetime_str, tz = "America/Toronto")
# Expected output: Date in ISO8601 format; converting timezone from UTC to "America/Toronto".

# Print the parsed date and time
print(datetime)                  # Expected output: "2024-02-20 09:30:00 EST"

# Convert the parsed datetime to a different timezone (e.g., Central European Time)
datetime_cet <- lubridate::with_tz(datetime, tz = "CET")
print(datetime_cet)              # Expected output: "2024-02-20 15:30:00 CET"

# Extract components of the datetime (e.g., year, month, day, hour, minute, second)
year <- lubridate::year(datetime)
month <- lubridate::month(datetime)
day <- lubridate::day(datetime)
hour <- lubridate::hour(datetime)
minute <- lubridate::minute(datetime)
second <- lubridate::second(datetime)

# Print the extracted components
print(paste("Year:", year))      # Expected output: "Year: 2024"
print(paste("Month:", month))    # Expected output: "Month: 2"
print(paste("Day:", day))        # Expected output: "Day: 20"
print(paste("Hour:", hour))      # Expected output: "Hour: 9"
print(paste("Minute:", minute))  # Expected output: "Minute: 30"
print(paste("Second:", second))  # Expected output: "Second: 0"

# Perform arithmetic operations with the datetime (e.g., add 1 day)
datetime_plus_one_day <- datetime + lubridate::days(1)
print(datetime_plus_one_day)     # Expected output: "2024-02-21 09:30:00 EST"