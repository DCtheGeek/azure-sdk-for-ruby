# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties of a daily schedule.
    #
    class DayDetails

      include MsRestAzure

      # @return [String] The time of day the schedule will occur.
      attr_accessor :time


      #
      # Mapper for DayDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DayDetails',
          type: {
            name: 'Composite',
            class_name: 'DayDetails',
            model_properties: {
              time: {
                required: false,
                serialized_name: 'time',
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
