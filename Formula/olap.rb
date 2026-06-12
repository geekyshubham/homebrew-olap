class Olap < Formula
  desc "Orchestrated loop architect/worker CLI with a Pi-powered TUI"
  homepage "https://github.com/geekyshubham/olap"
  url "https://registry.npmjs.org/@geekyshubham/olap/-/olap-0.1.0.tgz"
  sha256 "8f2fd6014fe12ef6a6f8a345661bbffe149a3bfff81b1f940e97618c9090321b"
  license "MIT"

  depends_on "node@22"

  def install
    system Formula["node@22"].opt_bin/"npm", "install", *std_npm_args(prefix: false)
    bin.install_symlink libexec/"bin/olap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olap --version")
  end
end
