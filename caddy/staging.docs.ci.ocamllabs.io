staging.docs.ci.ocamllabs.io {
        handle /host/metrics {
                basicauth bcrypt {
			prometheus {{ prometheus_password }}
                } 
                uri strip_prefix /host
                reverse_proxy 172.18.0.1:9090
        }       
        handle /metrics {
                basicauth bcrypt {
			prometheus {{ prometheus_password }}
                } 
                reverse_proxy docs-ci:8080
        }         
        reverse_proxy docs-ci:8080
}                 
            
staging.docs-data.ocamllabs.io:80 {
        reverse_proxy html-data-website:80
}             
