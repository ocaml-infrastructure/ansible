(
 (name Admin)
 (playbooks (
  (
   (name keys.yml)
   (label "SSH Keys")
   (deps (roles/ssh-key/tasks/main.yml))
  )
)))

