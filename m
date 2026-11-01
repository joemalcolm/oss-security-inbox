X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/01/4
Message-ID: <CAGXsc+a+Ji_5p91Odt2a18EPdzAXQe+q=NcAoJC-tPeF3P2Msg@mail.gmail.com>
Date: Sun, 1 Nov 2026 22:48:04 +0100
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: Apache Wicket: 19 CVEs fixed in 8.20.0, 9.25.0 and 10.12.0
Content-Type: text/plain; charset=utf-8

On 1 November the Apache Wicket PMC published 19 security advisories. All of
the issues are fixed in Apache Wicket 8.20.0, 9.25.0 and 10.12.0, for the
release lines each one affects, and we recommend upgrading. 8.20.0 and
9.25.0 are the final releases of the 8.x and 9.x lines, which have now
reached end of life, so if you are on 8.x or 9.x, please plan your move to
Wicket 10 (LTS) or Wicket 11. Releases older than 8.x are no longer
supported and do not get these fixes.

Apache Wicket: Native WebSocket: authorization strategy not applied to a
shared WebSocketResource
CVE-2026-82115 (MEDIUM):
https://lists.apache.org/thread/0lj9og7vp22ps77nrwdj42f64cfb9g4c
WebSocketMessageBroadcastHandler called WebSocketResource#onPayload()
directly instead of going through ResourceRequestHandler, so
IAuthorizationStrategy#isResourceAuthorized() and @AuthorizeResource were
never consulted and any client with a session could drive the resource's
callbacks.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: Form: disabled or invisible submitting component invoked on a
plain submission
CVE-2026-82557 (MEDIUM):
https://lists.apache.org/thread/lz4jot6f9ycxfjyhmlr2b4ssynmgpy92
Form#onRequest() handed the submitter it resolved from the request straight
to onFormSubmitted(), skipping the visible-and-enabled check, so a request
naming a withheld Button or SubmitLink reached its onSubmit(), including one
denied by the authorization strategy.
Fixed in: 10.12.0
Affected: from 10.3.0 before 10.12.0

Apache Wicket: Native WebSocket: messages delivered to a component the
client may not invoke
CVE-2026-82558 (LOW):
https://lists.apache.org/thread/o1ojfn53742ztd13m93336t3kdjw2tq9
WebSocketBehavior called onMessage() without the canCallListener() check
that Ajax behaviors get, so client messages reached behaviors on components
that were hidden, disabled or denied by the authorization strategy.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: Native WebSocket: session state survives invalidation
CVE-2026-82559 (LOW):
https://lists.apache.org/thread/5vkw9wz6gf135ccosj928zjs4hqy7bcv
Each connection resolved its Wicket session from a copy of the HTTP session
taken at the handshake, so after a container logout, an idle timeout or
HttpSession#invalidate() the connection went on acting with the revoked
identity.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: Authorization bypass through a listener URL without a page id
CVE-2026-82704 (MEDIUM):
https://lists.apache.org/thread/yrtov7vfmj7c7wl7j1tt0dsv2t0zwy9b
A bookmarkable listener URL with an empty page identifier constructed a new
page and invoked the listener before Component#configure() had run, so a
component denied RENDER by the authorization strategy, or hidden or disabled
in onConfigure(), was still invoked.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: Authorization strategy not applied to an IResource held by a
component
CVE-2026-82705 (MEDIUM):
https://lists.apache.org/thread/t9y3sho3wkqkr1vsf74xn8tzmgdr1tgo
ResourceLink, Image, ImageButton and AjaxDownloadBehavior served an
IResource instance from their own listener rather than through
ResourceRequestHandler, so isResourceAuthorized() and @AuthorizeResource
were skipped; ExportToolbar builds its export links this way.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: Auth-Roles: session fixation on re-authentication
CVE-2026-82840 (HIGH):
https://lists.apache.org/thread/q812kjb74x2pt6956w0pcmkc4wwj95l9
AuthenticatedWebSession#signIn() renewed the session id only on the first
transition to signed in, so a session that was already signed in and
authenticated again kept the id an attacker may have planted.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.18.0 before 8.20.0, from 9.23.0 before 9.25.0, from 10.9.0
before 10.12.0

Apache Wicket: Resource isolation bypass through the login redirect
CVE-2026-82898 (LOW):
https://lists.apache.org/thread/bm4mlwsgftxfg345zvdqj0skg1mktpyp
ResourceIsolationRequestCycleListener instantiated the target page before
consulting its policies, so a RestartResponseAtInterceptPageException from
the authorization strategy skipped them, and the cross-origin URL it stored
was replayed same-origin once the user signed in.
Fixed in: 9.25.0, 10.12.0
Affected: from 9.1.0 before 9.25.0, from 10.0.0 before 10.12.0

