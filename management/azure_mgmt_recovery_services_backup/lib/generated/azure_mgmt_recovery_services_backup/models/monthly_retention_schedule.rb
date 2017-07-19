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
    # Monthly retention schedule.
    #
    class MonthlyRetentionSchedule

      include MsRestAzure

      include MsRest::JSONable
      # @return [RetentionScheduleFormat] Retention schedule format type for
      # monthly retention policy. Possible values include: 'Invalid', 'Daily',
      # 'Weekly'
      attr_accessor :retention_schedule_format_type

      # @return [DailyRetentionFormat] Daily retention format for monthly
      # retention policy.
      attr_accessor :retention_schedule_daily

      # @return [WeeklyRetentionFormat] Weekly retention format for monthly
      # retention policy.
      attr_accessor :retention_schedule_weekly

      # @return [Array<DateTime>] Retention times of retention policy.
      attr_accessor :retention_times

      # @return [RetentionDuration] Retention duration of retention Policy.
      attr_accessor :retention_duration


      #
      # Mapper for MonthlyRetentionSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MonthlyRetentionSchedule',
          type: {
            name: 'Composite',
            class_name: 'MonthlyRetentionSchedule',
            model_properties: {
              retention_schedule_format_type: {
                required: false,
                serialized_name: 'retentionScheduleFormatType',
                type: {
                  name: 'String'
                }
              },
              retention_schedule_daily: {
                required: false,
                serialized_name: 'retentionScheduleDaily',
                type: {
                  name: 'Composite',
                  class_name: 'DailyRetentionFormat'
                }
              },
              retention_schedule_weekly: {
                required: false,
                serialized_name: 'retentionScheduleWeekly',
                type: {
                  name: 'Composite',
                  class_name: 'WeeklyRetentionFormat'
                }
              },
              retention_times: {
                required: false,
                serialized_name: 'retentionTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              retention_duration: {
                required: false,
                serialized_name: 'retentionDuration',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionDuration'
                }
              }
            }
          }
        }
      end
    end
  end
end
