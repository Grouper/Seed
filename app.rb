Bundler.require

require 'sinatra/asset_pipeline'


class App < Sinatra::Base
  register Sinatra::AssetPipeline

  get '/' do
    haml :index
  end
end