class Prowl < Formula
  desc "CLI-first end-to-end testing tool using Playwright for browser automation"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.4.tgz"
  sha256 "0dbfc4604f0970a16435914b8856b9dacb743e8c3bacdf5511a21b60e775b618"
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
