class Prowlqa < Formula
  desc "CLI-first QA testing tool using Playwright for browser automation"
  homepage "https://prowlqa.com"
  url "https://registry.npmjs.org/prowlqa/-/prowlqa-1.0.0.tgz"
  sha256 "be1a08afdd1844bd0728e51a89f1ef4815201aa31f99d2204e50729ac5304b44"
  license "Apache-2.0"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "prowlqa", shell_output("#{bin}/prowlqa --version")
  end
end
