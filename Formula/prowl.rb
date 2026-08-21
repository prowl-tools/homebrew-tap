class Prowl < Formula
  desc "CLI-first end-to-end testing tool using Playwright for browser automation"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.5.tgz"
  sha256 "3b5eedb91d1c2760ee607393bb933965aed28d54ea85988608df31bc2a9d8b43"
  license "Apache-2.0"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prowl --version")
  end
end
