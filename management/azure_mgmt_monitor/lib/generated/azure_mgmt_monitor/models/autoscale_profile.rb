# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # Autoscale profile.
    #
    class AutoscaleProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the name of the profile.
      attr_accessor :name

      # @return [ScaleCapacity] the number of instances that can be used during
      # this profile.
      attr_accessor :capacity

      # @return [Array<ScaleRule>] the collection of rules that provide the
      # triggers and parameters for the scaling action. A maximum of 10 rules
      # can be specified.
      attr_accessor :rules

      # @return [TimeWindow] the specific date-time for the profile. This
      # element is not used if the Recurrence element is used.
      attr_accessor :fixed_date

      # @return [Recurrence] the repeating times at which this profile begins.
      # This element is not used if the FixedDate element is used.
      attr_accessor :recurrence


      #
      # Mapper for AutoscaleProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AutoscaleProfile',
          type: {
            name: 'Composite',
            class_name: 'AutoscaleProfile',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              capacity: {
                required: true,
                serialized_name: 'capacity',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleCapacity'
                }
              },
              rules: {
                required: true,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ScaleRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ScaleRule'
                      }
                  }
                }
              },
              fixed_date: {
                required: false,
                serialized_name: 'fixedDate',
                type: {
                  name: 'Composite',
                  class_name: 'TimeWindow'
                }
              },
              recurrence: {
                required: false,
                serialized_name: 'recurrence',
                type: {
                  name: 'Composite',
                  class_name: 'Recurrence'
                }
              }
            }
          }
        }
      end
    end
  end
end
