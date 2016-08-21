class OrgsController < ApplicationController
  def index
    @orgs = client.organizations
  end

  private

  def client
    @client ||= Octokit::Client.new(login: ENV['GITHUB_USER'], access_token: ENV['GITHUB_ACCESS_TOKEN'])
  end
end