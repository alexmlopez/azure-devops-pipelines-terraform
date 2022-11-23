#! /bin/bash
RESOURCE_GROUP_NAME="terra-devops-rg"   #please enter a name
STORAGE_ACCOUNT_NAME="terra-devops"    #please enter a name

#Create a resource Group
az group create -l useast -n $RESOURCE_GROUP_NAME

#Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g RESOURCE_GROUP_NAME -l useast --sku Standard_LRS

#Create Storage Account blob 
az storage container create --name fstate --account-name $STORAGE_ACCOUNT_NAME

#This script will create Create Blob Storage location for Terraform State file
#Don't forget to az login :)
