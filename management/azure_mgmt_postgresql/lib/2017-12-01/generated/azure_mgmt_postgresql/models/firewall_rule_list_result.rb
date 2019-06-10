# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01
  module Models
    #
    # A list of firewall rules.
    #
    class FirewallRuleListResult

      include MsRestAzure

      # @return [Array<FirewallRule>] The list of firewall rules in a server.
      attr_accessor :value


      #
      # Mapper for FirewallRuleListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'FirewallRuleListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FirewallRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FirewallRule'
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
