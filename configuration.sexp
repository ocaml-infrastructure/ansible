((playbooks (
  (
   (name update-something-else.yml)
   (deps (roles/apt/tasks/main.yml))
  )
  (
   (name update.yml)
  )
  (
   (name ubuntu-update-workers.yml)
   (validity 7)
   (deps (roles/ubuntu/tasks/main.yml))
  )
  (
   (name deploy.ci.ocaml.org.yml)
   (vars /run/secrets/deploy.ci.ocaml.org.yml)
   (deps (caddy/deploy.ci.ocaml.org cron-scripts/docker-prune roles/docker/tasks/main.yml roles/deployer-key/tasks/main.yml roles/deployer-key/files/id_rsa.pub))
  )
  (
   (name registry.ci.dev.yml)
   (vars /run/secrets/registry.ci.dev.yml)
  )
  (
   (name watch.ocaml.org.yml)
   (vars /run/secrets/watch.ocaml.org.yml)
   (deps (cron-scripts/docker-prune))
  )
)))
