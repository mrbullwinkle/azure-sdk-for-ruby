# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Send only to users who have used the app in the last {threshold} days.
    #
    class EngageActiveUsersFilter < Filter

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "engage-active-users"
      end

      attr_accessor :type

      # @return [Integer] An integer value representing the threshold to apply
      # on this filter.
      attr_accessor :threshold


      #
      # Mapper for EngageActiveUsersFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'engage-active-users',
          type: {
            name: 'Composite',
            class_name: 'EngageActiveUsersFilter',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              threshold: {
                required: false,
                serialized_name: 'threshold',
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
