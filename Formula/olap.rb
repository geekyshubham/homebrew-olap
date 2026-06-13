class Olap < Formula
  desc "Orchestrated loop architect/worker CLI with a Pi-powered TUI"
  homepage "https://github.com/geekyshubham/olap"
  url "https://registry.npmjs.org/@geekyshubham/olap/-/olap-0.3.1.tgz"
  sha256 "1c4ab2ef26d8dda69f1ba3ba24f3cba1ebffad7c16560ce50e47d6c74d223177"
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