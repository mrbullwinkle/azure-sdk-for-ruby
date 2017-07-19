# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Subnet information.
    #
    class Subnet

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The resource ID of the subnet.
      attr_accessor :resource_id

      # @return [String] The name of the subnet as seen in the lab.
      attr_accessor :lab_subnet_name

      # @return [UsagePermissionType] The permission policy of the subnet for
      # allowing public IP addresses (i.e. Allow, Deny)). Possible values
      # include: 'Default', 'Deny', 'Allow'
      attr_accessor :allow_public_ip


      #
      # Mapper for Subnet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Subnet',
          type: {
            name: 'Composite',
            class_name: 'Subnet',
            model_properties: {
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              lab_subnet_name: {
                required: false,
                serialized_name: 'labSubnetName',
                type: {
                  name: 'String'
                }
              },
              allow_public_ip: {
                required: false,
                serialized_name: 'allowPublicIp',
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
