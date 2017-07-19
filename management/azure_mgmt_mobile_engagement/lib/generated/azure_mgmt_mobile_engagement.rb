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
require 'generated/azure_mgmt_mobile_engagement/module_definition'
require 'ms_rest_azure'

module Azure::ARM::MobileEngagement
  autoload :AppCollections,                                     'generated/azure_mgmt_mobile_engagement/app_collections.rb'
  autoload :Apps,                                               'generated/azure_mgmt_mobile_engagement/apps.rb'
  autoload :SupportedPlatforms,                                 'generated/azure_mgmt_mobile_engagement/supported_platforms.rb'
  autoload :Campaigns,                                          'generated/azure_mgmt_mobile_engagement/campaigns.rb'
  autoload :Devices,                                            'generated/azure_mgmt_mobile_engagement/devices.rb'
  autoload :ExportTasks,                                        'generated/azure_mgmt_mobile_engagement/export_tasks.rb'
  autoload :ImportTasks,                                        'generated/azure_mgmt_mobile_engagement/import_tasks.rb'
  autoload :EngagementManagementClient,                         'generated/azure_mgmt_mobile_engagement/engagement_management_client.rb'

  module Models
    autoload :CampaignState,                                      'generated/azure_mgmt_mobile_engagement/models/campaign_state.rb'
    autoload :ApiErrorError,                                      'generated/azure_mgmt_mobile_engagement/models/api_error_error.rb'
    autoload :ApiError,                                           'generated/azure_mgmt_mobile_engagement/models/api_error.rb'
    autoload :ExportTaskParameter,                                'generated/azure_mgmt_mobile_engagement/models/export_task_parameter.rb'
    autoload :AppListResult,                                      'generated/azure_mgmt_mobile_engagement/models/app_list_result.rb'
    autoload :DeviceTagsParameters,                               'generated/azure_mgmt_mobile_engagement/models/device_tags_parameters.rb'
    autoload :AppCollectionListResult,                            'generated/azure_mgmt_mobile_engagement/models/app_collection_list_result.rb'
    autoload :DeviceTagsResult,                                   'generated/azure_mgmt_mobile_engagement/models/device_tags_result.rb'
    autoload :SupportedPlatformsListResult,                       'generated/azure_mgmt_mobile_engagement/models/supported_platforms_list_result.rb'
    autoload :ExportOptions,                                      'generated/azure_mgmt_mobile_engagement/models/export_options.rb'
    autoload :CampaignTestSavedParameters,                        'generated/azure_mgmt_mobile_engagement/models/campaign_test_saved_parameters.rb'
    autoload :DateRangeExportTaskParameter,                       'generated/azure_mgmt_mobile_engagement/models/date_range_export_task_parameter.rb'
    autoload :Filter,                                             'generated/azure_mgmt_mobile_engagement/models/filter.rb'
    autoload :DeviceMeta,                                         'generated/azure_mgmt_mobile_engagement/models/device_meta.rb'
    autoload :NotificationOptions,                                'generated/azure_mgmt_mobile_engagement/models/notification_options.rb'
    autoload :CampaignsListResult,                                'generated/azure_mgmt_mobile_engagement/models/campaigns_list_result.rb'
    autoload :PollQuestionLocalization,                           'generated/azure_mgmt_mobile_engagement/models/poll_question_localization.rb'
    autoload :CampaignStatisticsResult,                           'generated/azure_mgmt_mobile_engagement/models/campaign_statistics_result.rb'
    autoload :CampaignLocalization,                               'generated/azure_mgmt_mobile_engagement/models/campaign_localization.rb'
    autoload :PollQuestionChoiceLocalization,                     'generated/azure_mgmt_mobile_engagement/models/poll_question_choice_localization.rb'
    autoload :FeedbackByDateRangeParameter,                       'generated/azure_mgmt_mobile_engagement/models/feedback_by_date_range_parameter.rb'
    autoload :ExportTaskListResult,                               'generated/azure_mgmt_mobile_engagement/models/export_task_list_result.rb'
    autoload :CampaignPushParameters,                             'generated/azure_mgmt_mobile_engagement/models/campaign_push_parameters.rb'
    autoload :CampaignPushResult,                                 'generated/azure_mgmt_mobile_engagement/models/campaign_push_result.rb'
    autoload :ImportTask,                                         'generated/azure_mgmt_mobile_engagement/models/import_task.rb'
    autoload :AppCollectionNameAvailability,                      'generated/azure_mgmt_mobile_engagement/models/app_collection_name_availability.rb'
    autoload :DeviceQueryResult,                                  'generated/azure_mgmt_mobile_engagement/models/device_query_result.rb'
    autoload :Criterion,                                          'generated/azure_mgmt_mobile_engagement/models/criterion.rb'
    autoload :DevicesQueryResult,                                 'generated/azure_mgmt_mobile_engagement/models/devices_query_result.rb'
    autoload :FeedbackByCampaignParameter,                        'generated/azure_mgmt_mobile_engagement/models/feedback_by_campaign_parameter.rb'
    autoload :DeviceInfo,                                         'generated/azure_mgmt_mobile_engagement/models/device_info.rb'
    autoload :ImportTaskListResult,                               'generated/azure_mgmt_mobile_engagement/models/import_task_list_result.rb'
    autoload :DeviceLocation,                                     'generated/azure_mgmt_mobile_engagement/models/device_location.rb'
    autoload :ExportTaskResult,                                   'generated/azure_mgmt_mobile_engagement/models/export_task_result.rb'
    autoload :Device,                                             'generated/azure_mgmt_mobile_engagement/models/device.rb'
    autoload :CampaignAudience,                                   'generated/azure_mgmt_mobile_engagement/models/campaign_audience.rb'
    autoload :App,                                                'generated/azure_mgmt_mobile_engagement/models/app.rb'
    autoload :AppCollection,                                      'generated/azure_mgmt_mobile_engagement/models/app_collection.rb'
    autoload :PollQuestionChoice,                                 'generated/azure_mgmt_mobile_engagement/models/poll_question_choice.rb'
    autoload :PollQuestion,                                       'generated/azure_mgmt_mobile_engagement/models/poll_question.rb'
    autoload :Campaign,                                           'generated/azure_mgmt_mobile_engagement/models/campaign.rb'
    autoload :CampaignTestNewParameters,                          'generated/azure_mgmt_mobile_engagement/models/campaign_test_new_parameters.rb'
    autoload :CampaignStateResult,                                'generated/azure_mgmt_mobile_engagement/models/campaign_state_result.rb'
    autoload :CarrierNameCriterion,                               'generated/azure_mgmt_mobile_engagement/models/carrier_name_criterion.rb'
    autoload :CarrierCountryCriterion,                            'generated/azure_mgmt_mobile_engagement/models/carrier_country_criterion.rb'
    autoload :FirmwareVersionCriterion,                           'generated/azure_mgmt_mobile_engagement/models/firmware_version_criterion.rb'
    autoload :DeviceManufacturerCriterion,                        'generated/azure_mgmt_mobile_engagement/models/device_manufacturer_criterion.rb'
    autoload :DeviceModelCriterion,                               'generated/azure_mgmt_mobile_engagement/models/device_model_criterion.rb'
    autoload :ApplicationVersionCriterion,                        'generated/azure_mgmt_mobile_engagement/models/application_version_criterion.rb'
    autoload :NetworkTypeCriterion,                               'generated/azure_mgmt_mobile_engagement/models/network_type_criterion.rb'
    autoload :LanguageCriterion,                                  'generated/azure_mgmt_mobile_engagement/models/language_criterion.rb'
    autoload :ScreenSizeCriterion,                                'generated/azure_mgmt_mobile_engagement/models/screen_size_criterion.rb'
    autoload :LocationCriterion,                                  'generated/azure_mgmt_mobile_engagement/models/location_criterion.rb'
    autoload :GeoFencingCriterion,                                'generated/azure_mgmt_mobile_engagement/models/geo_fencing_criterion.rb'
    autoload :AnnouncementFeedbackCriterion,                      'generated/azure_mgmt_mobile_engagement/models/announcement_feedback_criterion.rb'
    autoload :PollFeedbackCriterion,                              'generated/azure_mgmt_mobile_engagement/models/poll_feedback_criterion.rb'
    autoload :PollAnswerFeedbackCriterion,                        'generated/azure_mgmt_mobile_engagement/models/poll_answer_feedback_criterion.rb'
    autoload :DatapushFeedbackCriterion,                          'generated/azure_mgmt_mobile_engagement/models/datapush_feedback_criterion.rb'
    autoload :SegmentCriterion,                                   'generated/azure_mgmt_mobile_engagement/models/segment_criterion.rb'
    autoload :StringTagCriterion,                                 'generated/azure_mgmt_mobile_engagement/models/string_tag_criterion.rb'
    autoload :DateTagCriterion,                                   'generated/azure_mgmt_mobile_engagement/models/date_tag_criterion.rb'
    autoload :IntegerTagCriterion,                                'generated/azure_mgmt_mobile_engagement/models/integer_tag_criterion.rb'
    autoload :BooleanTagCriterion,                                'generated/azure_mgmt_mobile_engagement/models/boolean_tag_criterion.rb'
    autoload :EngageSubsetFilter,                                 'generated/azure_mgmt_mobile_engagement/models/engage_subset_filter.rb'
    autoload :EngageOldUsersFilter,                               'generated/azure_mgmt_mobile_engagement/models/engage_old_users_filter.rb'
    autoload :EngageNewUsersFilter,                               'generated/azure_mgmt_mobile_engagement/models/engage_new_users_filter.rb'
    autoload :EngageActiveUsersFilter,                            'generated/azure_mgmt_mobile_engagement/models/engage_active_users_filter.rb'
    autoload :EngageIdleUsersFilter,                              'generated/azure_mgmt_mobile_engagement/models/engage_idle_users_filter.rb'
    autoload :NativePushEnabledFilter,                            'generated/azure_mgmt_mobile_engagement/models/native_push_enabled_filter.rb'
    autoload :PushQuotaFilter,                                    'generated/azure_mgmt_mobile_engagement/models/push_quota_filter.rb'
    autoload :AppInfoFilter,                                      'generated/azure_mgmt_mobile_engagement/models/app_info_filter.rb'
    autoload :CampaignListResult,                                 'generated/azure_mgmt_mobile_engagement/models/campaign_list_result.rb'
    autoload :CampaignResult,                                     'generated/azure_mgmt_mobile_engagement/models/campaign_result.rb'
    autoload :ImportTaskResult,                                   'generated/azure_mgmt_mobile_engagement/models/import_task_result.rb'
    autoload :ProvisioningStates,                                 'generated/azure_mgmt_mobile_engagement/models/provisioning_states.rb'
    autoload :PushModes,                                          'generated/azure_mgmt_mobile_engagement/models/push_modes.rb'
    autoload :CampaignTypes,                                      'generated/azure_mgmt_mobile_engagement/models/campaign_types.rb'
    autoload :DeliveryTimes,                                      'generated/azure_mgmt_mobile_engagement/models/delivery_times.rb'
    autoload :NotificationTypes,                                  'generated/azure_mgmt_mobile_engagement/models/notification_types.rb'
    autoload :CampaignStates,                                     'generated/azure_mgmt_mobile_engagement/models/campaign_states.rb'
    autoload :CampaignFeedbacks,                                  'generated/azure_mgmt_mobile_engagement/models/campaign_feedbacks.rb'
    autoload :AudienceOperators,                                  'generated/azure_mgmt_mobile_engagement/models/audience_operators.rb'
    autoload :CampaignType,                                       'generated/azure_mgmt_mobile_engagement/models/campaign_type.rb'
    autoload :ExportState,                                        'generated/azure_mgmt_mobile_engagement/models/export_state.rb'
    autoload :ExportType,                                         'generated/azure_mgmt_mobile_engagement/models/export_type.rb'
    autoload :ExportFormat,                                       'generated/azure_mgmt_mobile_engagement/models/export_format.rb'
    autoload :JobStates,                                          'generated/azure_mgmt_mobile_engagement/models/job_states.rb'
    autoload :CampaignKinds,                                      'generated/azure_mgmt_mobile_engagement/models/campaign_kinds.rb'
  end
end
