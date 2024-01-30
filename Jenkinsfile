pipeline {
    agent any

   // environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins_aws')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins_aws')
        AWS_DEFAULT_REGION_US_EAST_1 = 'us-east-1'
        AWS_DEFAULT_REGION_AP_SOUTH_1 = 'ap-south-1'
        AWS_DEFAULT_REGION_EU_WEST_1 = 'eu-west-2'
  //  }

    stages {
        stage('Create EC2 Instance in us-east-1') {
            steps {
                script {
                    sh "aws ec2 run-instances --image-id ami-01c647eace872fc02 --instance-type t2.micro --count 1 --key-name my-key-us-east --security-group-ids sg-08fd74c916418f15d --subnet-id subnet-0125b1a3899456f04 --region $AWS_DEFAULT_REGION_US_EAST_1 --user-data file://dev_startup.sh"
                    //sh "aws ec2 create-tags --resources ami-01c647eace872fc02 --tags Key=pl-web-server-dev,Value=DEV"
                }
            }
        }

        stage('Create EC2 Instance in ap-south-1') {
            steps {
                script {
                    sh "aws ec2 run-instances --image-id ami-02bb7d8191b50f4bb --instance-type t2.micro --key-name my-aws-demo-key --security-group-ids sg-0061d71cb1c9cd10b --subnet-id subnet-05cde3768f3c7917c --count 1 --region $AWS_DEFAULT_REGION_AP_SOUTH_1 --user-data file://uat_startup.sh"
                   // sh "aws ec2 create-tags --resources ami-02bb7d8191b50f4bb --tags Key=pl-web-server-uat,Value=UAT"
                }
                }
            }
       // }

        stage('Create EC2 Instance in eu-west-1') {
            steps {
                script {
                    sh "aws ec2 run-instances --image-id ami-0b1b00f4f0d09d131 --instance-type t2.micro --key-name my-key-uk-west2 --security-group-ids sg-04b8c26803bc27a3a --subnet-id subnet-05435a7e79c40fb15 --count 1 --region $AWS_DEFAULT_REGION_EU_WEST_1 --user-data file://prod_startup.sh"
                   // sh "aws ec2 create-tags --resources ami-0b1b00f4f0d09d131 --tags Key=pl-web-server-prod,Value=PROD"
                }
            }
        }
    }
}
