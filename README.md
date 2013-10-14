Doap Cookbooks & Chef Recepies
==============================

These DevOps and Platforms cookbooks are used with the AWS OpsWorks [Getting Started Walkthroughs](http://docs.aws.amazon.com/opsworks/latest/userguide/walkthroughs.html).

Orig Sample Repo: https://github.com/amazonwebservices/opsworks-example-cookbooks

java: Installs either OpenJDK or Sun/Oracle Java - taken from https://github.com/opscode-cookbooks/java and adapted for OpsWorks.
If you want to use Oracle Java, make sure to have the following in your custom JSON:

{
  "java": {
    "oracle": {
      "accept_oracle_download_terms": true
    }
  }
}
