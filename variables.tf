variable "cluster_name" {
    default = "klab" 
}

variable "aws_region" {
    default =   "us-east-1"
}

variable "deploy" {
    default =   "Terraform"
  
}

variable "k8s_version" {
    default =   "1.15"
  
}

variable "nodes_instances_sizes" {
    default = [
        "t3a.small"
    ]
  
}

variable "auto_scale_options" {
    default = {
        min     =   2
        max     =   10
        desired =   2
    }
  
}

variable "auto_scale_cpu" {
    default = {
        scale_up_threshold = 80            // 80% de utilização
        scale_up_period =   60              //segundos
        scale_up_evaluation = 2             // duas checagens a cada 1 minuto
        scale_up_cooldown   =   300         // var fazer o down apos 300 s
        scale_up_add        =   2           // add 2 instancias


        scale_down_threshold = 40            // 40% de utilização
        scale_down_period =   120              //segundos
        scale_down_evaluation = 2             // duas checagens a cada 1 minuto
        scale_down_cooldown   =   300         // var fazer o down apos 300 s
        scale_down_remove     =   -1           // add 2 instancias        
    }
  
}

