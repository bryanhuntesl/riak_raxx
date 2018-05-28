defmodule Imageer.Mixfile do
  use Mix.Project
  def project do
    [
      app: :upload,
      version: "0.0.1",
      elixir: "~> 1.6",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end
  def application do
    [
      mod: {Upload.Application, []},
      extra_applications: [:riak_core,:logger]
    ]
  end
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
  defp deps do
    [
    ]
  end
  defp aliases do
    [
    ]
  end
end
