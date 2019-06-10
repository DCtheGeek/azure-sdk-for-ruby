# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # A Custom Prebuilt model.
    #
    class CustomPrebuiltModel

      include MsRestAzure

      # @return The ID of the Entity Model.
      attr_accessor :id

      # @return [String] Name of the Entity Model.
      attr_accessor :name

      # @return [Integer] The type ID of the Entity Model.
      attr_accessor :type_id

      # @return [Enum] Possible values include: 'Entity Extractor',
      # 'Hierarchical Entity Extractor', 'Hierarchical Child Entity Extractor',
      # 'Composite Entity Extractor', 'List Entity Extractor', 'Prebuilt Entity
      # Extractor', 'Intent Classifier', 'Pattern.Any Entity Extractor',
      # 'Closed List Entity Extractor', 'Regex Entity Extractor'
      attr_accessor :readable_type

      # @return [String] The domain name.
      attr_accessor :custom_prebuilt_domain_name

      # @return [String] The intent name or entity name.
      attr_accessor :custom_prebuilt_model_name

      # @return [Array<EntityRole>]
      attr_accessor :roles


      #
      # Mapper for CustomPrebuiltModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomPrebuiltModel',
          type: {
            name: 'Composite',
            class_name: 'CustomPrebuiltModel',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeId',
                type: {
                  name: 'Number'
                }
              },
              readable_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'readableType',
                type: {
                  name: 'String'
                }
              },
              custom_prebuilt_domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customPrebuiltDomainName',
                type: {
                  name: 'String'
                }
              },
              custom_prebuilt_model_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customPrebuiltModelName',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityRoleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityRole'
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
