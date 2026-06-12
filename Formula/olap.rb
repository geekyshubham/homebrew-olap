class Olap < Formula
  desc "Orchestrated loop architect/worker CLI with a Pi-powered TUI"
  homepage "https://github.com/geekyshubham/olap"
  url "https://registry.npmjs.org/@geekyshubham/olap/-/olap-0.1.1.tgz"
  sha256 "8c2106b59001921c03fbf4e7ba89298199892a01810cd7f4bfc3e8ec346a55e1"
  license "MIT"

  depends_on "node@22"

  def install
    system Formula["node@22"].opt_bin/"npm", "install", *std_npm_args
    bin.install_symlink libexec/"bin/olap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/olap --version")
  end
end
