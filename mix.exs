defmodule ElixirCource.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_cource,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0", runtime: false},
      {:csv, "~> 3.0"}
    ]
  end

  defp aliases do
    [
      quality: ["format", "dialyzer"],
      "quality.ci": ["format --check-formatted", "dialyzer"]
    ]
  end
end
