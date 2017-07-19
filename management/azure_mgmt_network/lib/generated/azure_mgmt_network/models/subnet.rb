# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Subnet in a virtual network resource.
    #
    class Subnet < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The address prefix for the subnet.
      attr_accessor :address_prefix

      # @return [NetworkSecurityGroup] The reference of the
      # NetworkSecurityGroup resource.
      attr_accessor :network_security_group

      # @return [RouteTable] The reference of the RouteTable resource.
      attr_accessor :route_table

      # @return [Array<PrivateAccessServicePropertiesFormat>] An array of
      # private access services values.
      attr_accessor :private_access_services

      # @return [Array<IPConfiguration>] Gets an array of references to the
      # network interface IP configurations using subnet.
      attr_accessor :ip_configurations

      # @return [Array<ResourceNavigationLink>] Gets an array of references to
      # the external resources using subnet.
      attr_accessor :resource_navigation_links

      # @return [String] The provisioning state of the resource.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


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
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              address_prefix: {
                required: false,
                serialized_name: 'properties.addressPrefix',
                type: {
                  name: 'String'
                }
              },
              network_security_group: {
                required: false,
                serialized_name: 'properties.networkSecurityGroup',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkSecurityGroup'
                }
              },
              route_table: {
                required: false,
                serialized_name: 'properties.routeTable',
                type: {
                  name: 'Composite',
                  class_name: 'RouteTable'
                }
              },
              private_access_services: {
                required: false,
                serialized_name: 'properties.privateAccessServices',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PrivateAccessServicePropertiesFormatElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateAccessServicePropertiesFormat'
                      }
                  }
                }
              },
              ip_configurations: {
                required: false,
                read_only: true,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'IPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPConfiguration'
                      }
                  }
                }
              },
              resource_navigation_links: {
                required: false,
                serialized_name: 'properties.resourceNavigationLinks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceNavigationLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceNavigationLink'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
