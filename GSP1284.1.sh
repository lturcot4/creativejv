#TASK 2


#!/bin/bash

read -p "Enter the service account ID (e.g., your-service-account@project-id.iam.gserviceaccount.com): " SERVICE_ACCOUNT_ID

TOPIC_NAME="recapture_customer"

gcloud pubsub topics add-iam-policy-binding $TOPIC_NAME \
--member="serviceAccount:$SERVICE_ACCOUNT_ID" \
--role="roles/pubsub.viewer"

gcloud pubsub topics add-iam-policy-binding $TOPIC_NAME \
--member="serviceAccount:$SERVICE_ACCOUNT_ID" \
--role="roles/pubsub.publisher"

echo "Roles 'Pub/Sub Viewer' and 'Pub/Sub Publisher' have been successfully granted to the service account: $SERVICE_ACCOUNT_ID for the topic: $TOPIC_NAME"
