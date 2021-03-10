#!/bin/bash

curl --location --request POST 'https://slack.com/api/users.setPhoto' --form "token=${TOKEN}" --form 'image=@"./images/image-1.jpg"'
