
library(blogdown)

new_site(theme="wowchemy/starter-academic")
check_gitignore()
check_content()
hugo_version()

serve_site()

blogdown::build_site()
blogdown::serve_site()