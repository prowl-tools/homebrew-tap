class Prowlqa < Formula
  desc "CLI-first QA testing tool using Playwright for browser automation"
  homepage "https://prowlqa.com"
  url "https://registry.npmjs.org/prowlqa/-/prowlqa-0.1.0.tgz"
  sha256 "10fb82ab2d5146e6af13141a8cda178dedc2bc09aba5a4d3bbd6bb92cf51b0e6"
  license "Apache-2.0"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prowlqa --version")
  end
end
