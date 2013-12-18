require 'httparty'

module Dragonfly
  module DataStorage
    #class Forbidden < StandardError; end
    
    class RemoteDataStore
      include Configurable
      
      def write(temp_object, opts={})
        raise "Sorry friend, this datastore is read-only."
      end

      def read(uid)
        response = HTTParty.get uid, :timeout => 3
        unless response.ok?
          #raise Forbidden if response.code == 403
          raise DataNotFound
        end
        [
          response.body,            # either a File, String or Tempfile
          {
            'name' => File.basename(uid),
            'format' => File.extname(uid)[1..-1]
          }          # Hash with optional keys :meta, :name, :format
        ]
      end

      def destroy(uid)
        raise "Sorry friend, this datastore is read-only."
      end
    end
  end
end
