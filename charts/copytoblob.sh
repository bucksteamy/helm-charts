#!/bin/bash
# A simple Azure Storage example script

export AZURE_STORAGE_ACCOUNT=njechartrepo
export AZURE_STORAGE_ACCESS_KEY=9NH/dzzKNdQo6CDWEISl/9k873jM17UvQTy1brgxKX4hT0u1c0QjwTXxdBzLB212cm7WUemaduh0Hav32vLsyQ==

export container_name=charts
export blob_name=routes
export file_to_upload=routes.tar.gz
# export destination_file=<destination_file>

export chart_folder=routes

echo "Zipping up chart..."
tar -czvf $file_to_upload $chart_folder 

# echo "Creating the container..."
# az storage container create --name $container_name

echo "Uploading the file..."
az storage blob upload --container-name $container_name --file $file_to_upload --name $blob_name

# echo "Listing the blobs..."
# az storage blob list --container-name $container_name --output table

# echo "Downloading the file..."
# az storage blob download --container-name $container_name --name $blob_name --file $destination_file --output table



