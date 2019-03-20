# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::LabServices::Mgmt::V2018_10_15
  module Models
    #
    # Represents a lab.
    #
    class Lab < Resource

      include MsRestAzure

      # @return [Integer] Maximum number of users allowed in the lab.
      attr_accessor :max_users_in_lab

      # @return [Integer] Maximum value MaxUsersInLab can be set to, as
      # specified by the service
      attr_accessor :user_quota

      # @return [String] Invitation code that users can use to join a lab.
      attr_accessor :invitation_code

      # @return [String] Object id of the user that created the lab.
      attr_accessor :created_by_object_id

      # @return [Duration] Maximum duration a user can use an environment for
      # in the lab.
      attr_accessor :usage_quota

      # @return [LabUserAccessMode] Lab user access mode (open to all vs.
      # restricted to those listed on the lab). Possible values include:
      # 'Restricted', 'Open'
      attr_accessor :user_access_mode

      # @return [String] Lab creator name
      attr_accessor :created_by_user_principal_name

      # @return [DateTime] Creation date for the lab
      attr_accessor :created_date

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [LatestOperationResult] The details of the latest operation.
      # ex: status, error
      attr_accessor :latest_operation_result


      #
      # Mapper for Lab class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Lab',
          type: {
            name: 'Composite',
            class_name: 'Lab',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              max_users_in_lab: {
                required: false,
                serialized_name: 'properties.maxUsersInLab',
                type: {
                  name: 'Number'
                }
              },
              user_quota: {
                required: false,
                read_only: true,
                serialized_name: 'properties.userQuota',
                type: {
                  name: 'Number'
                }
              },
              invitation_code: {
                required: false,
                read_only: true,
                serialized_name: 'properties.invitationCode',
                type: {
                  name: 'String'
                }
              },
              created_by_object_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdByObjectId',
                type: {
                  name: 'String'
                }
              },
              usage_quota: {
                required: false,
                serialized_name: 'properties.usageQuota',
                type: {
                  name: 'TimeSpan'
                }
              },
              user_access_mode: {
                required: false,
                serialized_name: 'properties.userAccessMode',
                type: {
                  name: 'String'
                }
              },
              created_by_user_principal_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdByUserPrincipalName',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              latest_operation_result: {
                required: false,
                read_only: true,
                serialized_name: 'properties.latestOperationResult',
                type: {
                  name: 'Composite',
                  class_name: 'LatestOperationResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
