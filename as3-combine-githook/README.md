# Combine Multiple F5 AS3 Tenant/App JSON Files with Git-hook or Webhook
The example will address a use case where separation of config files amongst tenants or teams can be achieved.

Background...
The [F5 AS3](https://f5.com/as3docs) extension is part of the F5 toolchain, and it configures the L4-L7 traffic objects on the BIG-IP devices. AS3 uses the concept of tenants in which many tenants can exist, and each tenant can have multiple applications. These tenants are broken out into separate blocks within the AS3 declaration file. You can see examples here - [AS3 examples](https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/userguide/examples.html). AS3 is an API endpoint that expectes to receive one declaration file.

How do different teams "own" their configurations and modify as needed? One answer is to split out the declaration file, then create a git-hook or webhook to join the files upon commit!

High level concept for this example...
1. Application JSON files are modified within tenant/app subfolder
2. Files are saved by user, then user performs 'git commit' to repo
3. Git-hook automatically runs upon commit and combines the JSON files into a single as3.json
4. Resulting as3.json file placed in top level folder

Your automation tool can now use the single as3.json file to POST to BIG-IP and update the configuration!

## Add GitHub Git-hook (best for local testing)
1. Copy 'post-commit' file to your repo's .git/hook directory
2. chmod +x .git/hooks/post-commit

## Add GitHub Webhook
This example does not use a webhook but instead it uses a git-hook. If you want to learn about Webhooks, see [GitHub Webhooks](https://docs.github.com/en/developers/webhooks-and-events/webhooks/creating-webhooks).
