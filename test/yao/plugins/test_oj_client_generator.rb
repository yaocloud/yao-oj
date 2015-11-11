class TestOjClientGenerator < Test::Unit::TestCase
  def setup
  end

  def teardown
    Yao.config.set :client_generator, :default
  end

  def test_gen_client_with_this_plugin
    Yao.config.set :client_generator, :oj

    cli = Yao::Client.gen_client("http://cool-api.example.com:12345/v3.0")

    handlers = [
      Faraday::Request::Accept,
      Faraday::Request::UrlEncoded,
      Faraday::Response::OSErrorDetector,
      FaradayMiddleware::ParseOj,
      Faraday::Adapter::NetHttp
    ]
    assert { cli.builder.handlers == handlers }
  end
end
