class Viben < Formula
  desc "Orchestrate AI agent clusters in your local workspace"
  homepage "https://github.com/LinXueyuanStdio/viben"
  url "https://registry.npmjs.org/viben/-/viben-1.0.0.tgz"
  sha256 "e221f5cf2400cb2d72c310b09582e2be40cfddd022132458aa08436f3bfe084d"
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
