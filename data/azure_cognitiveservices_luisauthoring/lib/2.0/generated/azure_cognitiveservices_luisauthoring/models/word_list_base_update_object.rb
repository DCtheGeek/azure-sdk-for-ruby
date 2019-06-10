# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  module Models
    #
    # Object model for updating one of the list entity's sublists.
    #
    class WordListBaseUpdateObject

      include MsRestAzure

      # @return [String] The standard form that the list represents.
      attr_accessor :canonical_form

      # @return [Array<String>] List of synonym words.
      attr_accessor :list


      #
      # Mapper for WordListBaseUpdateObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WordListBaseUpdateObject',
          type: {
            name: 'Composite',
            class_name: 'WordListBaseUpdateObject',
            model_properties: {
              canonical_form: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canonicalForm',
                type: {
                  name: 'String'
                }
              },
              list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'list',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
