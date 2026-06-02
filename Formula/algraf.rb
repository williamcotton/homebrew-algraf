# frozen_string_literal: true

# Algraf formula for Homebrew
class Algraf < Formula
  desc 'Block-scoped, algebraic grammar-of-graphics DSL.'
  homepage 'https://github.com/williamcotton/algraf'
  url 'https://github.com/williamcotton/algraf.git', tag: 'v0.51.0'
  license 'MIT'
  head 'https://github.com/williamcotton/algraf.git', branch: 'main'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', *std_cargo_args(path: 'crates/algraf-cli')
  end

  test do
    assert_match 'algraf', shell_output("#{bin}/algraf --version")
  end
end
