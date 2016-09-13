class Order < ActiveRecord::Base

  validates :phone_number, :adress_from, :adress_to, presence: true
  default_scope -> { order('created_at DESC') }

  def to_right
    if self.status == 'new'
      self.status = 'pending'
    elsif self.status == 'pending'
      self.status = 'completed'
    end
    save
  end

  def to_left
    if self.status == 'completed'
      self.status = 'pending'
    elsif self.status == 'pending'
      self.status = 'new'
    end
    save
  end

  def cancel_that
    if self.status != 'denied'
      self.status = 'denied'
    else
      self.completed = 'pending'
    end
    save
  end

end
