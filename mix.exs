defmodule Phonex.Mixfile do
  use Mix.Project

  def project do
    [app: :phone,
     version: "0.3.0",
     elixir: ">= 1.1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     source_url: "https://github.com/fcevado/phone",
     deps: deps]
  end

  defp package do
    [
      files: files,
      maintainers: ["Flávio Moreira Vieira"],
      licenses: ["Apache 2.0"],
      links: links
    ]
  end

  defp description do
    """
    Get useful info from telephone numbers.
    """
  end

  def application do
    [applications: []]
  end

  defp files do
    [
      "mix.exs",
      "lib"
    ]
  end

  defp links do
    %{
      "Github" => "https://github.com/fcevado/phone"
    }
  end

  defp deps do
    [
      {:earmark, "0.2.1", only: :dev},
      {:ex_doc, "0.11.4", only: :dev},
      {:inch_ex, "0.5.1", only: :docs}
    ]
  end
end
