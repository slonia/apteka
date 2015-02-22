module Apteka
  class Root < Grape::API
    format :json

    helpers do
      def valid_auth_key?
        params[:auth_key].present? && (params[:auth_key] == Config['api']['auth_key'])
      end

      def authenticate!
        error!('401 Unauthorized', 401) unless valid_auth_key?
      end
    end

    before do
      authenticate!
    end

    mount Apteka::Groups => '/'
    mount Apteka::SubGroups => '/'
    mount Apteka::Products => '/'
  end
end
