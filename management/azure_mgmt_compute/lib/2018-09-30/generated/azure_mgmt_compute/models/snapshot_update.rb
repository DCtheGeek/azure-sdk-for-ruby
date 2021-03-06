# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_09_30
  module Models
    #
    # Snapshot update resource.
    #
    class SnapshotUpdate

      include MsRestAzure

      # @return [OperatingSystemTypes] the Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [Integer] If creationData.createOption is Empty, this field is
      # mandatory and it indicates the size of the VHD to create. If this field
      # is present for updates or creation with other options, it indicates a
      # resize. Resizes are only allowed if the disk is not attached to a
      # running VM, and can only increase the disk's size.
      attr_accessor :disk_size_gb

      # @return [EncryptionSettingsCollection] Encryption settings collection
      # used be Azure Disk Encryption, can contain multiple encryption settings
      # per disk or snapshot.
      attr_accessor :encryption_settings_collection

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [SnapshotSku]
      attr_accessor :sku


      #
      # Mapper for SnapshotUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SnapshotUpdate',
          type: {
            name: 'Composite',
            class_name: 'SnapshotUpdate',
            model_properties: {
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              encryption_settings_collection: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryptionSettingsCollection',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionSettingsCollection'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SnapshotSku'
                }
              }
            }
          }
        }
      end
    end
  end
end
