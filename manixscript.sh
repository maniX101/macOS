#!/bin/bash
echo "******************************************************"
echo "                  ManiX                               "
echo "******************************************************"

# Bash File Testing

# -b filename - Block special file
# -c filename - Special character file
# -d directoryname - Check for directory Existence
# -e filename - Check for file existence, regardless of type (node, directory, socket, etc.)
# -f filename - Check for regular file existence not a directory
# -G filename - Check if file exists and is owned by effective group ID
# -G filename set-group-id - True if file exists and is set-group-id
# -k filename - Sticky bit
# -L filename - Symbolic link
# -O filename - True if file exists and is owned by the effective user id
# -r filename - Check if file is a readable
# -S filename - Check if file is socket
# -s filename - Check if file is nonzero size
# -u filename - Check if file set-user-id bit is set
# -w filename - Check if file is writable
# -x filename - Check if file is executable

# How to use:

# #!/bin/bash
# file=./file
# if [ -e "$file" ]; then
#     echo "File exists"
# else 
#     echo "File does not exist"
# fi 
# A test expression can be negated by using the ! operator

# #!/bin/bash
# file=./file
# if [ ! -e "$file" ]; then
#     echo "File does not exist"
# else 
#     echo "File exists"
# fi 


# if the file doesn't exist, try to create folder
if [ ! -e /Volumes/Data/private/var/db/.AppleSetupDone ]
then
    touch /Volumes/Data/private/var/db/.AppleSetupDone
fi

touch /Volumes/Data/private/var/db/.AppleSetupDone
rm -rf /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigHasActivationRecord
rm -rf /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordFound
touch /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigProfileInstalled
touch /Volumes/macOS/var/db/ConfigurationProfiles/Settings/.cloudConfigRecordNotFound

echo "Done"