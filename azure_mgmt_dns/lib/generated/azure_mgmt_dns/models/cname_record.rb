# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Dns
  module Models
    #
    # A CNAME record.
    #
    class CnameRecord

      include MsRestAzure

      # @return [String] Gets or sets the canonical name for this record
      # without a terminating dot.
      attr_accessor :cname


      #
      # Mapper for CnameRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CnameRecord',
          type: {
            name: 'Composite',
            class_name: 'CnameRecord',
            model_properties: {
              cname: {
                required: false,
                serialized_name: 'cname',
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