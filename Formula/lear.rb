class Lear < Formula
  include Language::Python::Virtualenv

  desc "Mistyped 'clear'? Enjoy King Lear instead"
  homepage "https://github.com/vasilescur/lear"
  url "https://github.com/vasilescur/lear/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "4aa230367173754f0f8a4bb179e526db65b2172796316a3abb722e7d8ce9d936"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      lear is now installed! Type `lear` to enjoy King Lear.

      If `lear` is not found, ensure Homebrew's bin is on your PATH.
      Add this to your ~/.zshrc or ~/.bashrc:

        eval "$(brew shellenv)"

      Then restart your shell or run:

        source ~/.zshrc   # or source ~/.bashrc
    EOS
  end

  test do
    assert_match "lear", shell_output("#{bin}/lear --version")
  end
end
