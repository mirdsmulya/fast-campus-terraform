terraform {
    backend "s3" {
        bucket         = "practice-remote-states"
        key            = "staging/ec2"
        region         = "ap-southeast-1"
        encrypt        = true
    }
}