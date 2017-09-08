# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StreamAnalytics
  module Models
    #
    # Describes how data from an input is serialized or how data is serialized
    # when written to an output in JSON format.
    #
    class JsonSerialization < Serialization

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "Json"
      end

      attr_accessor :type

      # @return [Encoding] Specifies the encoding of the incoming data in the
      # case of input and the encoding of outgoing data in the case of output.
      # Required on PUT (CreateOrReplace) requests. Possible values include:
      # 'UTF8'
      attr_accessor :encoding

      # @return [JsonOutputSerializationFormat] This property only applies to
      # JSON serialization of outputs only. It is not applicable to inputs.
      # This property specifies the format of the JSON the output will be
      # written in. The currently supported values are 'lineSeparated'
      # indicating the output will be formatted by having each JSON object
      # separated by a new line and 'array' indicating the output will be
      # formatted as an array of JSON objects. Default value is 'lineSeparated'
      # if left null. Possible values include: 'LineSeparated', 'Array'
      attr_accessor :format


      #
      # Mapper for JsonSerialization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Json',
          type: {
            name: 'Composite',
            class_name: 'JsonSerialization',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              encoding: {
                required: false,
                serialized_name: 'properties.encoding',
                type: {
                  name: 'String'
                }
              },
              format: {
                required: false,
                serialized_name: 'properties.format',
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