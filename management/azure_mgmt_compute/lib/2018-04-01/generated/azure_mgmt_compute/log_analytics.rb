# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_04_01
  #
  # Compute Client
  #
  class LogAnalytics
    include MsRestAzure

    #
    # Creates and initializes a new instance of the LogAnalytics class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ComputeManagementClient] reference to the ComputeManagementClient
    attr_reader :client

    #
    # Export logs that show Api requests made by this subscription in the given
    # time window to show throttling activities.
    #
    # @param parameters [RequestRateByIntervalInput] Parameters supplied to the
    # LogAnalytics getRequestRateByInterval Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LogAnalyticsOperationResult] operation results.
    #
    def export_request_rate_by_interval(parameters, location, custom_headers:nil)
      response = export_request_rate_by_interval_async(parameters, location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param parameters [RequestRateByIntervalInput] Parameters supplied to the
    # LogAnalytics getRequestRateByInterval Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def export_request_rate_by_interval_async(parameters, location, custom_headers:nil)
      # Send request
      promise = begin_export_request_rate_by_interval_async(parameters, location, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Compute::Mgmt::V2018_04_01::Models::LogAnalyticsOperationResult.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::AZURE_ASYNC_OPERATION)
      end

      promise
    end

    #
    # Export logs that show total throttled Api requests for this subscription in
    # the given time window.
    #
    # @param parameters [ThrottledRequestsInput] Parameters supplied to the
    # LogAnalytics getThrottledRequests Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LogAnalyticsOperationResult] operation results.
    #
    def export_throttled_requests(parameters, location, custom_headers:nil)
      response = export_throttled_requests_async(parameters, location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param parameters [ThrottledRequestsInput] Parameters supplied to the
    # LogAnalytics getThrottledRequests Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def export_throttled_requests_async(parameters, location, custom_headers:nil)
      # Send request
      promise = begin_export_throttled_requests_async(parameters, location, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Compute::Mgmt::V2018_04_01::Models::LogAnalyticsOperationResult.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method, FinalStateVia::AZURE_ASYNC_OPERATION)
      end

      promise
    end

    #
    # Export logs that show Api requests made by this subscription in the given
    # time window to show throttling activities.
    #
    # @param parameters [RequestRateByIntervalInput] Parameters supplied to the
    # LogAnalytics getRequestRateByInterval Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LogAnalyticsOperationResult] operation results.
    #
    def begin_export_request_rate_by_interval(parameters, location, custom_headers:nil)
      response = begin_export_request_rate_by_interval_async(parameters, location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Export logs that show Api requests made by this subscription in the given
    # time window to show throttling activities.
    #
    # @param parameters [RequestRateByIntervalInput] Parameters supplied to the
    # LogAnalytics getRequestRateByInterval Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_export_request_rate_by_interval_with_http_info(parameters, location, custom_headers:nil)
      begin_export_request_rate_by_interval_async(parameters, location, custom_headers:custom_headers).value!
    end

    #
    # Export logs that show Api requests made by this subscription in the given
    # time window to show throttling activities.
    #
    # @param parameters [RequestRateByIntervalInput] Parameters supplied to the
    # LogAnalytics getRequestRateByInterval Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_export_request_rate_by_interval_async(parameters, location, custom_headers:nil)
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, "'location' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !location.nil? && location.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Compute::Mgmt::V2018_04_01::Models::RequestRateByIntervalInput.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/logAnalytics/apiAccess/getRequestRateByInterval'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Compute::Mgmt::V2018_04_01::Models::LogAnalyticsOperationResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Export logs that show total throttled Api requests for this subscription in
    # the given time window.
    #
    # @param parameters [ThrottledRequestsInput] Parameters supplied to the
    # LogAnalytics getThrottledRequests Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LogAnalyticsOperationResult] operation results.
    #
    def begin_export_throttled_requests(parameters, location, custom_headers:nil)
      response = begin_export_throttled_requests_async(parameters, location, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Export logs that show total throttled Api requests for this subscription in
    # the given time window.
    #
    # @param parameters [ThrottledRequestsInput] Parameters supplied to the
    # LogAnalytics getThrottledRequests Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_export_throttled_requests_with_http_info(parameters, location, custom_headers:nil)
      begin_export_throttled_requests_async(parameters, location, custom_headers:custom_headers).value!
    end

    #
    # Export logs that show total throttled Api requests for this subscription in
    # the given time window.
    #
    # @param parameters [ThrottledRequestsInput] Parameters supplied to the
    # LogAnalytics getThrottledRequests Api.
    # @param location [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_export_throttled_requests_async(parameters, location, custom_headers:nil)
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, 'location is nil' if location.nil?
      fail ArgumentError, "'location' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !location.nil? && location.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Compute::Mgmt::V2018_04_01::Models::ThrottledRequestsInput.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/logAnalytics/apiAccess/getThrottledRequests'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'location' => location,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Compute::Mgmt::V2018_04_01::Models::LogAnalyticsOperationResult.mapper()
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
