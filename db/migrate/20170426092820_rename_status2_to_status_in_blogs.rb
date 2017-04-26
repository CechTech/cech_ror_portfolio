class RenameStatus2ToStatusInBlogs < ActiveRecord::Migration[5.0]
  def change
    rename_column :blogs, :status2, :status
  end
end
