Bundler.require

require 'sinatra/asset_pipeline'


class App < Sinatra::Base
  register Sinatra::AssetPipeline

  helpers do
    # All of our images have @2x values, this injects them
    def image_tag(source, options={})
      source_at_2x = source.gsub(%r{\.\w+$}, '@2x\0')

      # Only add data-at2x asset if it exists - prevents errors in production
      if Rails.application.assets.find_asset(source_at_2x)
        options.reverse_merge! {"data-at2x" => asset_path(source_at_2x)}
      end

      image_tag(source, options)
    end
  end

  get '/' do
    haml :index
  end
end