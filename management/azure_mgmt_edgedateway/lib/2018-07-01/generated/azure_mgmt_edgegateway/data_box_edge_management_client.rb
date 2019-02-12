# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_07_01
  #
  # A service client - single point of access to the REST API.
  #
  class DataBoxEdgeManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The API version.
    attr_reader :api_version

    # @return [String] The subscription ID.
    attr_accessor :subscription_id

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] Gets or sets the retry timeout in seconds for Long
    # Running Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] When set to true a unique x-ms-client-request-id value
    # is generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [Operations] operations
    attr_reader :operations

    # @return [Devices] devices
    attr_reader :devices

    # @return [Alerts] alerts
    attr_reader :alerts

    # @return [BandwidthSchedules] bandwidth_schedules
    attr_reader :bandwidth_schedules

    # @return [OperationsStatus] operations_status
    attr_reader :operations_status

    # @return [Orders] orders
    attr_reader :orders

    # @return [Roles] roles
    attr_reader :roles

    # @return [Shares] shares
    attr_reader :shares

    # @return [StorageAccountCredentials] storage_account_credentials
    attr_reader :storage_account_credentials

    # @return [Triggers] triggers
    attr_reader :triggers

    # @return [Users] users
    attr_reader :users

    #
    # Creates initializes a new instance of the DataBoxEdgeManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @operations = Operations.new(self)
      @devices = Devices.new(self)
      @alerts = Alerts.new(self)
      @bandwidth_schedules = BandwidthSchedules.new(self)
      @operations_status = OperationsStatus.new(self)
      @orders = Orders.new(self)
      @roles = Roles.new(self)
      @shares = Shares.new(self)
      @storage_account_credentials = StorageAccountCredentials.new(self)
      @triggers = Triggers.new(self)
      @users = Users.new(self)
      @api_version = '2018-07-01'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_edgegateway'
        if defined? Azure::Compute::Mgmt::V2018_07_01::VERSION
          sdk_information = "#{sdk_information}/#{Azure::Compute::Mgmt::V2018_07_01::VERSION}"
        end
        add_user_agent_information(sdk_information)
    end
  end
end
