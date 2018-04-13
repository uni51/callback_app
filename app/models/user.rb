class User < ApplicationRecord
  before_create :ensure_has_name, UserCallbacks.new

  # after_initialize do |user|
  #   puts "オブジェクトを生成しました！"
  #   user.name = "Taro"
  # end

  # before_create do
  #   if name.blank?
  #     self.name = 'Jiro'
  #   end
  # end

  # before_save do
  #   puts '１番目に呼ばれたコールバック'
  # end
  #
  # before_save do
  #   puts '２番目に呼ばれたコールバック'
  # end

  private
  def ensure_has_name
    self.name = 'Taro' if name.blank?
  end
end
