# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The X12 oneway agreement.
    #
    class X12OneWayAgreement

      include MsRestAzure

      include MsRest::JSONable
      # @return [BusinessIdentity] The sender business identity
      attr_accessor :sender_business_identity

      # @return [BusinessIdentity] The receiver business identity
      attr_accessor :receiver_business_identity

      # @return [X12ProtocolSettings] The X12 protocol settings.
      attr_accessor :protocol_settings


      #
      # Mapper for X12OneWayAgreement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'X12OneWayAgreement',
          type: {
            name: 'Composite',
            class_name: 'X12OneWayAgreement',
            model_properties: {
              sender_business_identity: {
                required: true,
                serialized_name: 'senderBusinessIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'BusinessIdentity'
                }
              },
              receiver_business_identity: {
                required: true,
                serialized_name: 'receiverBusinessIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'BusinessIdentity'
                }
              },
              protocol_settings: {
                required: true,
                serialized_name: 'protocolSettings',
                type: {
                  name: 'Composite',
                  class_name: 'X12ProtocolSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
