class Viben < Formula
  desc "Orchestrate AI agent clusters in your local workspace"
  homepage "https://github.com/LinXueyuanStdio/viben"
  url "https://registry.npmjs.org/viben/-/viben-1.2.10.tgz"
  sha256 "039397f97c1a3177045ebf8d35739555903ade893a799f0c81a2cd89504d1cbe"
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
