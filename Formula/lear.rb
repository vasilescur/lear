class Lear < Formula
  include Language::Python::Virtualenv

  desc "Mistyped 'clear'? Enjoy King Lear instead"
  homepage "https://github.com/vasilescur/lear"
  url "https://github.com/vasilescur/lear/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "e47532bbee7f01626c6944dbf4efaae58d86c285411ab85d9b3b88d24d70520a"
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
