class Viben < Formula
  desc "Orchestrate AI agent clusters in your local workspace"
  homepage "https://github.com/LinXueyuanStdio/viben"
  url "https://registry.npmjs.org/viben/-/viben-1.2.11.tgz"
  sha256 "4e2d439617c5b4600c12bab3c1ad12ebf2c25b0ac654963cb374b4ddd1329e79"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Viben CLI", shell_output("#{bin}/viben --help")
  end
end
