resource "azure_resource_group" "rg" {
    name = "HTML Website"
    location = "West Europe"

    tags ={
        owner = "Pawłowski"
        enviorment = "HTMLWebsiteENV"
    }
}