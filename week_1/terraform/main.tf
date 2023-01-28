provider "kubernetes" {
  config_context_cluster   = "default"
  config_path = "config"
}

resource "kubernetes_namespace" "kube-namespace" {
  metadata {
	name = "my-first-terraform-namespace"
  }
}


 provider "helm" {
   kubernetes {
 	config_context_cluster   = "default"
   config_path = "config"
   }
 }

 resource "helm_release" "local" {
   name   	= "buildachart"
  chart  	= "buildachart"
}
