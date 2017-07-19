# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # A list of activity log alert actions.
    #
    class ActivityLogAlertActionList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ActivityLogAlertActionGroup>] The list of activity log
      # alerts.
      attr_accessor :action_groups


      #
      # Mapper for ActivityLogAlertActionList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ActivityLogAlertActionList',
          type: {
            name: 'Composite',
            class_name: 'ActivityLogAlertActionList',
            model_properties: {
              action_groups: {
                required: false,
                serialized_name: 'actionGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ActivityLogAlertActionGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityLogAlertActionGroup'
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
