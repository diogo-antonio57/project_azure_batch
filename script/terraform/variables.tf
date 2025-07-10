variable "resource_group_name"{
    default = "Azure-estudo"
}

variable "sql_server_name"{
    default = "server-sql-terraform-estudo-teste"
}

variable "location"{
    default = "eastus2"
}

variable "user_login_server_sql"{
    type = string
    sensitive = true
}

variable "password_login_server_sql"{
    type = string
    sensitive = true
}

variable "database_name"{
    default = "sql-terraform"
}

variable "subscription_id"{
    type = string
    sensitive = true
}