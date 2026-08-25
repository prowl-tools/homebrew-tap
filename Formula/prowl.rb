class Prowl < Formula
  desc "CLI-first end-to-end testing tool using Playwright for browser automation"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.6.tgz"
  sha256 "6ffd2a580541807e0517271eaec7268aa3fe42c7664a98c4012db01e7ebc451a"
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
