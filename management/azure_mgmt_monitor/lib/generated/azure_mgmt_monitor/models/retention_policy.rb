# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # Specifies the retention policy for the log.
    #
    class RetentionPolicy

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] a value indicating whether the retention policy is
      # enabled.
      attr_accessor :enabled

      # @return [Integer] the number of days for the retention in days. A value
      # of 0 will retain the events indefinitely.
      attr_accessor :days


      #
      # Mapper for RetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'RetentionPolicy',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              days: {
                required: true,
                serialized_name: 'days',
                constraints: {
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
