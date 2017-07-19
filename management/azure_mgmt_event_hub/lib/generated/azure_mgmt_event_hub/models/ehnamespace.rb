# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # Single Namespace item in List or Get Operation
    #
    class EHNamespace < TrackedResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Sku] Properties of sku resource
      attr_accessor :sku

      # @return [String] Provisioning state of the Namespace.
      attr_accessor :provisioning_state

      # @return [DateTime] The time the Namespace was created.
      attr_accessor :created_at

      # @return [DateTime] The time the Namespace was updated.
      attr_accessor :updated_at

      # @return [String] Endpoint you can use to perform Service Bus
      # operations.
      attr_accessor :service_bus_endpoint

      # @return [String] Identifier for Azure Insights metrics.
      attr_accessor :metric_id

      # @return [Boolean] Value that indicates whether AutoInflate is enabled
      # for eventhub namespace.
      attr_accessor :is_auto_inflate_enabled

      # @return [Integer] Upper limit of throughput units when AutoInflate is
      # enabled, vaule should be within 0 to 20 throughput units. ( '0' if
      # AutoInflateEnabled = true)
      attr_accessor :maximum_throughput_units


      #
      # Mapper for EHNamespace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EHNamespace',
          type: {
            name: 'Composite',
            class_name: 'EHNamespace',
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
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              service_bus_endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceBusEndpoint',
                type: {
                  name: 'String'
                }
              },
              metric_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.metricId',
                type: {
                  name: 'String'
                }
              },
              is_auto_inflate_enabled: {
                required: false,
                serialized_name: 'properties.isAutoInflateEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              maximum_throughput_units: {
                required: false,
                serialized_name: 'properties.maximumThroughputUnits',
                constraints: {
                  InclusiveMaximum: 20,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
