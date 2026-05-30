class Prowlqa < Formula
  desc "CLI-first QA testing tool using Playwright for browser automation"
  homepage "https://prowlqa.dev"
  url "https://registry.npmjs.org/prowlqa/-/prowlqa-0.1.2.tgz"
  sha256 "16ca9df074d22797139180f0ffd7588152b048ddbe3121dc46aec7220a6a9055"
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
