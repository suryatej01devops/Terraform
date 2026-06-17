variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z0472734SNQHJGRGZHFP"
}

variable "domain_name" {
    default = "theinfome.xyz"
}