# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Properties of the database full schema.
    #
    class SyncFullSchemaProperties

      include MsRestAzure

      # @return [Array<SyncFullSchemaTable>] List of tables in the database
      # full schema.
      attr_accessor :tables

      # @return [DateTime] Last update time of the database schema.
      attr_accessor :last_update_time


      #
      # Mapper for SyncFullSchemaProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncFullSchemaProperties',
          type: {
            name: 'Composite',
            class_name: 'SyncFullSchemaProperties',
            model_properties: {
              tables: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SyncFullSchemaTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SyncFullSchemaTable'
                      }
                  }
                }
              },
              last_update_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastUpdateTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end