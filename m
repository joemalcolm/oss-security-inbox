X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/1
Message-ID: <f2ed47a5-7eb2-76c7-197c-08e9c0ee8637@apache.org>
Date: Mon, 31 Aug 2026 06:45:03 +0000
From: Emond Papegaaij <papegaaij@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75802: Apache Wicket: XSS in AjaxEditableLabel and its subclasses via IChoiceRenderer and defaultNullLabel 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Wicket (org.apache.wicket:wicket-extensions) 8.0.0 through 8.18.0
- Apache Wicket (org.apache.wicket:wicket-extensions) 9.0.0 through 9.23.0
- Apache Wicket (org.apache.wicket:wicket-extensions) 10.0.0 through 10.10.0

Description:

AjaxEditableChoiceLabel in wicket-extensions, when constructed with a non-null IChoiceRenderer, writes the display value obtained from that renderer into the label's markup without applying the HTML escaping Wicket performs by default for component model values. An attacker who can influence the choice or model data rendered by such a label can inject HTML or script that executes in the browser of any user who views the page. The same value is correctly escaped when the component's dropdown editor renders it as an option, so only the label rendering is affected.

AjaxEditableLabel, AjaxEditableChoiceLabel and AjaxEditableMultiLineLabel write the value returned by the protected defaultNullLabel() method into the label's markup the same way when the component's model is empty, while the model value they show otherwise is escaped. The default implementation returns a constant, so an application is affected where it overrides that method and returns a value an attacker can influence.

Neither value could be escaped by configuration, because escapeModelStrings had no effect on any of the three components: it is read by the label they render with rather than by the component itself, and nothing carried the setting across.

This issue affects Apache Wicket: from 8.0.0 through 8.18.0, from 9.0.0 through 9.23.0, from 10.0.0 through 10.10.0. Older, unsupported releases are also affected; the display value from the renderer since 6.22.0 and the null label since 1.4.0. Users are recommended to upgrade to version 8.19.0, 9.24.0 or 10.11.0, which fix the issue.

Credit:

Ho1aAs (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75802

