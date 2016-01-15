package = "lua-resty-busted"
version = "0.0.1-0"
source = {
  url = "git://github.com/thibaultCha/lua-resty-busted",
  tag = "0.0.1"
}
dependencies = {
  "busted ~> 2.0.rc11"
}
description = {
  summary = "",
  license = "MIT"
}
build = {
  type = "make",
  build_pass = false,
  build_variables = {
    PREFIX = "$(PREFIX)",
    INSTALL_DIR = "$(INSTALL_DIR)",
    CFLAGS = "$(CFLAGS)"
  }
}
