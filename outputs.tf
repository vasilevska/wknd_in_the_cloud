output "gitlab_git_url" {
  value = gitlab_project.kiwi_cloudweekend.ssh_url_to_repo
}

output "gitlab_web_url" {
  value = gitlab_project.kiwi_cloudweekend.web_url
}

output "static_ip" {
  value = google_compute_global_address.cloudweekend.address
}
