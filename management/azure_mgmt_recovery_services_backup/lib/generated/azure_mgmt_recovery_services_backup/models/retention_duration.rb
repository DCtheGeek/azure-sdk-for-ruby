# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Retention duration.
    #
    class RetentionDuration

      include MsRestAzure

      # @return [Integer] Count of duration types. Retention duration is
      # obtained by the counting the duration type Count times.
      # For example, when Count = 3 and DurationType = Weeks,
      # retention duration will be three weeks.
      attr_accessor :count

      # @return [RetentionDurationType] Retention duration type of retention
      # policy. Possible values include: 'Invalid', 'Days', 'Weeks',
      # 'Months', 'Years'
      attr_accessor :duration_type


      #
      # Mapper for RetentionDuration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RetentionDuration',
          type: {
            name: 'Composite',
            class_name: 'RetentionDuration',
            model_properties: {
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              duration_type: {
                required: false,
                serialized_name: 'durationType',
                type: {
                  name: 'Enum',
                  module: 'RetentionDurationType'
                }
              }
            }
          }
        }
      end
    end
  end
end