# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::TrafficManager
  module Models
    #
    # Class containing DNS settings in a Traffic Manager profile.
    #
    class DnsConfig

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The relative DNS name provided by this Traffic Manager
      # profile. This value is combined with the DNS domain name used by Azure
      # Traffic Manager to form the fully-qualified domain name (FQDN) of the
      # profile.
      attr_accessor :relative_name

      # @return [String] The fully-qualified domain name (FQDN) of the Traffic
      # Manager profile. This is formed from the concatenation of the
      # RelativeName with the DNS domain used by Azure Traffic Manager.
      attr_accessor :fqdn

      # @return [Integer] The DNS Time-To-Live (TTL), in seconds. This informs
      # the local DNS resolvers and DNS clients how long to cache DNS responses
      # provided by this Traffic Manager profile.
      attr_accessor :ttl


      #
      # Mapper for DnsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DnsConfig',
          type: {
            name: 'Composite',
            class_name: 'DnsConfig',
            model_properties: {
              relative_name: {
                required: false,
                serialized_name: 'relativeName',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                required: false,
                read_only: true,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              ttl: {
                required: false,
                serialized_name: 'ttl',
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
