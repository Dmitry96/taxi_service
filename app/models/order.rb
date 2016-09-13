class Order < ActiveRecord::Base

  validates :phone_number, :adress_from, :adress_to, presence: true
  default_scope -> { order('created_at DESC') }

  def to_new
    if self.status != 'new'
      self.status = 'new'
    end
    save
  end

  def to_pending
    if self.status != 'to_pending'
      self.status = 'pending'
    end
    save
  end

  def to_completed
    if self.status != 'completed'
      self.status = 'completed'
    end
    save
  end

  def to_denied
    if self.status != 'denied'
      self.status = 'denied'
    end
    save
  end

end
