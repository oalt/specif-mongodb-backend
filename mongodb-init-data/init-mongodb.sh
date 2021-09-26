#!/bin/sh
mongoimport --host=localhost --port=27017 --db=specifAdmin --collection=applicationusers --file=/mongodb_specif_data/specifAdmin-users.json
mongoimport --host=localhost --port=27017 --db=specifAdmin --collection=applicationroles --file=/mongodb_specif_data/specifAdmin-roles.json
mongoimport --host=localhost --port=27017 --db=specif --collection=datatypes --file=/mongodb_specif_data/specif-datatypes.json
mongoimport --host=localhost --port=27017 --db=specif --collection=propertyclasses --file=/mongodb_specif_data/specif-propertyclasses.json
mongoimport --host=localhost --port=27017 --db=specif --collection=resourceclasses --file=/mongodb_specif_data/specif-resourceclasses.json
mongoimport --host=localhost --port=27017 --db=specif --collection=statementclasses --file=/mongodb_specif_data/specif-statementclasses.json
mongoimport --host=localhost --port=27017 --db=specif --collection=projectdescriptors --file=/mongodb_specif_data/specif-projectdescriptors.json