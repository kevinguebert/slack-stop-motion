#!/bin/bash

hour=$(date +%H)
minute=$(date +%M)
echo $hour
echo $minute
img="image-11.jpg"

case $hour in
7)
  if [minute -lt 30]; then
    img="image-10.jpg"
  else
    img="image-9.jpg"
  fi
  ;;
8)
  if [minute -lt 30]; then
    img="image-8.jpg"
  else
    img="image-7.jpg"
  fi
  ;;
9)
  if [minute -lt 30]; then
    img="image-6.jpg"
  else
    img="image-5.jpg"
  fi
  ;;
10)
  if [minute -lt 30]; then
    img="image-4.jpg"
  else
    img="image-3.jpg"
  fi
  ;;
11)
  if [minute -lt 30]; then
    img="image-2.jpg"
  else
    img="image-1.jpg"
  fi
  ;;
12)
  if [minute -lt 30]; then
    img="image-0.jpg"
  else
    img="image-1.jpg"
  fi
  ;;
13)
  if [minute -lt 30]; then
    img="image-2.jpg"
  else
    img="image-3.jpg"
  fi
  ;;
14)
  if [minute -lt 30]; then
    img="image-4.jpg"
  else
    img="image-5.jpg"
  fi
  ;;
15)
  if [minute -lt 30]; then
    img="image-6.jpg"
  else
    img="image-7.jpg"
  fi
  ;;
16)
  if [minute -lt 30]; then
    img="image-8.jpg"
  else
    img="image-9.jpg"
  fi
  ;;
17)
  if [minute -lt 30]; then
    img="image-10.jpg"
  else
    img="image-11.jpg"
  fi
  ;;
esac
img="./images/${img}"

curl --location --request POST 'https://slack.com/api/users.setPhoto' --form "token=${TOKEN}" --form "image=@${img}"
