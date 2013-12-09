guard 'livereload', port: 35730 do
  watch(%r{^app\.rb})
  watch(%r{views/.+\.(erb|haml|slim)$})
  watch(%r{helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})

  # Rails Assets Pipeline
  watch(%r{(vendor)?(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
end
