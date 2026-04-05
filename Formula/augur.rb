class Augur < Formula
  desc "Policy-driven linter for OpenTelemetry configurations"
  homepage "https://github.com/starkross/augur"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/starkross/augur/releases/download/v#{version}/augur_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/starkross/augur/releases/download/v#{version}/augur_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/starkross/augur/releases/download/v#{version}/augur_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/starkross/augur/releases/download/v#{version}/augur_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "augur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/augur version")
  end
end
