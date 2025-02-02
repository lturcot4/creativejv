
### 💡 Lab Name: Introduction to Cloud Dataproc: Hadoop and Spark on Google Cloud

### 🚀 Lab Solution 

---

### ⚠️ Disclaimer
- **This script and guide are provided for  the educational purposes to help you understand the lab services and boost your career. Before using the script, please open and review it to familiarize yourself with Google Cloud services. Ensure that you follow 'Qwiklabs' terms of service and YouTube’s community guidelines. The goal is to enhance your learning experience, not to bypass it.**

### ©Credit
- **DM for credit or removal request (no copyright intended) ©All rights and credits for the original content belong to Google Cloud [Google Cloud Skill Boost website](https://www.cloudskillsboost.google/)** 🙏

---
### 🚨 PLEASE SUBSCRIBE CREATIVE JV



---

### Code 1 [CREATE DATAPROC CLUSTER]:

```
# Prompt user for input
echo "Enter the region:"
read REGION
echo "Enter the zone:"
read ZONE
echo "Enter the project ID:"
read PROJECT_ID

# Create Dataproc cluster
gcloud dataproc clusters create qlab \
  --enable-component-gateway \
  --region $REGION \
  --zone $ZONE \
  --master-machine-type e2-standard-4 \
  --master-boot-disk-type pd-balanced \
  --master-boot-disk-size 100 \
  --num-workers 2 \
  --worker-machine-type e2-standard-2 \
  --worker-boot-disk-size 100 \
  --image-version 2.2-debian12 \
  --project $PROJECT_ID

```

---
### Code 1 will take upto 4 minutes...
### Code 2 [SUBMIT SPARK JOB]

```
# Prompt user for input
echo "Enter the region:"
read REGION

# Submit Spark job to the cluster
gcloud dataproc jobs submit spark \
  --region $REGION \
  --cluster qlab \
  --class org.apache.spark.examples.SparkPi \
  --jars file:///usr/lib/spark/examples/jars/spark-examples.jar \
  -- 1000


```

---

### Congratulations, you're all done with the lab 😄

---


---
