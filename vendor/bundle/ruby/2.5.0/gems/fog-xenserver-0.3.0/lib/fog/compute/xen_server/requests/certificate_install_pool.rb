module Fog
  module Compute
    class XenServer
      class Real
        def certificate_install_pool(name, cert)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => "pool.certificate_install" }, name, cert)
        end
      end
    end
  end
end
