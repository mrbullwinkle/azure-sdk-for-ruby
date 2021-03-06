# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Graph::Mgmt::V1_6
  module Models
    #
    # Request parameters for a KeyCredentials update operation
    #
    class KeyCredentialsUpdateParameters

      include MsRestAzure

      # @return [Array<KeyCredential>] A collection of KeyCredentials.
      attr_accessor :value


      #
      # Mapper for KeyCredentialsUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyCredentialsUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'KeyCredentialsUpdateParameters',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KeyCredentialElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyCredential'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
