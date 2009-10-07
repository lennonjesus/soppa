#Author: lennon.jesus

module AuthorizatedSystem
    def is_admin?
      "is_admin Funcao nao implementada!!!"
    end

    def is_profile_owner
      "is_profile_owner Funcao nao implementada!!!"
    end

    def can_edit_profile? profile
      current_user.profile == profile
    end
end
