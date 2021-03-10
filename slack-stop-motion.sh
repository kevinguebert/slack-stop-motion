#!/bin/bash

curl --location --request POST 'https://slack.com/api/users.setPhoto' --form "token=xoxp-370653054258-370790362501-1837596945029-5f8a6af680e940937ccec58d561e98e8" --form 'image=@"./images/image-1.jpg"'