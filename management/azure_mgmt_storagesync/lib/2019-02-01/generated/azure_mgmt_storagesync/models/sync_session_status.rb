# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_02_01
  module Models
    #
    # Sync Session status object.
    #
    class SyncSessionStatus

      include MsRestAzure

      # @return [Integer] Last sync result (HResult)
      attr_accessor :last_sync_result

      # @return [DateTime] Last sync timestamp
      attr_accessor :last_sync_timestamp

      # @return [DateTime] Last sync success timestamp
      attr_accessor :last_sync_success_timestamp

      # @return [Integer] Last sync per item error count.
      attr_accessor :last_sync_per_item_error_count

      # @return [Integer] Count of persistent files not syncing. Reserved for
      # future use.
      attr_accessor :persistent_files_not_syncing_count

      # @return [Integer] Count of transient files not syncing. Reserved for
      # future use.
      attr_accessor :transient_files_not_syncing_count

      # @return [Array<FilesNotSyncingError>] Array of per-item errors coming
      # from the last sync session. Reserved for future use.
      attr_accessor :files_not_syncing_errors


      #
      # Mapper for SyncSessionStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncSessionStatus',
          type: {
            name: 'Composite',
            class_name: 'SyncSessionStatus',
            model_properties: {
              last_sync_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSyncResult',
                type: {
                  name: 'Number'
                }
              },
              last_sync_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSyncTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              last_sync_success_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSyncSuccessTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              last_sync_per_item_error_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSyncPerItemErrorCount',
                type: {
                  name: 'Number'
                }
              },
              persistent_files_not_syncing_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'persistentFilesNotSyncingCount',
                type: {
                  name: 'Number'
                }
              },
              transient_files_not_syncing_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'transientFilesNotSyncingCount',
                type: {
                  name: 'Number'
                }
              },
              files_not_syncing_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'filesNotSyncingErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FilesNotSyncingErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FilesNotSyncingError'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
