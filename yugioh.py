import csv
import json

csv_file = open('cards-2.csv', 'r')

csv_reader = csv.reader(csv_file)

field_names = next(csv_reader)

data = []
for row in csv_reader:
    data.append(dict(zip(field_names, row)))

json_data = json.dumps(data)

json_file = open('file.json', 'w')
json_file.write(json_data)

csv_file.close()
json_file.close()