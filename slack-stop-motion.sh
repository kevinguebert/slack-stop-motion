#!/bin/bash

hour=$(TZ=":America/New_York" date +%H)
minute=$(TZ=":America/New_York" date +%M)
img="0700.jpg"

case $hour in
7)
  if [$minute -lt 20]; then
    img="0700.jpg"
  elif [$minute -lt 40]; then
    img="0720.jpg"
  else
    img="0740.jpg"
  fi
  ;;
8)
  if [$minute -lt 20]; then
    img="0800.jpg"
  elif [$minute -lt 40]; then
    img="0820.jpg"
  else
    img="0840.jpg"
  fi
  ;;
9)
  if [$minute -lt 30]; then
    img="0900.jpg"
  elif [$minute -lt 40]; then
    img="0920.jpg"
  else
    img="0940.jpg"
  fi
  ;;
10)
  if [$minute -lt 30]; then
    img="1000.jpg"
  elif [$minute -lt 40]; then
    img="1020.jpg"
  else
    img="1040.jpg"
  fi
  ;;
11)
  if [$minute -lt 30]; then
    img="1100.jpg"
  elif [$minute -lt 40]; then
    img="1120.jpg"
  else
    img="1140.jpg"
  fi
  ;;
12)
  if [$minute -lt 30]; then
    img="1200.jpg"
  elif [$minute -lt 40]; then
    img="1220.jpg"
  else
    img="1240.jpg"
  fi
  ;;
13)
  if [$minute -lt 30]; then
    img="1300.jpg"
  elif [$minute -lt 40]; then
    img="1320.jpg"
  else
    img="1340.jpg"
  fi
  ;;
14)
  if [$minute -lt 30]; then
    img="1400.jpg"
  elif [$minute -lt 40]; then
    img="1420.jpg"
  else
    img="1440.jpg"
  fi
  ;;
15)
  if [$minute -lt 30]; then
    img="1500.jpg"
  elif [$minute -lt 40]; then
    img="1520.jpg"
  else
    img="1540.jpg"
  fi
  ;;
16)
  if [$minute -lt 30]; then
    img="1600.jpg"
  elif [$minute -lt 40]; then
    img="1620.jpg"
  else
    img="1640.jpg"
  fi
  ;;
17)
  if [$minute -lt 30]; then
    img="1700.jpg"
  elif [$minute -lt 40]; then
    img="1720.jpg"
  else
    img="1740.jpg"
  fi
  ;;
esac
img="./images/${img}"

curl --location --request POST 'https://slack.com/api/users.setPhoto' --form "token=xoxp-370653054258-370790362501-1895236358724-05003b7eec44cc8d302c7d393e71f4d5" --form "image=@${img}"
