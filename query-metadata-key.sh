#!/bin/bash

# Function to retrieve metadata value for a specific data key
get_metadata_value() {
    data_key=$1

    metadata_value=$(curl -s -H "Metadata: true" "http://169.254.169.254/metadata/instance/$data_key?api-version=2021-12-13")

    echo "Metadata value for $data_key: $metadata_value"
}

# Function to handle user inputs
handle_user_input() {
    while true; do
        # Prompt for data key or exit option
        read -p "Enter the data key (or 'exit' to quit): " input

        # Check if user wants to exit
        if [[ "$input" == "exit" ]]; then
            break
        fi

        # Retrieve and display metadata value for the specified data key
        get_metadata_value "$input"

        echo
    done
}

echo -e "Type the meta-data/meta-data key you are looking for from the below list:\n"
curl -H "Metadata: true" "http://169.254.169.254/metadata/instance?api-version=2021-12-13" | jq -r 'keys[]'
echo -e "\n"

# Call the function to handle user inputs
handle_user_input
