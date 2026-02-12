class Lear < Formula
  include Language::Python::Virtualenv

  desc "Mistyped 'clear'? Enjoy King Lear instead"
  homepage "https://github.com/vasilescur/lear"
  url "https://github.com/vasilescur/lear/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "eee85b6d43d411f7a6381bd31a3d6148ef50053daee1efc07e6cc83ead91bd6b"
  license "MIT"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    man1.install "lear.1"
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
