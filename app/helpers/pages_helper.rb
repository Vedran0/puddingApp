module PagesHelper

  def new_patch_to(pudding)
    PatchNote.last.id > pudding.setting.last_patch_seen ? true : false
  end

end