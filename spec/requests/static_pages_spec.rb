require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "toppage" do
    it "正常なレスポンスを返すこと" do
      get root_path
      expect(response).to be_success
      expect(response).to have_http_status "200"
    end
  end

  describe "aboutpage" do
    it "正常なレスポンスを返すこと" do
      get staticpages_about_path
      expect(response).to be_success
      expect(response).to have_http_status "200"
    end
  end
end
