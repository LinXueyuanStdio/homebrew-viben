class Viben < Formula
  desc "Orchestrate AI agent clusters in your local workspace"
  homepage "https://github.com/LinXueyuanStdio/viben"
  url "https://registry.npmjs.org/viben/-/viben-0.1.1.tgz"
  sha256 "0099b6ad7528491f3f97d55aea2ff9175e2eddfc3d7f8e52f908013e4f612cbd"
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
