# typed: false
# frozen_string_literal: true

class Rsspls < Formula
  desc "Generate RSS feeds from web pages"
  homepage "https://github.com/wezm/rsspls"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.intel? || Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-universal-apple-darwin.tar.gz"
      sha256 "2d3314a8482f2c1a8ab4825cad99d8ced36f22609289d397f076ad681508356e"

      def install
        bin.install "rsspls"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d7e1909bf64c2f6486b710dd362f11a516541315862f9fc67d901c3129a3d88"

      def install
        bin.install "rsspls"
      end
    elsif Hardware::CPU.arm?
      url "https://releases.wezm.net/rsspls/#{version}/rsspls-#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92225e8400042e00318e4f30595d543a4fa0a947068f38a8e74ba10f7b232285"

      def install
        bin.install "rsspls"
      end
    end
  end
end
