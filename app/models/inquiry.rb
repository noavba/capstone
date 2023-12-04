class Inquiry < ApplicationRecord


  belongs_to :user
  validate :only_one_inquiry
  has_many_attached :files

  has_one_attached :resume
  has_one_attached :cv_letter
  has_one_attached :transcript
  has_one_attached :english_test


  validates :fname, presence: true, length: { maximum: 15 }
  validates :lname, presence: true, length: { maximum: 15 }
  validates :mname, presence: true, length: { maximum: 15 }



  #self. makes it so that I can call it in action view, normally you can't call methods from a model in the view
  # this is a hacky way to get by it.
  def self.extract_text_from_pdf(attachment_name)
    attachment = attachment_name
    #if not attached return cancel
    return unless attachment.attached?
    #if not a pdf document, don't run
    return unless attachment.content_type == 'application/pdf'
    #create string variable to input the resulting string
    pdf_text = ''
    #storing the attachment in a string, this is important for stringIO
    # stringio will convert the download to binary, pdf-reader gem will always
    # return the output to UTF-8,
    binary_data = attachment.download
    io = StringIO.new(binary_data)

    begin
      #this is the pdf-reader library at work, for each page take the text and put it in pdf_text variable
      PDF::Reader.new(io).pages.each do |page|
        pdf_text += page.text
      end

    ensure
      #ensure io is closed, this removes the need for tempfiles
      io.close
    end
    pdf_text
  end


  private

  # if user exists & there is an inquiry for that user, throws an error
  def only_one_inquiry
    if user && user.inquiries.exists?
      errors.add(:user, "user already has an inquiry")
    end
  end

end

