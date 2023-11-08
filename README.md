# TerraformAzureStorageTableWithData
An Azure Storage Account with a Table and data seed written in Terraform IaC

## How to
Inside each folder (InfrastructurePhase1 and 2) run terraform init, fmt, validate, plan, apply. Run a second time plan/apply in each folder and compare.

## The point
In InfrastructurePhase1 the way we do the seeding of the storage table shows us that terraform does not know to what table should load the data for its entities (that is why during terraform apply the insertion fails after the first three to four rows and we neeed to run it again to insert the remaining), as well as every time we terraform plan/apply we notice that it wil change all the rows again. With InfrastructurePhase2 all these issuses are corrected.
