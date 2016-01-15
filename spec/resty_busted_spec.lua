describe("lua-resty-busted", function()
  it("should run in ngx_lua context", function()
    assert.truthy(_G.ngx)
    assert.equal(0, ngx.OK)
    assert.equal(200, ngx.HTTP_OK)
  end)
  it("calling ngx.exit should not exit", function()
    -- This test succeeds if busted exits properly since
    -- ngx.exit would prematurely terminate the execution.
    -- Better to run the tests from the Makefile.
    ngx.exit(1)
  end)
end)
