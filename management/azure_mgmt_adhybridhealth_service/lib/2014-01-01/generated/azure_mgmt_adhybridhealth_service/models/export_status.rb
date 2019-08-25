# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The details of the export status.
    #
    class ExportStatus

      include MsRestAzure

      # @return The id of the service for whom the export status is being
      # reported.
      attr_accessor :service_id

      # @return The server Id for whom the export status is being reported.
      attr_accessor :service_member_id

      # @return [DateTime] The date and time when the export ended.
      attr_accessor :end_time

      # @return [String] The run step result Id.
      attr_accessor :run_step_result_id


      #
      # Mapper for ExportStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExportStatus',
          type: {
            name: 'Composite',
            class_name: 'ExportStatus',
            model_properties: {
              service_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceId',
                type: {
                  name: 'String'
                }
              },
              service_member_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceMemberId',
                type: {
                  name: 'String'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              run_step_result_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'runStepResultId',
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