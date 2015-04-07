module ApplicationHelper
  def qr_code_for(data, options={})
    width = height = (options[:size] || 150)

    image_tag "//chart.googleapis.com/chart?cht=qr&chs=#{width}x#{height}&chl=#{URI::encode(data)}"
  end
end
