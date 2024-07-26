(
 (name Workers)
 (playbooks (
  (
   (name ubuntu-update-workers.yml)
   (validity 7)
   (deps (roles/ubuntu/tasks/main.yml))
  )
  (
   (name ainia.caelum.ci.dev.yml)
   (vars /run/secrets/worker.yml)
   (deps (
     roles/hyperthreading/tasks/main.yml
     roles/worker/tasks/main.yml
     roles/worker/templates/ocluster-worker.service
     roles/clarke/tasks/main.yml
     roles/clarke/templates/clarke.service))
  )
)))
