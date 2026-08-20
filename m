X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/8
Message-ID: <CADk+mPB0bhx+TdW6WyUS7Vnq6zTLQGk9ZY-ei4E0WcwtEuZe0w@mail.gmail.com>
Date: Thu, 20 Aug 2026 13:02:27 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog: omfile dynaFile containment hardening (GHSA-xmp9-244p-5ggv)
Content-Type: text/plain; charset=utf-8

Hello,

rsyslog has published GHSA-xmp9-244p-5ggv covering hardening of
dynamic filename handling in the omfile output module:

https://github.com/rsyslog/rsyslog/security/advisories/GHSA-xmp9-244p-5ggv

The affected area is omfile configurations that use dynaFile. Dynamic
filenames are intentionally flexible: some established deployments
need that flexibility, including paths that cannot be restricted to
one static base directory. Consequently, preserving this mode is
important for compatibility.

Historically, configurations using this flexible behavior did not
provide a clear warning about the associated path-containment risk.
The secure configuration mechanisms have always been documented as the
recommended way to constrain dynamic output paths, but the legacy
behavior remained the default to avoid silently breaking existing
logging configurations.

The current hardening adds default lexical containment where a static
base path can be determined, together with diagnostics and an
explicit, per-action compatibility opt-in for configurations that
intentionally require path escape. This provides an additional
containment layer for users who need dynaFile flexibility; it is not
presented as a complete filesystem sandbox.

For deployments where untrusted data can influence dynamic filename
expansion, the recommended mitigation is to use the documented secure
path options, including securepath and the secpath-drop or
secpath-replace policies. These options are the reliable security
boundary and should be applied by affected users. Building a
universally complete sandbox around all legacy dynamic-path semantics
would be difficult to do reliably and would risk breaking legitimate
existing configurations.

The advisory intentionally avoids unnecessary reproduction details.
The attached patch is provided for downstream maintainers.

Regards,
Rainer Gerhards
rsyslog project

View attachment "0001-omfile-harden-dynafile-default-containment.patch" of type "text/x-patch" (54250 bytes)
