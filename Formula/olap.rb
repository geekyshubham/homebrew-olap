class Olap < Formula
  desc "Orchestrated loop architect/worker CLI with a Pi-powered TUI"
  homepage "https://github.com/geekyshubham/olap"
  url "https://registry.npmjs.org/@geekyshubham/olap/-/olap-0.2.0.tgz"
  sha256 "1f607472581997ed17a86196997280642abe38b4fe9decf834bc3d065a9be159"
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