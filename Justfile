test src_path="Tests":
  cd tests && gren make {{src_path}} && node app && rm app
