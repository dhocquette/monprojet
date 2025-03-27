#Configuration de git : Qui on est !
usethis::use_git_config(scope = "user",
                        user.name = "hocquette delphine",
                        user.email = "dhocquette@gmail.com")

# usethis::use_git_config(scope = "user",
#                         http.proxy = "adresse.du.proxy",
#                         https.proxy = "adresse.du.proxy")

#Configuration de git : avoir des autorisations spéciales => clé d'accès - un token
#On génère un token qui nous ouvre les portes de notre compte github
#2 manières de faire
usethis::create_github_token() #pour diriger au bon endroit

#Dans la console : gitcreds::gitcreds_set()

#Pour éviter de taper sans cesse son mot de passe, on peut aussi demander à git de le mémoriser
#de manière permanente
usethis::use_git_config(scope = "user",
                        credential.helper = "store")
usethis::use_git_config(scope = "user",
                        init.defaultBranch = "main")
usethis::use_git_config(scope = "user",
                        # Définition du nouveau caractère de fin de ligne par défaut:
                        core.autocrlf = "input", # Sur Linux ou MacOS
                        ## core.autocrlf = "true", # Sur Windows
                        # Définition de l'editeur git nano à la place de vim
                        core.editor = "nano")
#pas de rebase
usethis::use_git_config(scope = "user",
                        pull.rebase = "false")

#console retourne le contenu de la configuration
gert::git_config_global() #Fct R

