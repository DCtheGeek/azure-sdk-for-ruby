# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Cache details.
    #
    class CacheContract < Resource

      include MsRestAzure

      # @return [String] Cache description
      attr_accessor :description

      # @return [String] Runtime connection string to cache
      attr_accessor :connection_string

      # @return [String] Original uri of entity in external system cache points
      # to
      attr_accessor :resource_id


      #
      # Mapper for CacheContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CacheContract',
          type: {
            name: 'Composite',
            class_name: 'CacheContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              connection_string: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.connectionString',
                constraints: {
                  MaxLength: 300
                },
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
                constraints: {
                  MaxLength: 2000
                },
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
