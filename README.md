Doap Cookbooks & Chef Recepies
==============================

The *app example cookbooks are used with the AWS OpsWorks [Getting Started Walkthroughs](http://docs.aws.amazon.com/opsworks/latest/userguide/walkthroughs.html).

java: Installs either OpenJDK or Sun/Oracle Java - taken from https://github.com/opscode-cookbooks/java and adapted for OpsWorks.
If you want to use Oracle Java, make sure to have the following in your custom JSON:

{
  "java": {
    "oracle": {
      "accept_oracle_download_terms": true
    }
  }
}
