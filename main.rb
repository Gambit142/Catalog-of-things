require './classes/app'
require 'rainbow'

def main
  app = App.new
  app.load_data
  app.run
end

main
