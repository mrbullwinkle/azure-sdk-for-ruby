# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Redis
  module Models
    #
    # Parameters supplied to the Update Redis operation.
    #
    class RedisUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] All Redis Settings. Few possible keys:
      # rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value
      # etc.
      attr_accessor :redis_configuration

      # @return [Boolean] Specifies whether the non-ssl Redis server port
      # (6379) is enabled.
      attr_accessor :enable_non_ssl_port

      # @return [Hash{String => String}] tenantSettings
      attr_accessor :tenant_settings

      # @return [Integer] The number of shards to be created on a Premium
      # Cluster Cache.
      attr_accessor :shard_count

      # @return [String] The full resource ID of a subnet in a virtual network
      # to deploy the Redis cache in. Example format:
      # /subscriptions/{subid}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
      attr_accessor :subnet_id

      # @return [String] Static IP address. Required when deploying a Redis
      # cache inside an existing Azure Virtual Network.
      attr_accessor :static_ip

      # @return [Sku] The SKU of the Redis cache to deploy.
      attr_accessor :sku

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for RedisUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RedisUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'RedisUpdateParameters',
            model_properties: {
              redis_configuration: {
                required: false,
                serialized_name: 'properties.redisConfiguration',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              enable_non_ssl_port: {
                required: false,
                serialized_name: 'properties.enableNonSslPort',
                type: {
                  name: 'Boolean'
                }
              },
              tenant_settings: {
                required: false,
                serialized_name: 'properties.tenantSettings',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              shard_count: {
                required: false,
                serialized_name: 'properties.shardCount',
                type: {
                  name: 'Number'
                }
              },
              subnet_id: {
                required: false,
                serialized_name: 'properties.subnetId',
                constraints: {
                  Pattern: '^/subscriptions/[^/]*/resourceGroups/[^/]*/providers/Microsoft.(ClassicNetwork|Network)/virtualNetworks/[^/]*/subnets/[^/]*$'
                },
                type: {
                  name: 'String'
                }
              },
              static_ip: {
                required: false,
                serialized_name: 'properties.staticIP',
                constraints: {
                  Pattern: '^\d+\.\d+\.\d+\.\d+$'
                },
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              tags: {
                required: false,
                serialized_name: 'properties.tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