Apache Wicket: AjaxNewWindowNotifyingBehavior: stored cross-site scripting
through the window name
CVE-2026-82956 (HIGH):
https://lists.apache.org/thread/fs3vdddt9bwshdstj952psj49s5w4vqm
The window name reported by the browser was kept in the page state and
substituted unescaped into a JavaScript string literal on every later
render, so a name containing a quote ran as script.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: SmartLinkLabel: cross-site scripting through a
script-executing URL scheme
CVE-2026-83539 (HIGH):
https://lists.apache.org/thread/xqdymd8g178sc112lmqbp53zlss53cwz
DefaultLinkParser turned any scheme://... text in the model into a link
without a list of permitted schemes, so data naming a scheme that executes
script became a link that runs it when clicked; the default CSP of 9.x and
10.x blocks it, 8.x has none.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: JavaScriptUtils: escapeQuotes() does not escape the backslash
CVE-2026-83559 (HIGH):
https://lists.apache.org/thread/77kc85ztkxdpp7wg7cv61c4539j9s1g3
escapeQuotes() escaped quotes but not the backslash, so a value with a
backslash before a quote closed its string literal; this affects application
code that calls the method and the error message of AjaxEditableLabel.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: FileUploadToResourceField: client-asserted upload result and
unbounded allocation
CVE-2026-83594 (HIGH):
https://lists.apache.org/thread/h5lxspxg746pzjd437n3n7mq5t3sfbcb
The upload callback built its UploadInfo list from client-supplied JSON
without binding it to an upload that happened, and UploadInfo#get()
allocated a byte array of the claimed size, so one small request could cost
close to two gigabytes of heap.
Fixed in: 9.25.0, 10.12.0
Affected: from 9.14.0 before 9.25.0, from 10.0.0 before 10.12.0

Apache Wicket: File upload resource: configured upload limits not enforced
CVE-2026-84170 (HIGH):
https://lists.apache.org/thread/bw3hn5cch3q7yrsl05m8mvmgyx4m98y7
AbstractFileUploadResource took maxSize, fileMaxSize and fileCountMax from
the request parameters, so an unauthenticated client could override the
limits configured on FileUploadToResourceField and fill disk or heap.
Fixed in: 9.25.0, 10.12.0
Affected: from 9.14.0 before 9.25.0, from 10.0.0 through 10.9.1

Apache Wicket: PackageResourceGuard: markup disclosure with a separate class
loader
CVE-2026-84172 (MEDIUM):
https://lists.apache.org/thread/90mlx42q7nkdccdby1ql1ksl4sxy13x6
The guard looked for the component class beside an HTML file through
wicket-core's own class loader, so where wicket-core cannot see the
application's classes (a shared library directory, an EAR library, OSGi)
component markup templates were served as package resources.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: PackageResource: markup disclosure for class names containing
an underscore
CVE-2026-84177 (MEDIUM):
https://lists.apache.org/thread/hy089v60t5v36skpnbry96vr2427lw0o
The guard checked the path before the style, variation and locale from the
URL were appended to it, so a shorter name completed by a style resolved to
the markup template of a component such as Report_v2, which was then served.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: ExternalLink: cross-site scripting through the model URL
CVE-2026-84231 (HIGH):
https://lists.apache.org/thread/39kz9838w25797bpkxn1hvfsm8jtc4zv
Bound to a tag other than a, link or area, ExternalLink wrote the model URL
into a JavaScript string in the onclick handler with only markup escaping,
which the browser undoes, so a quote in the URL closed the literal.
Fixed in: 8.20.0
Affected: from 8.0.0 before 8.20.0

Apache Wicket: CSP headers omitted behind nested request handler delegates
CVE-2026-87718 (LOW):
https://lists.apache.org/thread/fjq8v35zpkbtjwpzwkkpzocwtdgokp1m
Only one IRequestHandlerDelegate level was unwrapped when deciding whether a
request renders a page, so a page behind two or more delegates, such as a
custom mapper combined with CryptoMapper, was served without its
Content-Security-Policy.
Fixed in: 9.25.0, 10.12.0
Affected: 9.24.0, from 10.10.0 before 10.12.0

Apache Wicket: Cross-site scripting through component and markup ids
CVE-2026-95863 (HIGH):
https://lists.apache.org/thread/5wg754b873tlnsc268myrwcoy9lt046v
Markup ids and form input names were written into generated JavaScript
string literals without escaping, in wicket-core and several
wicket-extensions components, so an application-supplied id containing a
quote or backslash ran as script past the default CSP; the fixed versions
reject such ids.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Apache Wicket: Cross-site scripting through resource bundle texts
CVE-2026-111089 (HIGH):
https://lists.apache.org/thread/xyp4sm5mm7s618fktstb22577qxbmqw8
Texts and css classes read from resource bundles were written into
JavaScript string literals and attribute values without escaping by
MultiFileUploadField, Form, UploadProgressBar, FilterForm and
TrapFocusBehavior, so a text containing a quote broke out of its context.
Fixed in: 8.20.0, 9.25.0, 10.12.0
Affected: from 8.0.0 before 8.20.0, from 9.0.0 before 9.25.0, from 10.0.0
before 10.12.0

Thanks,
Emond Papegaaij
on behalf of the Apache Wicket PMC
