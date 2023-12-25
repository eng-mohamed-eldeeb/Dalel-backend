class SubErasController < ApplicationController
    def index
        era = Era.find(params[:era_id])
        sub_eras = era.sub_eras
        render json: sub_eras.map { |sub_era| 
          {
            "en": {
              "name": sub_era.english_name,
              "info": sub_era.english_info
            },
            "ar": {
              "name": sub_era.arabic_name,
              "info": sub_era.arabic_info
            }
          }
        }
    end
end
