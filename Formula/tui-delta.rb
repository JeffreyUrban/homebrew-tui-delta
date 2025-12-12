class TuiDelta < Formula
  include Language::Python::Virtualenv

  desc "Wraps a TUI (terminal user interface) applicatvel content"
  homepage "https://github.com/JeffreyUrban/tui-delta"
  url "https://files.pythonhosted.org/packages/9b/c4/9b7caa9d282799c9c4a942553adc269bd2fa005b658b5021d5524534aef6/tui_delta-0.1.1.tar.gz"
  sha256 "689fbb97cf29fe769d647cf8cb93b6880e328285ff3bdf780ebea3ec493beffb"
  license "MIT"

  depends_on "python@3.9"

  # Standard dependencies from cli-template
  resource "typer" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/typer-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_TYPER"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/rich-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_RICH"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/click-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_CLICK"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/markdown_it_py-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_MARKDOWN_IT_PY"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/mdurl-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_MDURL"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/pygments-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_PYGMENTS"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/TEMPLATE_PLACEHOLDER/shellingham-VERSION.tar.gz"
    sha256 "TEMPLATE_PLACEHOLDER_SHA256_SHELLINGHAM"
  end

  # Add additional project-specific dependencies here after first release

  def install
    virtualenv_install_with_resources
  end

  test do
    # Test version output
    output = shell_output("#{bin}/tui-delta --version")
    assert_match "tui-delta version", output

    # Test help output
    output = shell_output("#{bin}/tui-delta --help")
    assert_match "Wraps a TUI (terminal user interface) applicatvel content", output
  end
end
