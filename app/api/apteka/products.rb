module Apteka
  class Products < Grape::API

    namespace :products do
      get '/' do
        Product.all
      end

      get '/get_all' do
        Group.all.as_json(include: {sub_groups: {include: :products}})
      end
    end
  end
end
