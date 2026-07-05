X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/3
Message-ID: <a1efac6c-5e7c-1e1e-78aa-047228b4712a@apache.org>
Date: Sun, 05 Jul 2026 12:06:28 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40859: Apache Camel: Camel-Vertx-Http: Unsafe Java deserialization of HTTP response bodies via a raw ObjectInputStream when transferException is enabled 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-vertx-http) 4.0.0 before 4.14.8
- Apache Camel (org.apache.camel:camel-vertx-http) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-vertx-http) 4.19.0 before 4.20.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel.

The camel-vertx-http component deserializes HTTP response bodies carrying the Content-Type application/x-java-serialized-object using a raw java.io.ObjectInputStream, without applying any ObjectInputFilter (VertxHttpHelper.deserializeJavaObjectFromStream) This deserialization path is reached only when the producer endpoint is configured with transferException=true (or the component-level allowJavaSerializedObject=true) and throwExceptionOnFailure is left at its default value of true; in that case a backend HTTP response with a 5xx status and the application/x-java-serialized-object content type has its body deserialized with no class restrictions. An attacker who controls the backend the Camel producer talks to - through a man-in-the-middle position on an unencrypted (plain HTTP) connection, or by compromising the backend service - can return a crafted serialized Java object and, if a suitable gadget chain is present on the classpath, achieve remote code execution on the Camel application host. The path is not reachable in the default configuration, where transferException is false.
This issue affects Apache Camel: from 4.0.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.20.0.

Users are recommended to upgrade to version 4.20.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.8. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.3. After upgrading, the deserialization performed by both helper utilities is constrained by a default ObjectInputFilter (allow-list java.**;javax.**;org.apache.camel.**;!*), which can be customised through the new deserializationFilter endpoint option or the JVM-wide -Djdk.serialFilter system property. For deployments that cannot upgrade immediately: do not enable transferException=true (or allowJavaSerializedObject=true) on producers that talk to untrusted or network-reachable backends; ensure producer connections use TLS (https) so that a response cannot be substituted by a man-in-the-middle; and, where the option is required, set an explicit -Djdk.serialFilter allow-list (for example java.**;org.apache.camel.**;!*) to constrain deserialization.

Credit:

Venkatraman Kumar from Securin (finder)

References:

https://camel.apache.org/security/CVE-2026-40859.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40859

