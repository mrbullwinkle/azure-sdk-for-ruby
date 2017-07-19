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
require 'generated/azure_mgmt_resources/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Resources
  autoload :Deployments,                                        'generated/azure_mgmt_resources/deployments.rb'
  autoload :Providers,                                          'generated/azure_mgmt_resources/providers.rb'
  autoload :Resources,                                          'generated/azure_mgmt_resources/resources.rb'
  autoload :ResourceGroups,                                     'generated/azure_mgmt_resources/resource_groups.rb'
  autoload :Tags,                                               'generated/azure_mgmt_resources/tags.rb'
  autoload :DeploymentOperations,                               'generated/azure_mgmt_resources/deployment_operations.rb'
  autoload :ResourceManagementClient,                           'generated/azure_mgmt_resources/resource_management_client.rb'

  module Models
    autoload :Sku,                                                'generated/azure_mgmt_resources/models/sku.rb'
    autoload :Identity,                                           'generated/azure_mgmt_resources/models/identity.rb'
    autoload :GenericResourceFilter,                              'generated/azure_mgmt_resources/models/generic_resource_filter.rb'
    autoload :ResourceGroupFilter,                                'generated/azure_mgmt_resources/models/resource_group_filter.rb'
    autoload :ParametersLink,                                     'generated/azure_mgmt_resources/models/parameters_link.rb'
    autoload :ResourceListResult,                                 'generated/azure_mgmt_resources/models/resource_list_result.rb'
    autoload :DeploymentProperties,                               'generated/azure_mgmt_resources/models/deployment_properties.rb'
    autoload :ResourceGroupProperties,                            'generated/azure_mgmt_resources/models/resource_group_properties.rb'
    autoload :DeploymentExportResult,                             'generated/azure_mgmt_resources/models/deployment_export_result.rb'
    autoload :ResourceGroup,                                      'generated/azure_mgmt_resources/models/resource_group.rb'
    autoload :AliasPathType,                                      'generated/azure_mgmt_resources/models/alias_path_type.rb'
    autoload :ResourceGroupPatchable,                             'generated/azure_mgmt_resources/models/resource_group_patchable.rb'
    autoload :ProviderResourceType,                               'generated/azure_mgmt_resources/models/provider_resource_type.rb'
    autoload :ResourceGroupListResult,                            'generated/azure_mgmt_resources/models/resource_group_list_result.rb'
    autoload :BasicDependency,                                    'generated/azure_mgmt_resources/models/basic_dependency.rb'
    autoload :ResourcesMoveInfo,                                  'generated/azure_mgmt_resources/models/resources_move_info.rb'
    autoload :DeploymentPropertiesExtended,                       'generated/azure_mgmt_resources/models/deployment_properties_extended.rb'
    autoload :ExportTemplateRequest,                              'generated/azure_mgmt_resources/models/export_template_request.rb'
    autoload :DeploymentExtended,                                 'generated/azure_mgmt_resources/models/deployment_extended.rb'
    autoload :TagCount,                                           'generated/azure_mgmt_resources/models/tag_count.rb'
    autoload :ProviderListResult,                                 'generated/azure_mgmt_resources/models/provider_list_result.rb'
    autoload :TagValue,                                           'generated/azure_mgmt_resources/models/tag_value.rb'
    autoload :DeploymentExtendedFilter,                           'generated/azure_mgmt_resources/models/deployment_extended_filter.rb'
    autoload :TagDetails,                                         'generated/azure_mgmt_resources/models/tag_details.rb'
    autoload :DebugSetting,                                       'generated/azure_mgmt_resources/models/debug_setting.rb'
    autoload :TagsListResult,                                     'generated/azure_mgmt_resources/models/tags_list_result.rb'
    autoload :ResourceManagementErrorWithDetails,                 'generated/azure_mgmt_resources/models/resource_management_error_with_details.rb'
    autoload :TargetResource,                                     'generated/azure_mgmt_resources/models/target_resource.rb'
    autoload :Provider,                                           'generated/azure_mgmt_resources/models/provider.rb'
    autoload :HttpMessage,                                        'generated/azure_mgmt_resources/models/http_message.rb'
    autoload :DeploymentValidateResult,                           'generated/azure_mgmt_resources/models/deployment_validate_result.rb'
    autoload :DeploymentOperationProperties,                      'generated/azure_mgmt_resources/models/deployment_operation_properties.rb'
    autoload :Plan,                                               'generated/azure_mgmt_resources/models/plan.rb'
    autoload :DeploymentOperation,                                'generated/azure_mgmt_resources/models/deployment_operation.rb'
    autoload :Deployment,                                         'generated/azure_mgmt_resources/models/deployment.rb'
    autoload :DeploymentOperationsListResult,                     'generated/azure_mgmt_resources/models/deployment_operations_list_result.rb'
    autoload :Dependency,                                         'generated/azure_mgmt_resources/models/dependency.rb'
    autoload :ResourceProviderOperationDisplayProperties,         'generated/azure_mgmt_resources/models/resource_provider_operation_display_properties.rb'
    autoload :TemplateLink,                                       'generated/azure_mgmt_resources/models/template_link.rb'
    autoload :DeploymentListResult,                               'generated/azure_mgmt_resources/models/deployment_list_result.rb'
    autoload :AliasType,                                          'generated/azure_mgmt_resources/models/alias_type.rb'
    autoload :ResourceGroupExportResult,                          'generated/azure_mgmt_resources/models/resource_group_export_result.rb'
    autoload :GenericResource,                                    'generated/azure_mgmt_resources/models/generic_resource.rb'
    autoload :DeploymentMode,                                     'generated/azure_mgmt_resources/models/deployment_mode.rb'
    autoload :ResourceIdentityType,                               'generated/azure_mgmt_resources/models/resource_identity_type.rb'
  end
end
