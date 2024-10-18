const amplifyconfig = '''{
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "aweadinin": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://vnjjcu2rszbwzbi7akqjk7gox4.appsync-api.ap-southeast-1.amazonaws.com/graphql",
                    "region": "ap-southeast-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-4lqc2yuhcneiznx6nqrphrhkfu"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://vnjjcu2rszbwzbi7akqjk7gox4.appsync-api.ap-southeast-1.amazonaws.com/graphql",
                        "Region": "ap-southeast-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-4lqc2yuhcneiznx6nqrphrhkfu",
                        "ClientDatabasePrefix": "aweadinin_API_KEY"
                    },
                    "aweadinin_AWS_IAM": {
                        "ApiUrl": "https://vnjjcu2rszbwzbi7akqjk7gox4.appsync-api.ap-southeast-1.amazonaws.com/graphql",
                        "Region": "ap-southeast-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "aweadinin_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-southeast-1:88bbe329-aa66-4c1b-8a95-8567f751aa0a",
                            "Region": "ap-southeast-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-southeast-1_N0sIG0ji9",
                        "AppClientId": "3ri72k3sn3v4vt9biopdfbina9",
                        "Region": "ap-southeast-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 8,
                            "passwordPolicyCharacters": []
                        },
                        "signupAttributes": [
                            "EMAIL"
                        ],
                        "socialProviders": [],
                        "usernameAttributes": [],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "aweadininstorage20242a2fe-dev",
                        "Region": "ap-southeast-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "aweadininstorage20242a2fe-dev",
                "region": "ap-southeast-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';
