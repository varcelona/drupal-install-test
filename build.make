api = 2
core = 7.x
; Include the definition for how to build Drupal core directly, including patches:
includes[] = drupal-org-core.make

projects[base][type] = profile
projects[base][download][type] = git
projects[base][download][url] = .
