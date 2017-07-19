# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceBus
  #
  # Azure Service Bus client
  #
  class Rules
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Rules class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServiceBusManagementClient] reference to the ServiceBusManagementClient
    attr_reader :client

    #
    # List all the rules within given topic-subscription
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Rule>] operation results.
    #
    def list_by_subscriptions(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      first_page = list_by_subscriptions_as_lazy(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers)
      first_page.get_all_items
    end

    #
    # List all the rules within given topic-subscription
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscriptions_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      list_by_subscriptions_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers).value!
    end

    #
    # List all the rules within given topic-subscription
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscriptions_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}/rules'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::RuleListResult.mapper()
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
    # Creates a new rule and updates an existing rule
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param parameters [Rule] Parameters supplied to create a rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Rule] operation results.
    #
    def create_or_update(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a new rule and updates an existing rule
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param parameters [Rule] Parameters supplied to create a rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, parameters, custom_headers).value!
    end

    #
    # Creates a new rule and updates an existing rule
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param parameters [Rule] Parameters supplied to create a rule.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, 'rule_name is nil' if rule_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::ServiceBus::Models::Rule.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}/rules/{ruleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'ruleName' => rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::Rule.mapper()
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
    # Deletes an existing rule.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers = nil)
      response = delete_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers).value!
      nil
    end

    #
    # Deletes an existing rule.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers = nil)
      delete_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers).value!
    end

    #
    # Deletes an existing rule.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, 'rule_name is nil' if rule_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}/rules/{ruleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'ruleName' => rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204 || status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieves the description for the specified rule.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Rule] operation results.
    #
    def get(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers = nil)
      response = get_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves the description for the specified rule.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers = nil)
      get_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers).value!
    end

    #
    # Retrieves the description for the specified rule.
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param rule_name [String] The rule name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, namespace_name, topic_name, subscription_name, rule_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'topic_name is nil' if topic_name.nil?
      fail ArgumentError, 'subscription_name is nil' if subscription_name.nil?
      fail ArgumentError, 'rule_name is nil' if rule_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServiceBus/namespaces/{namespaceName}/topics/{topicName}/subscriptions/{subscriptionName}/rules/{ruleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'topicName' => topic_name,'subscriptionName' => subscription_name,'ruleName' => rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::Rule.mapper()
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
    # List all the rules within given topic-subscription
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RuleListResult] operation results.
    #
    def list_by_subscriptions_next(next_page_link, custom_headers = nil)
      response = list_by_subscriptions_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List all the rules within given topic-subscription
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscriptions_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_subscriptions_next_async(next_page_link, custom_headers).value!
    end

    #
    # List all the rules within given topic-subscription
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscriptions_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServiceBus::Models::RuleListResult.mapper()
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
    # List all the rules within given topic-subscription
    #
    # @param resource_group_name [String] Name of the Resource group within the
    # Azure subscription.
    # @param namespace_name [String] The namespace name
    # @param topic_name [String] The topic name.
    # @param subscription_name [String] The subscription name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RuleListResult] which provide lazy access to pages of the response.
    #
    def list_by_subscriptions_as_lazy(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers = nil)
      response = list_by_subscriptions_async(resource_group_name, namespace_name, topic_name, subscription_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_subscriptions_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
