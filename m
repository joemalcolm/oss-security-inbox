X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/17
Message-ID: <5d5a133b-072f-ce7f-6a18-7386f5677d5f@apache.org>
Date: Sun, 13 Sep 2026 05:48:07 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82438: Apache Storm Webapp: Authenticated API Responses Exposed to Arbitrary Web Origins 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Webapp (org.apache.storm:storm-webapp) 3.0.0 before 3.1.0

Description:

Description

Three separate mechanisms allowed a web page on an unrelated origin to read responses that Storm's HTTP
components served to an authenticated user.

The Logviewer reflected the request's `Origin` header back in `Access-Control-Allow-Origin` while also
sending `Access-Control-Allow-Credentials: true`. The published security model documents a permissive
`Access-Control-Allow-Origin: *` posture as accepted, which is safe precisely because browsers refuse to
honour `*` together with credentials; reflecting the concrete origin removes that protection.

The shared CORS filter used by the UI, the Logviewer and DRPC was configured with a response header name
where an initialisation parameter name was expected. The container ignored the setting and applied its own
defaults, which allow credentials.

Finally, the UI and Logviewer wrapped API responses in a caller-supplied JSONP callback for every GET
request. A script element on any origin can load such a response, which bypasses the same-origin policy
entirely rather than negotiating it, and there was no way to turn the behaviour off.

In each case the effect is that a page visited by an authenticated operator can read cluster, topology and
log data on their behalf.

Mitigation

Upgrade to 3.1.0, where the Logviewer no longer reflects the request origin in a credentialed response, the
CORS filter is configured explicitly, and JSONP wrapping is governed by `ui.enable.jsonp`, which defaults to
false.

Note that disabling JSONP is a behaviour change for tooling that passes a `callback` query parameter; such
tooling should be moved to ordinary JSON requests.

Users who cannot upgrade immediately should place the UI, Logviewer and DRPC HTTP endpoints behind a reverse
proxy that strips `Access-Control-Allow-Origin` and `Access-Control-Allow-Credentials` from responses and
rejects requests carrying a `callback` parameter.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82438

