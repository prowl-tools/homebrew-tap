class ProwlReview < Formula
  desc "BYOK AI code review for pull requests (Claude/OpenAI/Gemini)"
  homepage "https://review.prowl.tools"
  url "https://registry.npmjs.org/prowl-review/-/prowl-review-0.3.0.tgz"
  sha256 "f95dfa3dd1f8334b20998066d8f8ab8af7fc8cfd160cc4b5728a580085ef4d6f"
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
