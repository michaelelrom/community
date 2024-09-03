import requests
import sys

def get_weather(zip_code):
    base_url = f"http://wttr.in/{zip_code}"
    params = {
        "format": "3"  # Simplified output: location, temperature, and condition
    }

    response = requests.get(base_url, params=params)

    if response.status_code == 200:
        print(response.text.strip())
    else:
        print("Failed to retrieve weather information.")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        zip_code = sys.argv[1]
    else:
        zip_code = input("Enter zip code: ")

    get_weather(zip_code)
