# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # The pricing tier (defines a CDN provider, feature list and rate) of the
    # CDN profile.
    #
    class Sku

      include MsRestAzure

      include MsRest::JSONable
      # @return [SkuName] Name of the pricing tier. Possible values include:
      # 'Standard_Verizon', 'Premium_Verizon', 'Custom_Verizon',
      # 'Standard_Akamai', 'Standard_ChinaCdn'
      attr_accessor :name


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
