# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Server response for Get tenant domains API call.
    #
    class DomainListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Domain>] the list of domains.
      attr_accessor :value


      #
      # Mapper for DomainListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DomainListResult',
          type: {
            name: 'Composite',
            class_name: 'DomainListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DomainElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Domain'
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
