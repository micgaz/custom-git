# Tworzenie usera
echo "Creating user accounts..."

# Definicja konta i hasla
users=("user1" "user2" "user3")
passwords=("password1" "password2" "password3")

# Iteracja uzytkownika poza tablicowa
for ((i=0; i<${#users[@]}; i++)); do
    username="${users[$i]}"
    password="${passwords[$i]}"

    # Sprawdzenie czy uzytkownik istnieje
    if id "$username" &>/dev/null; then
        echo "User $username already exists. Skipping..."
    else
        # Tworzenie konta
        sudo useradd -m -s /bin/bash "$username"
        echo "$username:$password" | sudo chpasswd

        # Komunikat utworzenia konta
        echo "User account $username created."
    fi
done
