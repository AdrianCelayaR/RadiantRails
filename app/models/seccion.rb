class Seccion < ApplicationRecord
    mount_uploader :contenido, AvatarUploader
    def save_multimedia(params)
        imagen = params
        return unless imagen.present?
        
        self.contenido = imagen
        self.contenido.store!
        save
    end
end
