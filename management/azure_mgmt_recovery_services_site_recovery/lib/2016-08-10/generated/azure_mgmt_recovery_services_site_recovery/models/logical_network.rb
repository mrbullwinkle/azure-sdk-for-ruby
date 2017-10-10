# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Logical network data model.
    #
    class LogicalNetwork < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [LogicalNetworkProperties] The Logical Network Properties.
      attr_accessor :properties


      #
      # Mapper for LogicalNetwork class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LogicalNetwork',
          type: {
            name: 'Composite',
            class_name: 'LogicalNetwork',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'LogicalNetworkProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end