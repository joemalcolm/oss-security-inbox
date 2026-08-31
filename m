X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/2
Message-ID: <7465c80d-1458-f83b-54a7-6aeea15ee437@apache.org>
Date: Mon, 31 Aug 2026 06:44:25 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76982: Apache Wicket: XSS in Button via its model object 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-core) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-core) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-core) 10.0.0 through 10.10.0

Description:

Improper neutralization of input during web page generation in Apache Wicket.

org.apache.wicket.markup.html.form.Button clears the escape-model-strings flag in its constructor, so that the value attribute it writes is not encoded twice — ComponentTag already encodes attribute values when it writes the tag. That reasoning holds only for the attribute. When the component is attached to a <button> element rather than an <input>, it writes its model object into the element body instead, and nothing encodes an element body, so markup in the model is rendered as markup.

An application is affected where it renders a Button on a <button> element and that button's model holds data an attacker can influence. Wicket cannot determine where a model value comes from, so whether it reaches the page from a request or from storage is a property of the application. The subclasses that inherit this constructor — AjaxButton, AjaxFallbackButton and WizardButton — are affected on the same terms.

As a workaround, calling setEscapeModelStrings(true) on a button that renders as a <button> element escapes the body correctly, and does not cause double encoding, because the value attribute is written only for <input> elements.

This issue affects Apache Wicket: from 8.0.0 through 8.18.0, from 9.0.0 through 9.23.0, from 10.0.0 through 10.10.0. Older, unsupported releases from 6.25.0 and 7.5.0 onwards are also affected.

Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue.

Credit:

Emond Papegaaij (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76982

