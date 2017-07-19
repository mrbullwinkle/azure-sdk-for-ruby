# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # The binding to a JavaScript function.
    #
    class JavaScriptFunctionBinding < FunctionBinding

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Microsoft.StreamAnalytics/JavascriptUdf"
      end

      attr_accessor :type

      # @return [String] The JavaScript code containing a single function
      # definition. For example: 'function (x, y) { return x + y; }'
      attr_accessor :script


      #
      # Mapper for JavaScriptFunctionBinding class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.StreamAnalytics/JavascriptUdf',
          type: {
            name: 'Composite',
            class_name: 'JavaScriptFunctionBinding',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              script: {
                required: false,
                serialized_name: 'properties.script',
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
