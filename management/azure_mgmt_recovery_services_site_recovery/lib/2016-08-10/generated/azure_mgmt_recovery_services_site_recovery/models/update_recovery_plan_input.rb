# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Update recovery plan input class.
    #
    class UpdateRecoveryPlanInput

      include MsRestAzure

      include MsRest::JSONable
      # @return [UpdateRecoveryPlanInputProperties] Recovery plan update
      # properties.
      attr_accessor :properties


      #
      # Mapper for UpdateRecoveryPlanInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UpdateRecoveryPlanInput',
          type: {
            name: 'Composite',
            class_name: 'UpdateRecoveryPlanInput',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UpdateRecoveryPlanInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end