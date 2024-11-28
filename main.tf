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
}
