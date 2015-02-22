module Apteka
  class Groups < Grape::API

    namespace :groups do
      get '/' do
        Group.all
      end
    end
  end
end
