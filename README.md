# TerraformAzureStorageTableWithData
An Azure Storage Account with a Table and data seed written in Terraform IaC

## How to
Inside each folder (InfrastructurePhase1 and 2) run terraform init, fmt, validate, plan, apply. Run a second time plan/apply in each folder and compare.

## The point
In InfrastructurePhase1 the way we do the seeding of the storage table shows us that terraform does not know to what table should load the data for its entities (that is why during terraform apply the insertion fails after the first three to four rows and we need to run it again to insert the remaining), as well as every time we terraform plan/apply we notice that it will change all the rows again. With InfrastructurePhase2 all these issues are corrected.
That means the the state is not stored in the first phase while it is in the second. Thiσ is a matter of terraform idempotence (Idempotence ensures that the same request leads to the same system state, and no action is unintentionally executed more than once).
