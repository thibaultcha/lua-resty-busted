# lua-resty-busted ![Module Version][badge-version-image]

A little hack to test OpenResty scripts with [busted].

By overriding the `busted` executable with the one shipped with this module, busted runs with the [resty-cli] interpreter, which can execute Lua scripts written for OpenResty from the CLI.

### Install

By default, the script is installed under `/usr/local/bin`. You can use the Makefile variables (also from Luarocks) to install it somewhere else.

Luarocks:
```
$ luarocks install lua-resty-busted
```

Makefile:
```
$ make install
```

Manually: just copy the `bin/busted` script somewhere in your `$PATH`.

### Usage

```lua
describe("openresty script", function()
  it("should run in ngx_lua context", function()
    assert.equal(0, ngx.OK)
    assert.equal(200, ngx.HTTP_OK)
  end)
  it("should wait", function()
    ngx.sleep(3)
    assert.is_true(1 == 1)
  end)
end)
```

From [resty-cli]'s documentation:

> The Lua code is initiated by the init_worker_by_lua directive and run in the context of ngx.timer callback. So all of ngx_lua's Lua APIs available in the ngx.timer callback context are also available in the resty utility. We may remove some of the remaining limitations in the future though.

### License

Work licensed under the MIT License. Please check [Olivine-Labs/busted][busted] for the license of the underlying, actual testing framework.

[busted]: https://github.com/Olivine-Labs/busted
[resty-cli]: https://github.com/openresty/resty-cli
[badge-version-image]: https://img.shields.io/badge/version-0.0.1-blue.svg?style=flat
