# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Http message diagnostic settings.
    #
    class HttpMessageDiagnostic

      include MsRestAzure

      # @return [Array<String>] Array of HTTP Headers to log.
      attr_accessor :headers

      # @return [BodyDiagnosticSettings] Body logging settings.
      attr_accessor :body


      #
      # Mapper for HttpMessageDiagnostic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpMessageDiagnostic',
          type: {
            name: 'Composite',
            class_name: 'HttpMessageDiagnostic',
            model_properties: {
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headers',
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
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'body',
                type: {
                  name: 'Composite',
                  class_name: 'BodyDiagnosticSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
