import json
import yaml

f = open('../playbooks/cv_output.json', 'r')
old_file = f.read()
cv_dict = json.loads(old_file)
yaml_dict = yaml.dump(cv_dict)
new_file = open('cv_data.yml', 'w')
new_file.write(yaml_dict)
new_file.close()