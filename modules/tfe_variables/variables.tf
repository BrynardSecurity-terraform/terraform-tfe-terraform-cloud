# tfe variable sub-module -- variables.tf

variable "category" {
  description = "Whether this is a Terraform or environment variable. Available options: terraform or env"
  type        = string
  default     = "terraform"
}

variable "customer_name" {
  description = "POC customer name"
  type        = string
  default     = "Acme Co."
}

variable "description" {
  description = "The description of the variable"
  type        = string
  default     = null
}

variable "description_suffix" {
  description = "Whether to add a suffix to the description of the variable"
  type        = string
  default     = ""
}

variable "hcl" {
  description = "Whether to evaluate the value of the variable as a string of HCL code"
  type        = bool
  default     = false
}

variable "key" {
  description = "Name of the variable"
  type        = string
}

variable "sensitive" {
  description = "Whether the variable value is sensitive"
  type        = bool
  default     = false
}

variable "value" {
  description = "Value of the variable"
  type        = string
}

variable "variable_set" {
  description = "Whether this variable should be added to a variable set"
  type        = bool
  default     = true
}

variable "variable_set_id" {
  description = "Variable Set ID for the variable set"
  type        = string
  default     = ""
  validation {
    condition = var.variable_set_id != ""
    error_message = "If variable_set is true, variable set ID must be provided."
  }
}

variable "workspace_id" {
  description = "Workspace ID for the variable"
  type        = string
  default     = ""
  validation {
    condition = var.workspace_id != ""
    error_message = "If variable_set is false, workspace ID must be provided."
  }
}
