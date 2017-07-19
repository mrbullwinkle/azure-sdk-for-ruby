# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Generic backup copy.
    #
    class GenericRecoveryPoint < RecoveryPoint

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @objectType = "GenericRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [String] Friendly name of the backup copy.
      attr_accessor :friendly_name

      # @return [String] Type of the backup copy.
      attr_accessor :recovery_point_type

      # @return [DateTime] Time at which this backup copy was created.
      attr_accessor :recovery_point_time

      # @return [String] Additional information associated with this backup
      # copy.
      attr_accessor :recovery_point_additional_info


      #
      # Mapper for GenericRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GenericRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'GenericRecoveryPoint',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              recovery_point_type: {
                required: false,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time: {
                required: false,
                serialized_name: 'recoveryPointTime',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_additional_info: {
                required: false,
                serialized_name: 'recoveryPointAdditionalInfo',
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
