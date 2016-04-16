defmodule Phone.EE do
  use Helper.Country
  field :regex, ~r/^(372)()(.{7})/
  field :country, "Estonia"
  field :a2, "EE"
  field :a3, "EST"
  match :regex
end
