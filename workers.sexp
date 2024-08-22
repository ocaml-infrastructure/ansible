(
 (name Workers)
 (playbooks (
  (
   (name ubuntu-update-workers.yml)
   (validity 7)
   (deps (roles/ubuntu/tasks/main.yml))
  )

  (
   (name worker.yml)
   (label ainia.caelum)
   (limit (ainia.caelum.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/hyperthreading/tasks/main.yml
     roles/docker/tasks/main.yml
     roles/worker/tasks/main.yml
     roles/worker/templates/ocluster-worker.service
     roles/clarke/tasks/main.yml
     roles/clarke/templates/clarke.service))
  )

  (
   (name worker.yml)
   (label ocaml-1.osuosl)
   (limit (ocaml-1.osuosl.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/hyperthreading/tasks/main.yml
     roles/docker/tasks/main.yml
     roles/worker/tasks/main.yml
     roles/worker/templates/ocluster-worker.service
     roles/clarke/tasks/main.yml
     roles/clarke/templates/clarke.service))
  )

  (
   (name worker.yml)
   (label ocaml-2.osuosl)
   (limit (ocaml-2.osuosl.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/hyperthreading/tasks/main.yml
     roles/docker/tasks/main.yml
     roles/worker/tasks/main.yml
     roles/worker/templates/ocluster-worker.service
     roles/clarke/tasks/main.yml
     roles/clarke/templates/clarke.service))
  )

)))
