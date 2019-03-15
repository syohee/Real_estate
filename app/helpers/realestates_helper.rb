module RealestatesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      realestates_path
    elsif action_name == 'edit'
      realestate_path
    end
  end
end
