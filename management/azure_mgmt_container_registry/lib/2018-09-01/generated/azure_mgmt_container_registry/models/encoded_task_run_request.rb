# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The parameters for a quick task run request.
    #
    class EncodedTaskRunRequest < RunRequest

      include MsRestAzure


      def initialize
        @type = "EncodedTaskRunRequest"
      end

      attr_accessor :type

      # @return [String] Base64 encoded value of the template/definition file
      # content.
      attr_accessor :encoded_task_content

      # @return [String] Base64 encoded value of the parameters/values file
      # content.
      attr_accessor :encoded_values_content

      # @return [Array<SetValue>] The collection of overridable values that can
      # be passed when running a task.
      attr_accessor :values

      # @return [Integer] Run timeout in seconds. Default value: 3600 .
      attr_accessor :timeout

      # @return [PlatformProperties] The platform properties against which the
      # run has to happen.
      attr_accessor :platform

      # @return [AgentProperties] The machine configuration of the run agent.
      attr_accessor :agent_configuration

      # @return [String] The URL(absolute or relative) of the source context.
      # It can be an URL to a tar or git repository.
      # If it is relative URL, the relative path should be obtained from
      # calling listBuildSourceUploadUrl API.
      attr_accessor :source_location

      # @return [Credentials] The properties that describes a set of
      # credentials that will be used when this run is invoked.
      attr_accessor :credentials


      #
      # Mapper for EncodedTaskRunRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EncodedTaskRunRequest',
          type: {
            name: 'Composite',
            class_name: 'EncodedTaskRunRequest',
            model_properties: {
              is_archive_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isArchiveEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              encoded_task_content: {
                client_side_validation: true,
                required: true,
                serialized_name: 'encodedTaskContent',
                type: {
                  name: 'String'
                }
              },
              encoded_values_content: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encodedValuesContent',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SetValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SetValue'
                      }
                  }
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeout',
                default_value: 3600,
                constraints: {
                  InclusiveMaximum: 28800,
                  InclusiveMinimum: 300
                },
                type: {
                  name: 'Number'
                }
              },
              platform: {
                client_side_validation: true,
                required: true,
                serialized_name: 'platform',
                type: {
                  name: 'Composite',
                  class_name: 'PlatformProperties'
                }
              },
              agent_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AgentProperties'
                }
              },
              source_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceLocation',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'credentials',
                type: {
                  name: 'Composite',
                  class_name: 'Credentials'
                }
              }
            }
          }
        }
      end
    end
  end
end
