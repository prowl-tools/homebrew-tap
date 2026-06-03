# Deprecated: "prowlqa" was renamed to "prowl" (npm package: prowl-tools).
# Kept so existing `brew install prowlqa` users are migrated, not broken.
class Prowlqa < Formula
  desc "Deprecated, renamed to prowl: CLI-first end-to-end testing tool"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.3.tgz"
  sha256 "d23174b0013d88b6e00cf37702aa2ac62ac2c1b72d6f134f347017b9ebaf6584"
  license "Apache-2.0"

  deprecate! date: "2026-06-03", because: "renamed to `prowl`; install with `brew install prowl-tools/tap/prowl`"

  depends_on "node@20"

  conflicts_with "prowl", because: "both install the prowl CLI"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
    # Back-compat: keep the old `prowlqa` command working as an alias for `prowl`.
    bin.install_symlink libexec/"bin/prowl" => "prowlqa"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prowl --version")
    assert_match version.to_s, shell_output("#{bin}/prowlqa --version")
  end
end
