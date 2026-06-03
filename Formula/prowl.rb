class Prowl < Formula
  desc "CLI-first end-to-end testing tool using Playwright for browser automation"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.3.tgz"
  sha256 "d23174b0013d88b6e00cf37702aa2ac62ac2c1b72d6f134f347017b9ebaf6584"
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
