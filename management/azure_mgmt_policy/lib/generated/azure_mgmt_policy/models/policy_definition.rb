# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Policy
  module Models
    #
    # The policy definition.
    #
    class PolicyDefinition

      include MsRestAzure

      include MsRest::JSONable
      # @return [PolicyType] The type of policy definition. Possible values are
      # NotSpecified, BuiltIn, and Custom. Possible values include:
      # 'NotSpecified', 'BuiltIn', 'Custom'
      attr_accessor :policy_type

      # @return [String] The display name of the policy definition.
      attr_accessor :display_name

      # @return [String] The policy definition description.
      attr_accessor :description

      # @return The policy rule.
      attr_accessor :policy_rule

      # @return Required if a parameter is used in policy rule.
      attr_accessor :parameters

      # @return [String] The ID of the policy definition.
      attr_accessor :id

      # @return [String] The name of the policy definition. If you do not
      # specify a value for name, the value is inferred from the name value in
      # the request URI.
      attr_accessor :name


      #
      # Mapper for PolicyDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicyDefinition',
          type: {
            name: 'Composite',
            class_name: 'PolicyDefinition',
            model_properties: {
              policy_type: {
                required: false,
                serialized_name: 'properties.policyType',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              policy_rule: {
                required: false,
                serialized_name: 'properties.policyRule',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Object'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
