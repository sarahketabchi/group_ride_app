module UsersHelper

  def cleanup_phone_number(input)
    if input.gsub(/\D/, "").match(/^1?(\d{3})(\d{3})(\d{4})/)
      [$1, $2, $3].join("-")
    end
  end
end
