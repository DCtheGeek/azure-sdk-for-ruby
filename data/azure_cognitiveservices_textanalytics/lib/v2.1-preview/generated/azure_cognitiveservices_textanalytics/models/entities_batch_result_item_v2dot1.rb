# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::TextAnalytics::V2_1_preview
  module Models
    #
    # Model object.
    #
    #
    class EntitiesBatchResultItemV2dot1

      include MsRestAzure

      # @return [String] Unique document identifier.
      attr_accessor :id

      # @return [Array<EntityRecordV2dot1>] Recognized entities in the
      # document.
      attr_accessor :entities


      #
      # Mapper for EntitiesBatchResultItemV2dot1 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntitiesBatchResultItemV2dot1',
          type: {
            name: 'Composite',
            class_name: 'EntitiesBatchResultItemV2dot1',
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
              entities: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityRecordV2dot1ElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityRecordV2dot1'
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