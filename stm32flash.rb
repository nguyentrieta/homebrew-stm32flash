require "formula"

class Stm32flash < Formula
  homepage "https://code.google.com/p/stm32flash/"
  version "20160211"
  url "https://sourceforge.net/code-snapshots/git/s/st/stm32flash/code.git/stm32flash-code-8c4aa650bffaf98e96d1b6065ab6e76c43150d8a.zip"
  #sha256 "97aa9422ef02e82f7da9039329e21a437decf972cb3919ad817f70ac9a49e306"

  def install
    system "make"
    system "install", "-d", "#{prefix}/bin"
    system "install", "-m", "755", "stm32flash", "#{prefix}/bin"
    system "install", "-m", "644", "stm32flash.1", "#{prefix}/../../../share/man/man1"
  end
end
