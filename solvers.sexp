(
 (name Solvers)
 (playbooks (

  (
   (name solver.yml)
   (label ainia.caelum)
   (limit (ainia.caelum.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/solver/tasks/main.yml
     roles/solver/templates/solver-service.service))
  )

  (
   (name solver.yml)
   (label kydoime.caelum)
   (limit (kydoime.caelum.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/solver/tasks/main.yml
     roles/solver/templates/solver-service.service))
  )

  (
   (name solver.yml)
   (label molpadia.caelum)
   (limit (molpadia.caelum.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/solver/tasks/main.yml
     roles/solver/templates/solver-service.service))
  )

  (
   (name solver.yml)
   (label okypous.caelum)
   (limit (okypous.caelum.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/solver/tasks/main.yml
     roles/solver/templates/solver-service.service))
  )

  (
   (name solver.yml)
   (label arm64-jade-2.equinix)
   (limit (arm64-jade-2.equinix.ci.dev))
   (vars /run/secrets/worker.yml)
   (deps (
     roles/solver/tasks/main.yml
     roles/solver/templates/solver-service.service))
  )

)))

