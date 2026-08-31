X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/3
Message-ID: <b7a8b5a8-0a47-7e3b-eafd-79130fd2a96e@apache.org>
Date: Mon, 31 Aug 2026 06:44:13 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76983: Apache Wicket: XSS in AutoLabelTextResolver via FormComponent.setLabel 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-core) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-core) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-core) 10.0.0 through 10.10.0

Description:

Improper neutralization of input during web page generation in Apache Wicket.

The <wicket:label> tag is provided by org.apache.wicket.markup.html.form.AutoLabelTextResolver, which is registered by default in every WebApplication. The resolver writes the label it finds into the markup as it is, and reads no escaping setting at all, so markup in a label is rendered as markup.

When the label comes from the labelled component's label model, set through FormComponent#setLabel(IModel), it is written to the markup unescaped. An application is affected where the label of a form component holds data an attacker can influence. Wicket cannot determine where a model value comes from, so whether it reaches the page from a request or from storage is a property of the application.

There is no workaround. Unlike every other rendering path in Wicket, the resolver never consulted the escape-model-strings setting, so an application had no way to ask for the label to be escaped.

The body of a <wicket:label> tag is markup by design and is not affected; it remains the supported way to place markup in a label.

This issue affects Apache Wicket: from 8.0.0 through 8.18.0, from 9.0.0 through 9.23.0, from 10.0.0 through 10.10.0. Older, unsupported releases from 1.5.0 onwards are also affected. Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue.

Credit:

Ho1aAs (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76983

