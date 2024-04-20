terraform {
    backend "s3" {
        bucket         = "practice-remote-state-1"
        key            = "ec2-instance"
        region         = "ap-southeast-1"
        encrypt        = true
    }
}
