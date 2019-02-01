# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # Describes the properties for producing a series of PNG images from the
    # input video.
    #
    class PngImage < Image

      include MsRestAzure


      def initialize
        @@odatatype = "#Microsoft.Media.PngImage"
      end

      attr_accessor :@odatatype

      # @return [Array<PngLayer>] A collection of output PNG image layers to be
      # produced by the encoder.
      attr_accessor :layers


      #
      # Mapper for PngImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.PngImage',
          type: {
            name: 'Composite',
            class_name: 'PngImage',
            model_properties: {
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              @odatatype: {
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_frame_interval: {
                required: false,
                serialized_name: 'keyFrameInterval',
                type: {
                  name: 'TimeSpan'
                }
              },
              stretch_mode: {
                required: false,
                serialized_name: 'stretchMode',
                type: {
                  name: 'String'
                }
              },
              start: {
                required: false,
                serialized_name: 'start',
                type: {
                  name: 'String'
                }
              },
              step: {
                required: false,
                serialized_name: 'step',
                type: {
                  name: 'String'
                }
              },
              range: {
                required: false,
                serialized_name: 'range',
                type: {
                  name: 'String'
                }
              },
              layers: {
                required: false,
                serialized_name: 'layers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PngLayerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PngLayer'
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
