#resource "ibm_compute_bare_metal" "host" {
#  package_key_name       = "DUAL_INTEL_XEON_PROC_CASCADE_LAKE_SCALABLE_FAMILY_12_DRIVES"
#  process_key_name       = "INTEL_INTEL_XEON_8260_2_40"
#  memory                 = 768
#  os_key_name            = "OS_NO_OPERATING_SYSTEM"
#  hostname               = var.name
#  domain                 = var.domain_name
#  datacenter             = var.datacenter
#  network_speed          = var.network_speed
#  public_bandwidth       = 20000
#  disk_key_names         = ["HARD_DRIVE_1_00_TB_SATA_2", "HARD_DRIVE_1_00_TB_SATA_2", "HARD_DRIVE_960GB_SSD", "HARD_DRIVE_960GB_SSD", "HARD_DRIVE_960GB_SSD", "HARD_DRIVE_960GB_SSD", "HARD_DRIVE_960GB_SSD"]
#  hourly_billing         = false
#  private_network_only   = false
#  unbonded_network       = true
#  public_vlan_id         = var.public_vlan
#  private_vlan_id        = var.private_vlan
#  public_subnet          = var.public_subnet
#  private_subnet         = var.private_subnet
#  tags                   = var.tags
#  redundant_power_supply = true
#  storage_groups {
#    # RAID 1
#    array_type_id = 2
#    # Use the first two disks
#    hard_drives = [0, 1]
#    array_size  = 960
#
#  }
#}


resource "ibm_compute_bare_metal" "quote_bms_id" {
  # Mandatory fields
  hostname      = var.name
  domain        = var.domain_name
  datacenter    = var.datacenter
  network_speed = var.network_speed
  quote_id = var.quote_id

  # Optional fields

  public_vlan_id         = var.public_vlan
  private_vlan_id        = var.private_vlan
  public_subnet          = var.public_subnet
  private_subnet         = var.private_subnet
  tags                   = var.tags
  #user_metadata   = ""
  #tags = []
}

