# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # The response to a list database metrics request.
    #
    class DatabaseUsageListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<DatabaseUsage>] The list of database usages for the
      # database.
      attr_accessor :value


      #
      # Mapper for DatabaseUsageListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseUsageListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseUsageListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DatabaseUsageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseUsage'
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
