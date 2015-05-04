class FortuneController < ApplicationController
  def input
  end

  def result
    @name = params[:name]
    @partner_name = params[:partner_name]

    @pic_url = get_image_url_via_bing_api(@name)
    @partner_pic_url = get_image_url_via_bing_api(@partner_name)
  end

  def get_image_url_via_bing_api(name)
    bing_results = BING_IMAGE.search(name, 10)
    bing_results[0][:Image][0][:MediaUrl]
  end


end
