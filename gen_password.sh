#!bin/bash


CHARSET="[:alnum:]"

PASSWORD_LENGTH=15

generate_password() {
  PASSWORD=$(head /dev/urandom | tr -dc "$CHARSET" | head -c "$PASSWORD_LENGTH")
  echo "$PASSWORD"
}


for i in {1..4}
do
  password=$(generate_password)
  echo "Password $i: $password"
done

