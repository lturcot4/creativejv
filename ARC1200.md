# Arcade Hero: Building Blocks GCS I || ARC1200 ||

### Run the following Commands in CloudShell

```

read -p "Enter bucket name: " BUCKET_NAME
read -p "Enter region: " REGION

gsutil mb -l $REGION gs://$BUCKET_NAME
gsutil acl set private gs://$BUCKET_NAME

echo "Bucket gs://$BUCKET_NAME created in region $REGION and set to private."

```




### Congratulations 🎉 for completing the Lab !

##### *You Have Successfully Demonstrated Your Skills And Determination.*

#### *Well done!*




