/*
data "ibm_resource_instance" "testacc_ds_resource_instance" {
  name              = "cos-cbr-test"
  location          = "global"
  resource_group_id = "7aecd76f87f54ac0876e2f72f88ccb24"
}

data "ibm_cos_bucket" "standard-ams03" {
  bucket_name          = "test-rba-cos"
  resource_instance_id = data.ibm_resource_instance.testacc_ds_resource_instance.id
  bucket_type          = "cross_region_location"
  bucket_region        = "us"
  endpoint_type        = "private"
}



data "ibm_resource_instance" "testacc_ds_resource_instance" {
  name              = "cos-instance"
  location          = "global"
  resource_group_id = "b180729994c44e88b682384025cfd7f8"
}
*/
data "ibm_cos_bucket" "standard-ams03" {
  bucket_name          = "sch-cos-cbr"
  #resource_instance_id = data.ibm_resource_instance.testacc_ds_resource_instance.id
  resource_instance_id = "crn:v1:staging:public:cloud-object-storage:global:a/a1036d241b3f4f9bbdf53ada9e521a5c:601e21e1-b210-4bf5-ab1b-9788a10677f6::"
  bucket_type          = "cross_region_location"
  bucket_region        = "us-geo"
  endpoint_type        = "private"
}
