X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/18/2
Message-ID: <CAELOW3Xzt-hLT+rq73-z0RrHLT=bkzUsBxkn_XL9AdDOmZrS2w@mail.gmail.com>
Date: Sun, 18 Oct 2026 15:01:30 +0200
From: Andrea Cosentino <ancosen@...il.com>
To: oss-security@...ts.openwall.com
Cc: users@...el.apache.org
Subject: Apache Camel: 38 CVEs fixed in 4.18.5, 4.22.1 and 4.23.0
Content-Type: text/plain; charset=utf-8

On 15 October the Apache Camel PMC published 38 security advisories. All of
the issues are fixed in Apache Camel 4.18.5, 4.22.1 and 4.23.0, and we
recommend upgrading. The 4.14.x line has reached end of life and does not
get these fixes, so if you are still on 4.14.x or older, please move to a
supported release.

Apache Camel: Camel-Hazelcast: incomplete fix for CVE-2026-43865, unsafe
Java deserialization
CVE-2026-78162 (MEDIUM):
https://camel.apache.org/security/CVE-2026-78162.html
Two configuration paths that Camel builds itself,
ReplicatedHazelcastAggregationRepository and the client configuration for
hazelcastMode=client, still had no Java deserialization filter, so
deployments that upgraded for CVE-2026-43865 stayed exposed.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Docling: server-side request forgery and local file
disclosure
CVE-2026-78163 (MEDIUM):
https://camel.apache.org/security/CVE-2026-78163.html
DoclingProducer decided from the prefix of a String body whether to fetch
it as a URL, read it as a local file or convert it as content, so whoever
controlled the body could make it fetch remote resources or read local
files.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.15.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: HTTP producers: property placeholders resolved on
message-supplied URI headers
CVE-2026-78164 (HIGH): https://camel.apache.org/security/CVE-2026-78164.html
camel-http, camel-netty-http, camel-undertow and camel-vertx-http resolved
property placeholders in the CamelHttpUri and CamelRestHttpUri headers, so
a sender able to influence them could get configuration values and vault
secrets expanded into the outbound request, and no-argument bean methods
invoked.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Spring-Redis: remote code execution through Java
deserialization
CVE-2026-78165 (HIGH): https://camel.apache.org/security/CVE-2026-78165.html
The default JdkSerializationRedisSerializer read Redis payloads without an
ObjectInputFilter, so anyone able to publish to the subscribed channel
could achieve remote code execution.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 2.11.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-FTP: path traversal through the server directory listing
CVE-2026-79983 (HIGH): https://camel.apache.org/security/CVE-2026-79983.html
The consumer built the remote path of each polled file from the name in the
server's directory listing without keeping it inside the polled directory,
so a crafted entry could be retrieved, deleted or renamed outside it.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Mina-SFTP: path traversal through the server directory
listing
CVE-2026-79984 (HIGH): https://camel.apache.org/security/CVE-2026-79984.html
The consumer built the remote path of each polled file from the name in the
server's directory listing without keeping it inside the polled directory,
so a crafted entry could be retrieved, deleted or renamed outside it.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.18.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-SMB: path traversal through the share listing
CVE-2026-79985 (HIGH): https://camel.apache.org/security/CVE-2026-79985.html
The consumer built the remote path of each polled file from the name in the
share listing without keeping it inside the polled directory, so a crafted
entry could be retrieved, deleted or renamed outside it.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.2.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Azure-Files: path traversal through the share listing
CVE-2026-79986 (HIGH): https://camel.apache.org/security/CVE-2026-79986.html
The consumer built the remote path of each polled file from the name in the
share listing without keeping it inside the polled directory, so a crafted
entry could be retrieved, deleted or renamed outside it.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-OAuth: authentication bypass
CVE-2026-80312 (HIGH): https://camel.apache.org/security/CVE-2026-80312.html
The OAuth processors handed control back to the route when authentication
could not be completed, so a request that failed authentication was
processed as if it had succeeded.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.11.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Netty-HTTP: security constraint bypass through the case
of the path
CVE-2026-80343 (HIGH): https://camel.apache.org/security/CVE-2026-80343.html
The security constraint matched the request path case sensitively while
dispatch to the route did not, so changing the case of a path segment
skipped the constraint and still reached the endpoint.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-AS2: server-side request forgery and credential
disclosure
CVE-2026-80344 (HIGH): https://camel.apache.org/security/CVE-2026-80344.html
The asynchronous MDN delivery address supplied by the remote partner was
used as the destination for the receipt, so the sender chose where Camel
connected and which credentials it presented.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Dynamic-Router: code execution through control messages
CVE-2026-83531 (HIGH): https://camel.apache.org/security/CVE-2026-83531.html
The dynamic-router-control endpoint compiled the subscription predicate
from an expression and an expression language taken from the control
message, so anyone able to send messages that reach the control endpoint
could run code in the Camel process.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.4.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Platform-HTTP-Vertx: cross-origin credential exposure
CVE-2026-84176 (MEDIUM):
https://camel.apache.org/security/CVE-2026-84176.html
Access-Control-Allow-Credentials was set outside the origin check and the
caller's own Origin was reflected back when no origin list was configured,
which produced a credentialed any-origin CORS policy.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-OAuth: login cross-site request forgery
CVE-2026-84178 (MEDIUM):
https://camel.apache.org/security/CVE-2026-84178.html
The authorization code callback was not bound to the flow that started it,
so a code obtained in any browser could be redeemed at the callback and
bound to whichever session presented it.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.11.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Knative: information disclosure through error responses
CVE-2026-84180 (MEDIUM):
https://camel.apache.org/security/CVE-2026-84180.html
A route failure was written back to the caller as the response body, so the
exception class, message and stack trace of an internal error reached an
external sender.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Shiro: authentication bypass
CVE-2026-84181 (MEDIUM):
https://camel.apache.org/security/CVE-2026-84181.html
The presented credentials were not verified when the Shiro subject already
bound to the thread matched the incoming principal, so a request could
reuse an authentication it never performed.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Crypto-PGP: integrity verification downgrade
CVE-2026-85243 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85243.html
The modification detection code was only checked when the message used the
integrity protected packet, so a sender choosing the legacy packet skipped
the integrity check entirely.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Thrift: cross-exchange data disclosure
CVE-2026-85245 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85245.html
Unmarshalling deserialized into the shared defaultInstance instead of a
copy, so fields set by one message stayed visible to the next.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Mina: information disclosure through route exceptions
CVE-2026-85246 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85246.html
The consumer wrote the route's exception straight back over the socket,
giving the remote peer its class and message over the textline codec and
its serialised form over the object codec.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Knative: improper certificate validation
CVE-2026-85247 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85247.html
Enabling SSL without configuring a truststore fell back to trusting every
certificate, so turning TLS on was what turned certificate validation off.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-PQC: signature verification bypass
CVE-2026-85248 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85248.html
One java.security.Signature instance was shared across concurrent exchanges
without synchronization, so interleaved use could make a verification
succeed for data it never covered.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.12.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Tika: header injection through document metadata
CVE-2026-85249 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85249.html
Metadata parsed out of the submitted document was mapped onto the exchange
as headers without filtering, so the document could set headers the route
relies on, such as CamelFileName.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-XPath: XML external entity processing
CVE-2026-85250 (HIGH): https://camel.apache.org/security/CVE-2026-85250.html
With documentType=InputSource the payload went to an XPath engine that
built its own parser with JDK defaults, so a DOCTYPE refused on the default
document type was accepted and its external entity resolved.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-HTTP: credential disclosure on redirects
CVE-2026-85251 (HIGH): https://camel.apache.org/security/CVE-2026-85251.html
With followRedirects enabled the Authorization header was re-attached to
whatever host the Location header named, so the remote server chose which
host received the credentials.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Platform-HTTP: request header echo suppression bypass
CVE-2026-85254 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85254.html
The check that stops a request header from being echoed into the response
compared header names case sensitively, so a differently cased name
defeated it, and under HTTP/2 it never matched at all.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-CXF: information disclosure through SOAP faults
CVE-2026-85257 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85257.html
An exception thrown by the route was described back to the SOAP client in
the fault, exposing internal exception types and messages that were never
part of the service contract.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-MLLP: protected health information written to the log
CVE-2026-85260 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85260.html
logPhi defaulted to true, so HL7 payload content was written to the log out
of the box, and two code paths logged it regardless of the setting.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-AS2: cross-partner signing key confusion
CVE-2026-85296 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85296.html
Per-request signing material was held in state shared across requests, so a
receipt could be signed with the key of a different trading partner.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-PQC: private key disclosure through file permissions
CVE-2026-85300 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85300.html
Generated key material was written to disk with the process default file
permissions instead of being restricted to the owner, so any local account
able to read the directory could read the private key.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.12.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Keycloak: issuer validation bypass
CVE-2026-85301 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85301.html
The issuer check was skipped instead of failing when the token
introspection response carried no iss claim, so a token from an unintended
issuer could be accepted.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.15.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Core: saga hijacking
CVE-2026-85312 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85312.html
The saga processor read a Long-Running-Action header that sits outside the
filtered Camel header namespace, so an external sender could choose which
saga an exchange joined.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Jetty: cross-origin credential exposure with enableCORS
CVE-2026-85313 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85313.html
Setting enableCORS installed Jetty's CrossOriginFilter with its allow-all
defaults, so every origin was accepted and credentials were granted to all
of them.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Mail: header injection, incomplete fix for
CVE-2026-46584
CVE-2026-85314 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85314.html
The MimeMultipart data format mapped mail.smtp headers onto the exchange
without applying the header filter, leaving open the path that
CVE-2026-46584 was meant to close.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-gRPC: information disclosure through the gRPC status
CVE-2026-85315 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85315.html
The route exception's message was placed into the gRPC status description,
which is sent to the caller, so internal error messages reached external
clients.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Platform-HTTP: unintended proxy mode
CVE-2026-85316 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85316.html
Proxy mode was selected by checking whether the configured path started
with proxy, so any path beginning with those characters silently became a
proxy endpoint.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-HTTP: OAuth2 token confusion
CVE-2026-85317 (MEDIUM):
https://camel.apache.org/security/CVE-2026-85317.html
The JVM-wide token cache was keyed on fewer fields than shape the token, so
an endpoint could be served a cached token minted for a different scope,
resource or token endpoint.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-Smooks: XML external entity processing
CVE-2026-88901 (HIGH): https://camel.apache.org/security/CVE-2026-88901.html
The Smooks data format and component parsed the XML body with the reader
Smooks uses by default, which resolves external entities and loads external
DTDs, so the body could read local files or reach internal hosts.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.7.0 before 4.18.5, from 4.19.0 before 4.22.1

Apache Camel: Camel-FOP: XML external entity processing
CVE-2026-91858 (MEDIUM):
https://camel.apache.org/security/CVE-2026-91858.html
FopProducer created its TransformerFactory with only secure processing
enabled, so with a third-party JAXP implementation such as Saxon-HE on the
classpath, external DTDs and entities in the XSL-FO input were resolved.
Fixed in: 4.18.5, 4.22.1, 4.23.0
Affected: from 4.0.0 before 4.18.5, from 4.19.0 before 4.22.1

Thanks,
Andrea Cosentino
on behalf of the Apache Camel PMC

