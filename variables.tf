variable "region" {
  default = "ap-south-1"
}

variable "ami_id" {
  type = "map(string)"

  default = {
    ap-south-1  = "ami-02eb7a4783e7e9317"
    ap-south-1  = "ami-0c768662cc797cd75"
    ap-south-1  = "ami-0fdea1353c525c182"
  }
}
