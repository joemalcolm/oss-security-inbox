X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/30/5
Message-ID: <2a66dcb5-de56-a617-7df2-e28f894cb02b@apache.org>
Date: Sun, 30 Aug 2026 18:55:42 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-71378: Apache Wicket: Cross-Site Request Forgery (CSRF) protection bypass in ResourceIsolationRequestCycleListener 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-core) 9.1.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-core) 10.0.0 through 10.10.0

Description:

ResourceIsolationRequestCycleListener protects a Wicket application against cross-site request forgery by rejecting requests that a resource isolation policy judges to come from another origin. Its default policy, FetchMetadataResourceIsolationPolicy, was derived from a reference implementation written to guard static resources, and it inherited two allowances that are unsafe when the thing being guarded is an action on a page:
  *  Every "simple top-level navigation" was allowed. Any GET request carrying Sec-Fetch-Mode: navigate whose Sec-Fetch-Dest was neither object nor embed was allowed, whatever Sec-Fetch-Site said — including cross-site. Wicket invokes component listeners (Link.onClick(), form submits, behaviour callbacks) through ordinary GET navigations, so a page under an attacker's control could navigate the victim's browser to a listener URL and have that listener run inside the victim's authenticated session. Browsers send SameSite=Lax cookies — the effective default when no SameSite attribute is set — on cross-site top-level GET navigations, so the victim's session cookie accompanied the request.
  *  Sec-Fetch-Site: same-site was allowed unconditionally. That value means the same registrable domain and scheme but a different origin — another subdomain or another port. Any sibling origin could therefore invoke any listener by any method, POST form submits included, and cookies are always sent on same-site requests regardless of SameSite. A hostile sibling origin obtained through a subdomain takeover, through delegated user content, or through an XSS elsewhere on the site could act as the authenticated user.
Users are recommended to upgrade to version 9.24.0 or 10.11.0, which fix the issue.
Affected versions

  *  Apache Wicket 9.1.0 through 9.23.0
  *  Apache Wicket 10.0.0 through 10.10.0



Not affected

Any release older than 9.1.0:
  *  Apache Wicket 8.x (8.0.0 through 8.17.0). The resource isolation classes do not exist in the 8.x line, which offers only the Origin/Referer-based CsrfPreventionRequestCycleListener. No 8.x release requires a fix.
  *  Apache Wicket 9.0.0. ResourceIsolationRequestCycleListener and FetchMetadataResourceIsolationPolicy were introduced by WICKET-6786 and first shipped in 9.1.0 (released 2020-10-07).

Credit:

Darren Carreras (finder)
Andre Kropp (Nexory) (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-71378

