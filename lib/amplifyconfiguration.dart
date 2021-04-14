const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "ap-southeast-1:8b9f7007-1765-4beb-b747-48fabcbcad99",
                            "Region": "ap-southeast-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "ap-southeast-1_3ehHYwxFN",
                        "AppClientId": "1qv5lqbn2d433onvb0aqlgdn35",
                        "Region": "ap-southeast-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "OAuth": {
                            "WebDomain": "testingflutterfederated-dev.auth.ap-southeast-1.amazoncognito.com",
                            "AppClientId": "1qv5lqbn2d433onvb0aqlgdn35",
                            "SignInRedirectURI": "https://localhost/",
                            "SignOutRedirectURI": "https://localhost/",
                            "Scopes": [
                                "phone",
                                "email",
                                "openid",
                                "profile",
                                "aws.cognito.signin.user.admin"
                            ]
                        },
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                }
            }
        }
    }
}''';