require_relative('./person')
require_relative('./capitalize_decorator')
require_relative('./trimmer_decorator')
require_relative('./rental')
require_relative('./books')
require_relative('./app')

def main
  app = App.new
  app.run
end

main
