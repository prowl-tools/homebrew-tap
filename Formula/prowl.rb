class Prowl < Formula
  desc "E2E testing for native macOS apps and web apps from declarative YAML hunts"
  homepage "https://prowl.tools"
  url "https://registry.npmjs.org/prowl-tools/-/prowl-tools-0.1.8.tgz"
  sha256 "5f291e29d67ca85697259557dfee701cd7a114ff3dacdc3694812d005de802fc"
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
