terraform {
  required_version = "~> 0.11"
}

data "external" "git_describe" {
  program = ["${path.module}/git-describe.sh"]
}

output "description" {
  value = "${lookup(data.external.git_describe.result, "description")}"
}
