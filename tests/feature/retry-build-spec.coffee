CircleCI = require "../../src/circleci"

describe "retryBuild", ->

  before ->
    @circleci = new CircleCI { auth: process.env.CIRCLE_TOKEN }
    @config = { username: "FundingCircle", project: "fc-quatro", build_num: "10" }
  
  it "retries the build", (done) ->
    @circleci.retryBuild(@config).then (res) ->
      expect(res).to.be.ok
      done()
