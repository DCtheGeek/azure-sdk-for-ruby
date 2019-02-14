# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  #
  # The DevTest Labs Client.
  #
  class PolicySets
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PolicySets class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DevTestLabsClient] reference to the DevTestLabsClient
    attr_reader :client

    #
    # Evaluates lab policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the policy set.
    # @param evaluate_policies_request [EvaluatePoliciesRequest] Request body for
    # evaluating a policy set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [EvaluatePoliciesResponse] operation results.
    #
    def evaluate_policies(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers = nil)
      response = evaluate_policies_async(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Evaluates lab policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the policy set.
    # @param evaluate_policies_request [EvaluatePoliciesRequest] Request body for
    # evaluating a policy set.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def evaluate_policies_with_http_info(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers = nil)
      evaluate_policies_async(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers).value!
    end

    #
    # Evaluates lab policy.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param lab_name [String] The name of the lab.
    # @param name [String] The name of the policy set.
    # @param evaluate_policies_request [EvaluatePoliciesRequest] Request body for
    # evaluating a policy set.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def evaluate_policies_async(resource_group_name, lab_name, name, evaluate_policies_request, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'lab_name is nil' if lab_name.nil?
      fail ArgumentError, 'name is nil' if name.nil?
      fail ArgumentError, 'evaluate_policies_request is nil' if evaluate_policies_request.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesRequest.mapper()
      request_content = @client.serialize(request_mapper,  evaluate_policies_request)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/policysets/{name}/evaluatePolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'labName' => lab_name,'name' => name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DevTestLabs::Mgmt::V2018_09_15::Models::EvaluatePoliciesResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
