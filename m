X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/7
Message-ID: <CAJb-xDKCeY3LTST6_7C-BoV6dXLUFnOoo2eaR9M=FDosRhHyKQ@mail.gmail.com>
Date: Tue, 3 Nov 2026 09:47:32 -0500
From: James Bognar <jamesbognar@...che.org>
To: oss-security@...ts.openwall.com
Cc: users@...eau.apache.org, dev@...eau.apache.org, announce@...che.org
Subject: [SECURITY] Apache Juneau 9.2.1 fixes multiple vulnerabilities (CVE-2026-73095, ..., CVE-2026-73117)
Content-Type: text/plain; charset=utf-8

Apache Juneau 9.2.1, released on 2026-11-03, fixes the following
vulnerabilities. All affect Apache Juneau through 9.2.0. Users are
recommended
to upgrade to version 9.2.1, which fixes these issues.

The juneau-shaded-* and other aggregate artifacts embed the affected modules
and are affected in the same way; upgrade them to 9.2.1 as well.

Download: https://downloads.apache.org/juneau/9.2.1/
Maven: org.apache.juneau, version 9.2.1

Upgrading changes some defaults (see each issue below): request bodies over
1 MB need a larger @Rest(maxInput), error responses no longer carry internal
exception detail unless renderResponseStackTraces is on, and the content
query parameter is honored only on PUT and POST.


------------------------------------------------------------------------
[CVE-2026-73095] Apache Juneau: Denial of service via unbounded memory
allocation in parsers and REST request handling

Severity: important

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-marshall) through 9.2.0
- Apache Juneau (org.apache.juneau:juneau-rest-server) through 9.2.0

Description:
The Apache Juneau MessagePack parser allocates a buffer sized directly from
the length field of a binary or string value in the input before reading any
payload bytes. A request body of a few bytes can therefore force a
multi-gigabyte allocation and an OutOfMemoryError. MsgPackParser is one of
the
default parsers of the REST server's BasicUniversalConfig, so an
unauthenticated client can trigger this against default REST resources.
Related unbounded allocations in the REST server are fixed at the same time:
multipart form uploads were not limited by the maxInput setting, the request
reader buffer was sized from the client-supplied Content-Length, an
OutOfMemoryError during parsing was not converted into a parse failure, and
the default maxInput was lowered from 100 MB to 1 MB. The fix caps lengths
read from the input at a configurable maximum (16 MiB by default) and
rejects
larger values with a parse error.

Mitigation:
Upgrade to 9.2.1. If you cannot upgrade immediately, remove MsgPackParser
from
resources that accept untrusted input; a request size limit in front of the
application reduces but does not remove the exposure.

Credit:
n0mi1k (finder)


------------------------------------------------------------------------
[CVE-2026-121489] Apache Juneau: Path traversal in DirectoryResource
allows reading files outside the configured root directory

Severity: moderate

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-microservice-core) through 9.2.0
- Apache Juneau (org.apache.juneau:juneau-commons) through 9.2.0

Description:
The Apache Juneau microservice DirectoryResource builds file paths from the
request path without checking that the result stays inside the configured
root directory. A client can use parent-directory segments to reach files
outside the root. Depending on the resource's settings this allows viewing
files (allowViews), deleting files (allowDeletes) or writing files
(allowUploads) anywhere the server process has access. These settings are
off
by default, so only applications that enable them are affected. The fix
resolves each path against the root directory and returns 403 Forbidden for
any path that escapes it.

Mitigation:
Upgrade to 9.2.1. If you cannot upgrade immediately, disable allowViews,
allowUploads and allowDeletes on DirectoryResource, or do not expose it to
untrusted clients.

Credit:
LTSHFWJT (finder)


------------------------------------------------------------------------
[CVE-2026-96677] Apache Juneau: Cross-site scripting via unescaped
request variables in HTML-doc chrome

Severity: moderate

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-marshall) through 9.2.0

Description:
Apache Juneau HTML document serialization writes Simple Variable Language
substitutions into HTML-doc chrome regions (aside, header, footer, nav,
head,
and the no-results message) without HTML encoding. Request-derived variables
named RQ, RH, RF, and RP return raw request data. Default chrome does not
interpolate those variables. When an application places a request-derived
variable in an HTML-format HtmlDocConfig chrome field, the request value is
reflected unencoded into the generated page. The article body already
encoded
substitutions. Script and style chrome fields could interpolate the same
request variables as raw text. The fix HTML-encodes substitutions in HTML
chrome (except developer HTML passthrough variables W, C, and RS) and leaves
request variables unresolved in script and style.

Mitigation:
Upgrade to 9.2.1. If you cannot upgrade immediately, remove request
variables
(RQ, RH, RF, RP) from HtmlDocConfig chrome fields.

Credit:
Reported to the ASF Security Team by 姬珏 (Diana Wang) (finder) and relayed
to the Apache
Juneau PMC by Piotr P. Karwasz.


------------------------------------------------------------------------
[CVE-2026-73099] Apache Juneau: Cross-site request forgery via
default-enabled content query-parameter body override

Severity: important

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-rest-server) through 9.2.0

Description:
The Apache Juneau REST server accepts a content query parameter that
replaces
the request body, and this override is enabled by default
(disableContentParam is false). Before the fix, the override was honored on
every HTTP method, including GET. A cross-site link or embedded resource
could
therefore deliver an attacker-chosen request body to an endpoint without a
CORS preflight and without the content type the endpoint normally expects,
defeating protections that rely on the method or content type instead of an
anti-CSRF token. The fix honors the content parameter only on PUT and POST
requests.

