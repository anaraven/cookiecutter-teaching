#!/bin/bash

yq '.[] |(
     ( select(kind == "scalar") | key + "	" + . ),
     ( select(kind == "seq") | key + "	" + (map( . ) | join(". ")) + "")
     )' description.yml

echo
echo 'Credits	Theory	 Practice	Lab'
yq '.Credits | "	" + .Theory + "	" + .Practice + "	" + .Lab' description.yml
echo
echo 'Compulsory Attendance	Theory	Practice	Lab'
yq '.["Compulsory Attendance"]  | "	" + .Theory  + "	" + .Practice  + "	" + .Lab' description.yml

echo
echo "Work load ECTS table"
yq '.[].[] | key + "	" + .number + "	" + .duration' work-load.yml
echo

echo "Weekly course content"
yq '.[].[] | .theory + "	" + .practice' weekly-topics.yml
echo

