class ProwlReview < Formula
  desc "BYOK AI code review for pull requests (Claude/OpenAI/Gemini)"
  homepage "https://review.prowl.tools"
  url "https://registry.npmjs.org/prowl-review/-/prowl-review-0.1.0.tgz"
  sha256 "f9d9dfd7fd5323e75b11c52d2d4eee3e4eab0cdd364210c99f45a179a6a45bce"
  license "Apache-2.0"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prowl-review --version")
  end
end
