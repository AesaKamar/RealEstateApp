class ListingsController < InheritedResources::Base

  private

    def listing_params
      params.require(:listing).permit(:town, :price, :style, :rooms, :bedrooms, :fullbaths, :halfbaths, :basement, :garage, :listdate, :category, :taxes, :remarks, :exterior, :hvac, :fireplace, :lotdescription, :addons, :yearbuilt)
    end
end

