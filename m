X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/5
Message-ID: <b4acad23-c60f-352f-77a4-86875ea6071b@apache.org>
Date: Mon, 31 Aug 2026 06:43:54 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-76985: Apache Wicket: XSS in Palette via getAdditionalAttributes 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-extensions) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-extensions) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-extensions) 10.0.0 through 10.10.0

Description:

Improper neutralization of input during web page generation in Apache Wicket.

org.apache.wicket.extensions.markup.html.form.palette.component.AbstractOptions, which renders the two option lists of a Palette, escapes the id and the display value of each option according to the escape-model-strings setting, and wrote the attribute names and values returned by getAdditionalAttributes into the <option> tag as they came.

An application is affected where it overrides Palette.getAdditionalAttributesForChoices, Palette.getAdditionalAttributesForSelection or AbstractOptions.getAdditionalAttributes and returns a value holding data an attacker can influence. These methods return null by default, so an application that does not override them is not affected.

As a workaround, escape the values in the override.

This issue affects Apache Wicket: from 8.0.0 through 8.18.0, from 9.0.0 through 9.23.0, from 10.0.0 through 10.10.0. Older, unsupported releases from 1.4.0 onwards are also affected. Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue.

Credit:

Emond Papegaaij (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-76985