Mitigation:
Upgrade to 9.2.1. Applications that do not use the content parameter should
also set disableContentParam to true.

Credit:
Found by the Apache Juneau team.


------------------------------------------------------------------------
[CVE-2026-73100] Apache Juneau: Sensitive request headers logged in
cleartext by the default request logger on server errors

Severity: important

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-rest-server) through 9.2.0
- Apache Juneau (org.apache.juneau:juneau-rest-common) through 9.2.0

Description:
The default Apache Juneau REST server call logger records request headers
for
requests that end in a server error, and it wrote header values unredacted.
Any client able to cause a server error had headers such as Authorization,
Cookie, Proxy-Authorization and X-API-Key written in cleartext to the
application log, where they are exposed to anyone who can read the logs. The
fix redacts these credential headers by default.

Mitigation:
Upgrade to 9.2.1. Review existing logs for leaked credentials and rotate any
found. If you cannot upgrade immediately, configure a call logger that does
not log request headers.

Credit:
Found by the Apache Juneau team.


------------------------------------------------------------------------
[CVE-2026-73101] Apache Juneau: Internal exception class and message
disclosed via error response header and body regardless of secure
defaults

Severity: moderate

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-rest-server) through 9.2.0

Description:
The Apache Juneau REST server added a Thrown response header naming the
exception class and message for every error response, and could include
internal exception messages in the error body, regardless of whether
stack-trace rendering was enabled. This reveals implementation details to
remote clients. The fix no longer sends internal exception details to
clients
by default.

Mitigation:
Upgrade to 9.2.1. Clients that relied on exception detail in error responses
need @Rest(renderResponseStackTraces="true") on the server.

Credit:
Found by the Apache Juneau team.


------------------------------------------------------------------------
[CVE-2026-73098] Apache Juneau: Unsafe reflection allows
attacker-controlled class initialization during parsing

Severity: moderate

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-marshall) through 9.2.0

Description:
When Apache Juneau parses a value into a property of type java.lang.Class
(including parameterized forms), the default class swap loaded the named
class
with initialization enabled. Input that names a class on the application
classpath therefore ran that class's static initializer. The impact depends
on
the classes present in the deployment. The fix loads the class without
initializing it.

Mitigation:
Upgrade to 9.2.1. If you cannot upgrade immediately, avoid parsing untrusted
input into bean properties of type Class.

Credit:
Found by the Apache Juneau team.


------------------------------------------------------------------------
[CVE-2026-73116] Apache Juneau: REST client forwards credentials to a
different origin when following HTTP redirects

Severity: important

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-rest-client) through 9.2.0
- Apache Juneau (org.apache.juneau:juneau-rest-common) through 9.2.0

Description:
The Apache Juneau RestClient followed HTTP redirects while keeping
credential
headers set on the original request. A server that redirects the client to a
different host or port, or from HTTPS to HTTP, therefore received or exposed
headers such as Authorization, Cookie, Proxy-Authorization and X-API-Key.
The
fix removes these headers when a redirect changes origin or downgrades to
HTTP. The protection applies to HTTP clients created by the RestClient
builder. It does not apply when an application supplies its own HttpClient
to
the builder; such applications must configure equivalent redirect handling
themselves.

Mitigation:
Upgrade to 9.2.1. If you cannot upgrade immediately, disable automatic
redirects on clients that send credentials to untrusted servers. For a
user-supplied HttpClient (which 9.2.1 does not protect), disable
redirect handling on that client (for example
HttpClientBuilder.disableRedirectHandling()) and follow redirects in
application code after removing credential headers, or install a redirect
strategy that removes them when the origin changes or the scheme downgrades
to HTTP.

Credit:
Found by the Apache Juneau team.


------------------------------------------------------------------------
[CVE-2026-73117] Apache Juneau: Response header CRLF injection and open
redirect when applications set headers or redirect targets from request
data

Severity: low

Affected versions:
- Apache Juneau (org.apache.juneau:juneau-rest-server) through 9.2.0

Description:
The Apache Juneau REST server RestResponse passed response header values and
redirect targets to the servlet container as given. Stripping of invalid
characters such as CR and LF from header values was available only as an
opt-in (setSafeHeaders()), and sendRedirect() accepted any target. An
application that sets a response header or a redirect target from request
data
(for example a query parameter or a request header) could therefore let a
remote client inject header lines, where the servlet container does not
itself
reject CR/LF, or steer users to an arbitrary external site. The framework
itself does not build headers or redirects from request data; the exposure
depends on application code. The fix makes stripping of invalid characters
from
header values the default (setUnsafeHeaders() opts out) and adds
RestResponse.sendSafeRedirect(String,String...), which accepts only a
relative
path or a host on an allow-list.

Mitigation:
Upgrade to 9.2.1. Applications that build a redirect target from request
data
must also switch from sendRedirect() to sendSafeRedirect(), which 9.2.1 does
not do for them. If you cannot upgrade immediately, call setSafeHeaders() on
the response and validate redirect targets against an allow-list.

Credit:
Found by the Apache Juneau team.


------------------------------------------------------------------------
References:
https://juneau.apache.org/security
https://downloads.apache.org/juneau/9.2.1/
https://github.com/apache/juneau/releases/tag/juneau-9.2.1

James Bognar, on behalf of the Apache Juneau PMC

