# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # Secrets related to a Machine Learning compute based on AKS.
    #
    class AksComputeSecrets < ComputeSecrets

      include MsRestAzure


      def initialize
        @computeType = "AKS"
      end

      attr_accessor :computeType

      # @return [String] Content of kubeconfig file that can be used to connect
      # to the Kubernetes cluster.
      attr_accessor :user_kube_config

      # @return [String] Content of kubeconfig file that can be used to connect
      # to the Kubernetes cluster.
      attr_accessor :admin_kube_config

      # @return [String] Image registry pull secret.
      attr_accessor :image_pull_secret_name


      #
      # Mapper for AksComputeSecrets class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AKS',
          type: {
            name: 'Composite',
            class_name: 'AksComputeSecrets',
            model_properties: {
              computeType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'computeType',
                type: {
                  name: 'String'
                }
              },
              user_kube_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userKubeConfig',
                type: {
                  name: 'String'
                }
              },
              admin_kube_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adminKubeConfig',
                type: {
                  name: 'String'
                }
              },
              image_pull_secret_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imagePullSecretName',
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