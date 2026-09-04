class Prowl < Formula
  desc "E2E testing for native macOS apps and web apps from declarative YAML hunts"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.7.tgz"
  sha256 "4d7be4942e261812c6f5aae2b2ea609e90a46f9172510f6925ff85abd5389173"
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
