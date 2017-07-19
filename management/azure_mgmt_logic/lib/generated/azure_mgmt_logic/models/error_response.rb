# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Error reponse indicates Logic service is not able to process the incoming
    # request. The error property contains the error details.
    #
    class ErrorResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [ErrorProperties] The error properties.
      attr_accessor :error


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
