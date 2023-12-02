cd / #Path to UE5 install
# List of target platforms to loop through
TARGET_PLATFORMS=("Windows" "Android" "iOS" "Linux" "Mac" "XboxOne" "PS4")

# Loop through each target platform
for PLATFORM in "${TARGET_PLATFORMS[@]}"; do
  echo "Cooking for platform: $PLATFORM"
  UnrialEditor-cmd.exe "$PROJECT_PATH" -run=cook -filehostip="$FILE_HOST_IP" -targetplatform="$PLATFORM" -cookonthefly
  echo "Cooking for platform $PLATFORM completed."
  echo "---------------------------------------"
done