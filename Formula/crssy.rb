VERSION="0.1.16"
class Crssy < Formula
    desc ""
    homepage "https://yukikonishi.github.io/crssy/"
    url "https://github.com/YukiKonishi/crssy/releases/download/v0.1.16/crssy-0.1.16_darwin_amd64.tar.gz"
    version VERSION
    sha256 "308046086a8531f162b3096002951adb629c55a6c99e7d335f7f60732ff93a67"
    license "MIT"
    option "without-completions", "Disable bash completions"
    depends_on "bash-completion@2" => :optional
def install
    bin.install "crssy"
    bash_completion.install "completions/bash/crssy" if build.with? "completions" end
  test do
    system bin/"crssy", "--version"
    end
end
