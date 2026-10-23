X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/23/11
Message-ID: <4649a413-d990-339e-e98c-f01c7bfdd5a9@apache.org>
Date: Fri, 23 Oct 2026 07:29:19 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-95664: Apache Camel: Camel-AWS2-S3 Producer Evaluates Untrusted S3 Object Keys From the CamelAwsS3Key Header as Simple Expressions 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 3.1: 5.4 (medium) CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:N

Affected versions:

- Apache Camel (org.apache.camel:camel-aws2-s3) 4.8.0 before 4.18.5
- Apache Camel (org.apache.camel:camel-aws2-s3) 4.19.0 before 4.22.2

Description:

Improper Neutralization of Special Elements used in an Expression Language Statement ('Expression Language Injection') vulnerability in Apache Camel AWS2-s3 component.



This issue affects Apache Camel: from 4.8.0 before 4.18.5, from 4.19.0 before 4.22.2.



For the object it uploads, reads or deletes, the camel-aws2-s3 producer takes the key from the CamelAwsS3Key message header and falls back to the keyName option configured on the endpoint only when that header is absent. Since 4.8.0, AWS2S3Utils.determineKey() also passed the resulting value to the Simple language whenever it contained ${ or $simple{, so that a route could use a dynamic key, and the evaluation applied to a value taken from the header as well as to the configured option. The header is not route configuration, however: the aws2-s3 consumer sets CamelAwsS3Key on the exchanges it creates to the key of the object it read, that is, the name of the object in the bucket. In a route that does nothing more than consume from one aws2-s3 endpoint and produce to another, the name of each consumed object therefore reached the producer, and a name containing either marker was evaluated as an expression, although the route author never asked for any evaluation, and configuring keyName on the producer did not prevent it, because the header took precedence. A key that a route copied into the header from other message content was evaluated in the same way. Anyone able to choose the name of an object in a bucket that such a route consumes, typically a principal allowed to upload to that bucket, could therefore have Simple expressions of their choosing evaluated in the Camel process. The Simple language can read JVM system properties, environment variables and configuration properties, which commonly carry credentials, and, where camel-bean is on the classpath, invoke methods on beans in the registry. The evaluated result became the key the producer used, so reading a value back additionally required the ability to see object names in the destination bucket, while a method invocation took effect without it; together with the need to name an object in a consumed bucket, this is why the severity is assessed medium. The bucket name went through the same evaluation, but the consumer only ever places the bucket configured on its own endpoint in a bucket header, never a value derived from a remote object, so the bucket name was not reachable in this way. Releases before 4.8.0 used the key from the header as given and are not affected.



Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.2. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. The 4.8.x to 4.17.x and 4.19.x to 4.21.x release lines reached end of life before this issue was resolved and will not receive a fix, so deployments on them must move to a supported release. After upgrading, a key or bucket name supplied through a message header is used literally, so a route that put an unevaluated Simple expression in the CamelAwsS3Key or CamelAwsS3OverrideBucketName header must evaluate it in the route instead, for example with setHeader and simple(), or configure it as the keyName or bucketName option of the endpoint. For deployments that cannot upgrade immediately, do not let a key derived from an object name or from other untrusted message content reach an aws2-s3 producer unchecked: in routes that pass exchanges from an aws2-s3 consumer to an aws2-s3 producer, either remove the CamelAwsS3Key header before the producer with removeHeader(“CamelAwsS3Key”), so that the keyName configured on the endpoint is used, or reject exchanges whose CamelAwsS3Key header contains ${ or $simple{. Configuring keyName alone is not a workaround, because the header takes precedence over it. As defence in depth, allow only trusted principals to write to buckets that Camel routes consume.

Solution:

Users are recommended to upgrade to version 4.23.0, which fixes the issue. If users are on the 4.22.x releases stream, then they are suggested to upgrade to 4.22.2. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.5. The 4.8.x to 4.17.x and 4.19.x to 4.21.x release lines reached end of life before this issue was resolved and will not receive a fix, so deployments on them must move to a supported release. AWS2S3Utils.determineKey() and determineBucketName() now evaluate the Simple language only for the keyName and bucketName options configured on the endpoint, which the route author writes; a key supplied through the CamelAwsS3Key header, or a bucket name supplied through the CamelAwsS3OverrideBucketName header, is used literally. A route that put an unevaluated Simple expression in one of these headers must evaluate it in the route instead, for example with setHeader and simple(), or configure it as the keyName or bucketName option of the endpoint.

Work Arounds:

For deployments that cannot upgrade immediately, do not let a key derived from an object name or from other untrusted message content reach an aws2-s3 producer unchecked: in routes that pass exchanges from an aws2-s3 consumer to an aws2-s3 producer, either remove the CamelAwsS3Key header before the producer with removeHeader("CamelAwsS3Key"), so that the keyName configured on the endpoint is used, or reject exchanges whose CamelAwsS3Key header contains ${ or $simple{. Configuring keyName alone is not a workaround, because the header takes precedence over it. As defence in depth, allow only trusted principals to write to buckets that Camel routes consume.

Credit:

Andrea Cosentino from Apache Software Foundation (finder)
Andrea Cosentino from Apache Software Foundation (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-95664.html
https://issues.apache.org/jira/browse/CAMEL-24901
https://github.com/apache/camel/pull/26746
https://github.com/apache/camel/pull/26840
https://github.com/apache/camel/pull/26842
https://github.com/apache/camel/pull/26841
https://github.com/apache/camel/pull/26889
https://issues.apache.org/jira/browse/CAMEL-20971
https://camel.apache.org/security/CVE-2026-78164.html
https://camel.apache.org/security/CVE-2026-83531.html
https://camel.apache.org/security/CVE-2025-27636.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-95664

