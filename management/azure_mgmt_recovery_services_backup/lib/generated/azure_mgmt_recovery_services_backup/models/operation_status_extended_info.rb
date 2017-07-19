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
    # Base class for additional information of operation status.
    #
    class OperationStatusExtendedInfo

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["OperationStatusJobExtendedInfo"] = "OperationStatusJobExtendedInfo"
      @@discriminatorMap["OperationStatusJobsExtendedInfo"] = "OperationStatusJobsExtendedInfo"
      @@discriminatorMap["OperationStatusProvisionILRExtendedInfo"] = "OperationStatusProvisionILRExtendedInfo"

      def initialize
        @objectType = "OperationStatusExtendedInfo"
      end

      attr_accessor :objectType


      #
      # Mapper for OperationStatusExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationStatusExtendedInfo',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'OperationStatusExtendedInfo',
            class_name: 'OperationStatusExtendedInfo',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
