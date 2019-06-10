# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The task that has the ARM resource and task properties.
    # The task will have all information to schedule a run against it.
    #
    class Task < Resource

      include MsRestAzure

      # @return [ProvisioningState] The provisioning state of the task.
      # Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Failed', 'Canceled'
      attr_accessor :provisioning_state

      # @return [DateTime] The creation date of task.
      attr_accessor :creation_date

      # @return [TaskStatus] The current status of task. Possible values
      # include: 'Disabled', 'Enabled'
      attr_accessor :status

      # @return [PlatformProperties] The platform properties against which the
      # run has to happen.
      attr_accessor :platform

      # @return [AgentProperties] The machine configuration of the run agent.
      attr_accessor :agent_configuration

      # @return [Integer] Run timeout in seconds. Default value: 3600 .
      attr_accessor :timeout

      # @return [TaskStepProperties] The properties of a task step.
      attr_accessor :step

      # @return [TriggerProperties] The properties that describe all triggers
      # for the task.
      attr_accessor :trigger

      # @return [Credentials] The properties that describes a set of
      # credentials that will be used when this run is invoked.
      attr_accessor :credentials


      #
      # Mapper for Task class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Task',
          type: {
            name: 'Composite',
            class_name: 'Task',
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
                required: true,
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              platform: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.platform',
                type: {
                  name: 'Composite',
                  class_name: 'PlatformProperties'
                }
              },
              agent_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.agentConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AgentProperties'
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeout',
                default_value: 3600,
                constraints: {
                  InclusiveMaximum: 28800,
                  InclusiveMinimum: 300
                },
                type: {
                  name: 'Number'
                }
              },
              step: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.step',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'TaskStepProperties',
                  class_name: 'TaskStepProperties'
                }
              },
              trigger: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.trigger',
                type: {
                  name: 'Composite',
                  class_name: 'TriggerProperties'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.credentials',
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
