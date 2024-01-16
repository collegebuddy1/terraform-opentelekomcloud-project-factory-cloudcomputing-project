variable "tags" {
  type        = map(string)
  description = "Common tag set for project resources"
  default     = {}
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to associate this private DNS zone with."
}

variable "domain" {
  type        = string
  description = "The domain name to create private DNS zone for."
}

variable "a_records" {
  type        = map(list(string))
  description = "Map of DNS A records. Maps domains to IPv4 addresses."
  default     = {}
}

variable "cname_records" {
  type        = map(list(string))
  description = "Map of DNS CNAME records. Map one domain to another."
  default     = {}
}

variable "mx_records" {
  type        = map(list(string))
  description = "Map of DNS MX records. Map domains to email servers."
  default     = {}
}

variable "aaaa_records" {
  type        = map(list(string))
  description = "Map of DNS AAAA records. Map domains to IPv6 addresses."
  default     = {}
}

variable "txt_records" {
  type        = map(list(string))
  description = "Map of DNS TXT records. Specify text records."
  default     = {}
}

variable "ptr_records" {
  type        = map(list(string))
  description = "Map of DNS SRV records. Map IP addresses to domains."
  default     = {}
}

variable "srv_records" {
  type        = map(list(string))
  description = "Map of DNS SRV records. Record servers providing specific services."
  default     = {}
}
