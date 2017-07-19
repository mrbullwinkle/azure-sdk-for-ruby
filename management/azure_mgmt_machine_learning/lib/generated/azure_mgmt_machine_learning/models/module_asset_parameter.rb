# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # Parameter definition for a module asset.
    #
    class ModuleAssetParameter

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Parameter name.
      attr_accessor :name

      # @return [String] Parameter type.
      attr_accessor :parameter_type

      # @return [Hash{String => ModeValueInfo}] Definitions for nested
      # interface parameters if this is a complex module parameter.
      attr_accessor :mode_values_info


      #
      # Mapper for ModuleAssetParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ModuleAssetParameter',
          type: {
            name: 'Composite',
            class_name: 'ModuleAssetParameter',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameter_type: {
                required: false,
                serialized_name: 'parameterType',
                type: {
                  name: 'String'
                }
              },
              mode_values_info: {
                required: false,
                serialized_name: 'modeValuesInfo',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ModeValueInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ModeValueInfo'
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
