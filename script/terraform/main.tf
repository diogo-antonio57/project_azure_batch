provider "azurerm"{
    features {}
    subscription_id = var.subscription_id
}

data "azurerm_resource_group" "rg"{
    name = var.resource_group_name
}

resource "azurerm_mssql_server" "server_sql_terraform"{
    name                         = var.sql_server_name
    resource_group_name          = var.resource_group_name
    location                     = var.location
    administrator_login          = var.user_login_server_sql
    administrator_login_password = var.password_login_server_sql
    version                      = "12.0"
}

resource "azurerm_mssql_database" "sql_terraform"{
    name = var.database_name
    server_id = azurerm_mssql_server.server_sql_terraform.id
    sku_name = "Basic"
}