data "ibm_resource_instance" "testacc_ds_resource_instance" {
  name              = "cos-instance"
  location          = "global"
  resource_group_id = "Default"
}
