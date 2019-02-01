# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Describes the properties of a TransformOutput, which are the rules to be
    # applied while generating the desired output.
    #
    class TransformOutput

      include MsRestAzure

      # @return [OnErrorType] A Transform can define more than one outputs.
      # This property defines what the service should do when one output fails
      # - either continue to produce other outputs, or, stop the other outputs.
      # The default is stop. Possible values include: 'StopProcessingJob',
      # 'ContinueJob'
      attr_accessor :on_error

      # @return [Priority] Sets the relative priority of the TransformOutputs
      # within a Transform. This sets the priority that the service uses for
      # processing TransformOutputs. The default priority is Normal. Possible
      # values include: 'Low', 'Normal', 'High'
      attr_accessor :relative_priority

      # @return [Preset] Preset that describes the operations that will be used
      # to modify, transcode, or extract insights from the source file to
      # generate the output.
      attr_accessor :preset


      #
      # Mapper for TransformOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TransformOutput',
          type: {
            name: 'Composite',
            class_name: 'TransformOutput',
            model_properties: {
              on_error: {
                required: false,
                serialized_name: 'onError',
                type: {
                  name: 'Enum',
                  module: 'OnErrorType'
                }
              },
              relative_priority: {
                required: false,
                serialized_name: 'relativePriority',
                type: {
                  name: 'Enum',
                  module: 'Priority'
                }
              },
              preset: {
                required: true,
                serialized_name: 'preset',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'Preset',
                  class_name: 'Preset'
                }
              }
            }
          }
        }
      end
    end
  end
end
