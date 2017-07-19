# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # The properties that are associated with an Azure SQL database data
    # source.
    #
    class AzureSqlDatabaseDataSourceProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the SQL server containing the Azure SQL
      # database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :server

      # @return [String] The name of the Azure SQL database. Required on PUT
      # (CreateOrReplace) requests.
      attr_accessor :database

      # @return [String] The user name that will be used to connect to the
      # Azure SQL database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :user

      # @return [String] The password that will be used to connect to the Azure
      # SQL database. Required on PUT (CreateOrReplace) requests.
      attr_accessor :password

      # @return [String] The name of the table in the Azure SQL database.
      # Required on PUT (CreateOrReplace) requests.
      attr_accessor :table


      #
      # Mapper for AzureSqlDatabaseDataSourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureSqlDatabaseDataSourceProperties',
          type: {
            name: 'Composite',
            class_name: 'AzureSqlDatabaseDataSourceProperties',
            model_properties: {
              server: {
                required: false,
                serialized_name: 'server',
                type: {
                  name: 'String'
                }
              },
              database: {
                required: false,
                serialized_name: 'database',
                type: {
                  name: 'String'
                }
              },
              user: {
                required: false,
                serialized_name: 'user',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              table: {
                required: false,
                serialized_name: 'table',
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
