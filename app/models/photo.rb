class Photo < ActiveRecord::Base

  has_attached_file :data,
                    styles: { medium: "300x300>" },
                    path: ':class/:attachment/:id/:style/:filename',
                    storage: :fog,
                    fog_credentials: Rails.configuration.aws,
                    fog_public: true,
                    fog_directory: "jessicaejulio#{Rails.env.production? ? '' : '-' + Rails.env}"

  validates_attachment_content_type :data, content_type: /\Aimage\/.*\Z/

end
