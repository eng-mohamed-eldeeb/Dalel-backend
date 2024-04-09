class War < Event
    def self.ransackable_attributes(auth_object = nil)
        ["arabic_info", "arabic_title", "created_at", "end_date", "english_info", "english_title", "id", "start_date", "type", "updated_at"]
      end
end