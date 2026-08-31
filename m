X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/6
Message-ID: <cdb1c5b0-cd19-8a76-52a3-f69ad47980b3@apache.org>
Date: Mon, 31 Aug 2026 06:43:42 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76986: Apache Wicket: XSS in AbstractSingleSelectChoice via getNullValidDisplayValue 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-core) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-core) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-core) 10.0.0 through 10.10.0

Description:

Improper neutralization of input during web page generation in Apache Wicket.

org.apache.wicket.markup.html.form.AbstractSingleSelectChoice, the base class of DropDownChoice, writes the body of the default option — the entry shown when no choice is selected — into the markup as it is, while every other option body in the same select is escaped according to the escape-model-strings setting. The body comes from getNullValidDisplayValue() or getNullKeyDisplayValue(), both of which are protected, so what they return is not necessarily the plain text the default implementation reads from a resource bundle.

An application is affected where it overrides one of those methods and returns a value holding data an attacker can influence, or where its own nullValid or null bundle entry holds such a value. The bundles shipped with Wicket contain plain text. RadioChoice overrides getDefaultChoice to emit no default option and is not affected.

As a workaround, escape the value in the override.

This issue affects Apache Wicket: from 8.0.0 through 8.18.0, from 9.0.0 through 9.23.0, from 10.0.0 through 10.10.0. Older, unsupported releases from 1.5.0 onwards are also affected. Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue.

Credit:

Emond Papegaaij (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76986

