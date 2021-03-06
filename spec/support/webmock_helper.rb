# frozen_string_literal: true

module WebmockHelper
  def stub_request_get_200(uri, response_body)
    WebMock.stub_request(:get, uri).to_return(
      status: 200,
      headers: { 'Content-Type' => 'application/json; charset=utf-8' },
      body: response_body
    )
  end

  def stub_request_get_404(uri, response_body)
    WebMock.stub_request(:get, uri).to_return(
      status: 404,
      headers: { 'Content-Type' => 'application/json; charset=utf-8' },
      body: response_body
    )
  end

  def stub_request_put_200(uri, response_body)
    WebMock.stub_request(:put, uri).to_return(
      status: 200,
      headers: { 'Content-Type' => 'application/json; charset=utf-8' },
      body: response_body
    )
  end

  def stub_request_delete_200(uri, response_body)
    WebMock.stub_request(:delete, uri).to_return(
      status: 200,
      headers: { 'Content-Type' => 'application/json; charset=utf-8' },
      body: response_body
    )
  end
end
