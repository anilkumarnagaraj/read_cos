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

*/

data "ibm_resource_instance" "testacc_ds_resource_instance" {
  name              = "cos-instance"
  location          = "global"
  resource_group_id = "b180729994c44e88b682384025cfd7f8"
}

data "ibm_cos_bucket" "standard-ams03" {
  bucket_name          = "sch-cos-cbr"
  resource_instance_id = data.ibm_resource_instance.testacc_ds_resource_instance.id
  bucket_type          = "cross_region_location"
  bucket_region        = "us-geo"
  endpoint_type        = "private"
}
