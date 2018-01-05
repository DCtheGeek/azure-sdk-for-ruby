# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # A gallery image.
    #
    class GalleryImage < Resource

      include MsRestAzure

      # @return [String] The author of the gallery image.
      attr_accessor :author

      # @return [DateTime] The creation date of the gallery image.
      attr_accessor :created_date

      # @return [String] The description of the gallery image.
      attr_accessor :description

      # @return [GalleryImageReference] The image reference of the gallery
      # image.
      attr_accessor :image_reference

      # @return [String] The icon of the gallery image.
      attr_accessor :icon

      # @return [Boolean] Indicates whether this gallery image is enabled.
      attr_accessor :enabled


      #
      # Mapper for GalleryImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryImage',
          type: {
            name: 'Composite',
            class_name: 'GalleryImage',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
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
              author: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              image_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryImageReference'
                }
              },
              icon: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.icon',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end