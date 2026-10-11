data "aws_appmesh_route" "appmesh_route_lookup" {
  for_each = var.appmesh_route_lookup

  mesh_name           = each.value.mesh_name
  name                = each.value.name
  virtual_router_name = each.value.virtual_router_name
  mesh_owner          = each.value.mesh_owner
  region              = each.value.region
  tags                = each.value.tags
}

