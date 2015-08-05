module Shiny
  module Generator
    class Template
      def create 
        dir = File.expand_path File.dirname(__FILE__)
        @ui_r = open("#{dir}/template1/ui.R","r").read
        @server_r = open("#{dir}/template1/server.R","r").read
        `if [ ! -d "shiny" ]; then
          mkdir shiny 
         fi`
        ui_r = open("shiny/ui.R","w")  
        server_r = open("shiny/server.R","w")  
        ui_r.write(@ui_r)
        server_r.write(@server_r)
        ui_r.close
        server_r.close
      end

    end

  end
end
