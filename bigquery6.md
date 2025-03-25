
### 💡 Lab Name: mini lab : BigQuery : 6

### 🚀 Lab Solution 

---

### ⚠️ Disclaimer
- **This script and guide are provided for  the educational purposes to help you understand the lab services and boost your career. Before using the script, please open and review it to familiarize yourself with Google Cloud services. Ensure that you follow 'Qwiklabs' terms of service and YouTube’s community guidelines. The goal is to enhance your learning experience, not to bypass it.**

### ©Credit
- **DM for credit or removal request (no copyright intended) ©All rights and credits for the original content belong to Google Cloud [Google Cloud Skill Boost website](https://www.cloudskillsboost.google/)** 🙏

---
### 🚨 PLEASE SUBSCRIBE CREATIVE JV



---

### Code :

```

PROJECT_ID=$(gcloud config get-value project)

bq load --autodetect --source_format=CSV customer_details.customers customers.csv

bq query --use_legacy_sql=false 'CREATE OR REPLACE TABLE customer_details.male_customers AS SELECT CustomerID, Gender FROM customer_details.customers WHERE Gender = "Male"'

bq extract --destination_format=CSV customer_details.male_customers gs://${PROJECT_ID}-bucket/exported_male_customers.csv 

```

---

### Congratulations, you're all done with the lab 😄

---


---
