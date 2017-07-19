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
    # This class is used to send blob details after exporting jobs.
    #
    class ExportJobsOperationResultInfo < OperationResultInfoBase

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @objectType = "ExportJobsOperationResultInfo"
      end

      attr_accessor :objectType

      # @return [String] URL of the blob into which the serialized string of
      # list of jobs is exported.
      attr_accessor :blob_url

      # @return [String] SAS key to access the blob. It expires in 15 mins.
      attr_accessor :blob_sas_key


      #
      # Mapper for ExportJobsOperationResultInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExportJobsOperationResultInfo',
          type: {
            name: 'Composite',
            class_name: 'ExportJobsOperationResultInfo',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              blob_url: {
                required: false,
                serialized_name: 'blobUrl',
                type: {
                  name: 'String'
                }
              },
              blob_sas_key: {
                required: false,
                serialized_name: 'blobSasKey',
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
