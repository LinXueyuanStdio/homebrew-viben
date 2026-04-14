class Viben < Formula
  desc "Orchestrate AI agent clusters in your local workspace"
  homepage "https://github.com/LinXueyuanStdio/viben"
  url "https://registry.npmjs.org/viben/-/viben-1.1.0.tgz"
  sha256 "cd15322b353f03aeb9f83a43b71a625b1dd8cb5aca51974a23e64fea5d486096"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Viben CLI", shell_output("#{bin}/viben --help")
  end
end
