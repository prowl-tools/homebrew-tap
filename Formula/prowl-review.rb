class ProwlReview < Formula
  desc "BYOK AI code review for pull requests (Claude/OpenAI/Gemini)"
  homepage "https://review.prowl.tools"
  url "https://registry.npmjs.org/prowl-review/-/prowl-review-0.2.0.tgz"
  sha256 "385a9d830b4e495d99188a70883d75b9eaad1c112adde4a201a1296e01267e86"
  license "Apache-2.0"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prowl-review --version")
  end
end
