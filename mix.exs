defmodule Authy.Mixfile do
  use Mix.Project

  def project do
    [
      app: :authy,
      version: "0.3.0",
      elixir: "~> 1.2",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:httpoison, :logger]]
  end

  defp deps do
    [{:httpoison, "~> 1.4"}, {:poison, "~> 3.0 or ~> 4.0"}]
  end
end
