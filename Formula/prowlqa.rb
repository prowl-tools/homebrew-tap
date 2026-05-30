class Prowlqa < Formula
  desc "CLI-first QA testing tool using Playwright for browser automation"
  homepage "https://prowlqa.dev"
  url "https://registry.npmjs.org/prowlqa/-/prowlqa-0.1.1.tgz"
  sha256 "8a5610d4e3e701ce6a4130657a7efffcfa39fb7b61043fb52d83dac4a0cd05de"
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
