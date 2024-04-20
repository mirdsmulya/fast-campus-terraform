terraform {
    backend "s3" {
        bucket         = "practice-remote-states"
        key            = "staging/rds"
        region         = "ap-southeast-1"
        encrypt        = true
    }
}