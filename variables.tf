variable "appmesh_route_lookup" {
  description = <<EOT
Map of appmesh_route_lookup, attributes below
Required:
    - mesh_name
    - name
    - virtual_router_name
Optional:
    - mesh_owner
    - region
    - tags
EOT

  type = map(object({
    mesh_name           = string
    name                = string
    virtual_router_name = string
    mesh_owner          = optional(string)
    region              = optional(string)
    tags                = optional(map(string))
  }))
}

