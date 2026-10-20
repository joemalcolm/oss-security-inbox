X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/10
Message-ID: <ateTa5voBWtH5cTX@donburi.himad.notcom.org>
Date: Tue, 20 Oct 2026 19:22:32 +0300
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: Roundcube webmail: multiple vulnerabilities prior to 1.6.20 / 1.7.5
Content-Type: text/plain; charset=utf-8

Roundcube, a webmail frontend, released a security update on Oct 19 as versions
1.6.20 (LTS) and 1.7.5. The release announcement at
<https://roundcube.net/news/2026/10/19/security-updates-1.6.20-and-1.7.5> lists
multiple command/header injection, XSS/SSRF, and miscellaneous vulnerabilities:

  * Fix IMAP command injection via CRLF in _uid parameter of mail/headers and
  mail/viewsource action, reported by Wahab “NeoX” K.
  
  * Fix bug where an alias login wasn’t qualified by IMAP host, reported by Milan
  Hoppe.

  * Add a size limit to the CSS proxy content processing, reported by Milan
  Hoppe.
  
  * Fix SSRF filter (is_local_url()) bypass via NAT64 64:ff9b::/96, reported by
  dizconnect.
  
  * Fix remote content blocking bypass via SVG SMIL by attribute, reported by
  Milan Hoppe.
  
  * Fix remote content blocking bypass via CSS escapes in FuncIRI attributes
  (again), reported by Milan Hoppe.
  
  * Fix passing potentally unsafe attachment content into ImageMagick on image
  resize, reported by Paulos Yibelo
  
  * Fix mail header injection via the From display-name in the Bounce (resend)
  action, reported by Clay.
  
  * Fix mail header injection via References/In-Reply-To/Message-ID/From
  parameters, reported by Sunil Tripathy.
  
  * Fix object injection primitive in rcube_session::unserialize() via
  “!”-prefixed session keys, reported by Oli Z.
  
  * Fix ImageMagick resource limits bypass by GD fallback during thumbnail
  generation, reported by GoldenSW.
  
  * Fix CSS scoping bypass in HTML messages using at-rules, reported by
  GoldenSW.
  
  * Fix bug where deprecated action aliases bypassed disabled_actions setting,
  reported by Squirt1e, Atum, N0b0dy, and Gh0u1L5.
  
  * Fix IMAP command injection via CRLF in _flag parameter of mail/mark action,
  reported by Squirt1e, Atum, N0b0dy, and Gh0u1L5.
  
  * Fix CSRF validation bypass in the mark-as-junk action, reported by Squirt1e,
  Atum, N0b0dy, and Gh0u1L5.
  
  * Fix XSS issue in handling of password driver error responses, reported by
  Squirt1e, Atum, N0b0dy, and Gh0u1L5.
  
  * Fix mail header injection via subject of a message forwarded as attachment,
  reported by Squirt1e, Atum, N0b0dy, and Gh0u1L5.
  
  * Fix mail header injection via media type in an inline image data URI,
  reported by Squirt1e, Atum, N0b0dy, and Gh0u1L5.
  
  * Fix bug where Password Modoboa driver could change password for another
  account, reported by Squirt1e, Atum, N0b0dy, and Gh0u1L5.
  
  * Fix unsafe use of a login name in SquirrelMail import file path, reported by
  Squirt1e, Atum, N0b0dy, and Gh0u1L5.

No CVE indications were given in the post.

 -valtteri
 
