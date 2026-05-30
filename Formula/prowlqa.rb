class Prowlqa < Formula
  desc "CLI-first QA testing tool using Playwright for browser automation"
  homepage "https://prowlqa.dev"
  url "https://registry.npmjs.org/prowlqa/-/prowlqa-0.1.2.tgz"
  sha256 "ddfd8a2a583dd29e96a47c8caf04b4f0a5e69a8e9b27c0a45e8a4e8d6e6f9c3a"
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
