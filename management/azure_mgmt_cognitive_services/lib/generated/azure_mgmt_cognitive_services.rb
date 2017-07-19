# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'generated/azure_mgmt_cognitive_services/module_definition'
require 'ms_rest_azure'

module Azure::ARM::CognitiveServices
  autoload :CognitiveServicesAccounts,                          'generated/azure_mgmt_cognitive_services/cognitive_services_accounts.rb'
  autoload :Accounts,                                           'generated/azure_mgmt_cognitive_services/accounts.rb'
  autoload :Operations,                                         'generated/azure_mgmt_cognitive_services/operations.rb'
  autoload :CheckSkuAvailability,                               'generated/azure_mgmt_cognitive_services/check_sku_availability.rb'
  autoload :CognitiveServicesManagementClient,                  'generated/azure_mgmt_cognitive_services/cognitive_services_management_client.rb'

  module Models
    autoload :CognitiveServicesAccountEnumerateSkusResult,        'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_enumerate_skus_result.rb'
    autoload :ErrorBody,                                          'generated/azure_mgmt_cognitive_services/models/error_body.rb'
    autoload :CognitiveServicesAccountCreateParameters,           'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_create_parameters.rb'
    autoload :Error,                                              'generated/azure_mgmt_cognitive_services/models/error.rb'
    autoload :CognitiveServicesAccount,                           'generated/azure_mgmt_cognitive_services/models/cognitive_services_account.rb'
    autoload :OperationDisplayInfo,                               'generated/azure_mgmt_cognitive_services/models/operation_display_info.rb'
    autoload :CognitiveServicesAccountKeys,                       'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_keys.rb'
    autoload :OperationEntity,                                    'generated/azure_mgmt_cognitive_services/models/operation_entity.rb'
    autoload :CognitiveServicesResourceAndSku,                    'generated/azure_mgmt_cognitive_services/models/cognitive_services_resource_and_sku.rb'
    autoload :OperationEntityListResult,                          'generated/azure_mgmt_cognitive_services/models/operation_entity_list_result.rb'
    autoload :CognitiveServicesAccountUpdateParameters,           'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_update_parameters.rb'
    autoload :CheckSkuAvailabilityParameter,                      'generated/azure_mgmt_cognitive_services/models/check_sku_availability_parameter.rb'
    autoload :RegenerateKeyParameters,                            'generated/azure_mgmt_cognitive_services/models/regenerate_key_parameters.rb'
    autoload :CheckSkuAvailabilityResult,                         'generated/azure_mgmt_cognitive_services/models/check_sku_availability_result.rb'
    autoload :CognitiveServicesAccountListResult,                 'generated/azure_mgmt_cognitive_services/models/cognitive_services_account_list_result.rb'
    autoload :CheckSkuAvailabilityResultList,                     'generated/azure_mgmt_cognitive_services/models/check_sku_availability_result_list.rb'
    autoload :Sku,                                                'generated/azure_mgmt_cognitive_services/models/sku.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_cognitive_services/models/sku_name.rb'
    autoload :SkuTier,                                            'generated/azure_mgmt_cognitive_services/models/sku_tier.rb'
    autoload :Kind,                                               'generated/azure_mgmt_cognitive_services/models/kind.rb'
    autoload :ProvisioningState,                                  'generated/azure_mgmt_cognitive_services/models/provisioning_state.rb'
    autoload :KeyName,                                            'generated/azure_mgmt_cognitive_services/models/key_name.rb'
  end
end
