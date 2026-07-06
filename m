X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/9
Message-ID: <642bfb9a-06b7-acb1-a760-f2ac206b14ca@apache.org>
Date: Mon, 06 Jul 2026 13:06:26 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-43825: Apache OpenNLP :: Core :: ML :: LibSVM: Unsafe Java Deserialization in SvmDoccatModel 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache OpenNLP :: Core :: ML :: LibSVM (org.apache.opennlp:opennlp-ml-libsvm) 3.0.0-M1 before 3.0.0-M4

Description:

Untrusted Java Deserialization in Apache OpenNLP SvmDoccatModel

Versions Affected:
  before 3.0.0-M4 (libsvm document categorization module; introduced in
  OPENNLP-1808 and only present on the 3.x line)

Description:
SvmDoccatModel.deserialize(InputStream) reads an attacker-controlled
stream with java.io.ObjectInputStream and calls readObject() without an
ObjectInputFilter installed. ObjectInputStream materialises every class
referenced in the stream before the resulting object is cast to
SvmDoccatModel, so the cast that follows readObject() executes only
after the foreign object graph has already been deserialised in full.

If a Java deserialization gadget chain is available on the consumer's
classpath, a crafted payload supplied to
deserialize() executes arbitrary code in the JVM that loads it. Apache
OpenNLP itself does not ship a known gadget chain, so the realistic
risk is to downstream applications that embed the libsvm module
alongside vulnerable transitive dependencies. The method is public and
static, so any caller can pass an untrusted stream to it directly.

The practical impact is remote code execution against processes that
load SvmDoccatModel instances from untrusted or semi-trusted origins.

Mitigation:

3.x users should upgrade to 3.0.0-M4.

Users who cannot upgrade immediately should treat all serialized
SvmDoccatModel streams as untrusted input unless their provenance is
verified, and should avoid invoking SvmDoccatModel.deserialize() on
streams supplied by end users or fetched from third-party sources
without integrity checks.

This issue is being tracked as OPENNLP-1823 

Credit:

Subramanian S (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-43825
https://issues.apache.org/jira/browse/OPENNLP-1823

