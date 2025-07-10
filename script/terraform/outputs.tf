output "server_name"{
    value = azurerm_mssql_server.server_sql_terraform.name
}

output "sql_name"{
    value = azurerm_mssql_database.sql_terraform.name
}