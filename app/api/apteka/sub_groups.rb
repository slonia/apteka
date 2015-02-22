module Apteka
  class SubGroups < Grape::API

    namespace :sub_groups do
      get '/' do
        SubGroup.all
      end
    end
  end
end
