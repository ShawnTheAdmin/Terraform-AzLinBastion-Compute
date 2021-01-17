/* Review code in main.tf before setting variables to understand the workflow -
Comments below provide some additional clarification. */

// boolean value that defines whether or not to use Bastion
bastion = true

// bastion_name can be an empty string if the bastion variable above is false
bastion_name = "bastionserver002"

server_rg_name = "mc-dev-swarm"

server_vnet_name = "mc-dev-swarm"

server_name_prefix = "mc-swarm"

server_username= "swatkins"

// specifies number of servers to create. If bastion variable is set to fasle a public IP will be created for each server
server_count = 3

tags = { 
    "Company"     = "Mega Cat Supreme"
    "Environment" = "Development"
    "ManagedBy"   = "Shawn Watkins"
}