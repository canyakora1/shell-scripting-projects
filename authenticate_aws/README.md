# Authenticating into AWS with scripts

Most often than not, you would be authenticating into AWS using Single Sign-on also known as AWS IAM Identity Center. See AWS Documentations for more information ![AWS IAM Identity center](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)

IAM Users can also be used to log into AWS console and also the cli but it is not secure and has long lived credentials. Once an hacker is able to lay his hands on one of these IAM users account which probably has a policy attached it to, then the hacker is able to abuse that user's privileges and be able to list services that user has permission for.

## Benefits of using the AWS IAM Identity center

1. Security: IAM allows you to manage access to AWS services and resources securely. You can create and manage AWS users and groups, and use permissions to allow or deny their access to specific resources.

2. Access Control: IAM enables you to define fine-grained access permissions. You can specify who (users) can do what (permissions) on which resources, providing a high level of control.

3. Compliance: IAM helps you adhere to security best practices and regulatory requirements by enabling you to manage access permissions effectively.

4. Ease of Use: IAM integrates with many AWS services, making it easier to control access to these services. It also allows you to use existing credentials to access the AWS Management Console and AWS CLI.

5. Resource Sharing: IAM enables you to share access to your AWS account resources without sharing your security credentials. You can grant temporary access to users outside your organization or third-party vendors.

6. Identity Federation: You can integrate your existing corporate directory with IAM, allowing your users to use their existing corporate credentials to access AWS resources.

7. Multi-Factor Authentication (MFA): IAM supports multi-factor authentication, adding an extra layer of security by requiring users to present more than one authentication factor.

8. Credential Rotation: IAM allows you to rotate credentials regularly, improving security by reducing the risk of unauthorized access due to compromised credentials.

9. Auditing and Monitoring: IAM provides detailed information about who did what in your AWS environment, helping you to audit user actions and changes in your resources.

10. Scaling Security: As your organization grows, IAM scales with you, allowing you to manage access for thousands of users and resources easily.

Using the AWS IAM Identity Center ensures that you can manage these aspects effectively, enhancing your overall AWS security posture.