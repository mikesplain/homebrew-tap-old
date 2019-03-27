class KubectlNs < Formula
  desc "Kubectl-ns makes it eash to manage namespaces via kubectl"
  homepage "https://github.com/weibeld/kubectl-ns"
  url "https://raw.githubusercontent.com/weibeld/kubectl-ns/969a7e1e5234ead63f98c3cc532f25a54cd8b6f0/kubectl-ns"
  version "1.0.0"
  sha256 "055e52462bfc35ef072d4894348100de3f1464cbd64fcaf013537faaf8c59195"
  depends_on "fzf"
  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-ns"
  end

  test do
    run_output = shell_output("#{bin}/kubectl ns -h 2>&1")
    assert_match "Interactively change the current namespace.", run_output
  end
end
