import json

with open("configletDataFile.txt") as json_file:
    data = json.load(json_file)
    for configlet in data["data"]["configlet"]:
        configlet_name = configlet["name"] + ".txt"
        configlet_data = configlet["config"]
        f = open(configlet_name, "w")
        f.write(configlet_data)
        f.close()