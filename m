X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/12/30/1
Message-ID: <CACOzrT0QVJ4W+12XJemBttKNetG4qH+1aUyj51iSC4epw8vKyA@mail.gmail.com>
Date: Mon, 30 Dec 2019 08:11:44 -0500
From: Erik Hatcher <erik.hatcher@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2019-17558] Apache Solr RCE through VelocityResponseWriter
Content-Type: text/plain; charset=utf-8

[CVE-2019-17558] Apache Solr RCE through VelocityResponseWriter

Severity: High

Vendor: The Apache Software Foundation

Versions Affected: 5.0.0 to 8.3.1

Description:

The affected versions are vulnerable to a Remote Code Execution through the
VelocityResponseWriter.  A Velocity template can be provided through
Velocity (.vm) templates in a configset `velocity/` directory or as a
parameter.  A user defined configset could contain renderable, potentially
malicious, templates. Parameter provided templates are disabled by default,
but can be enabled by setting `params.resource.loader.enabled` by defining
a response writer with that setting set to `true`.  Defining a response
writer requires configuration API access.

Solr 8.4 removed the params resource loader entirely, and only enables the
configset-provided template rendering when the configset is `trusted` (has
been uploaded by an authenticated user).

Mitigation: Ensure your network settings are configured so that only
trusted traffic

communicates with Solr, especially to the configuration APIs.

Credits: Github user `s00py`

References:

  * https://cwiki.apache.org/confluence/display/solr/SolrSecurity

  * https://issues.apache.org/jira/browse/SOLR-13971

  * https://issues.apache.org/jira/browse/SOLR-14025

