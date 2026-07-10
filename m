X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/11/1
Message-ID: <37d297e9-3777-042d-c9e4-e24c92e32ad5@apache.org>
Date: Fri, 10 Jul 2026 21:14:08 +0000
From: Piotr Karwasz <pkarwasz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49844: Apache Log4j API: Improper serialization of non-finite floating-point values in MapMessage.asJson() 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Log4j API (org.apache.logging.log4j:log4j-api) 2.13.1 before 2.25.5
- Apache Log4j API (org.apache.logging.log4j:log4j-api) 2.26.0 before 2.26.1
- Apache Log4j API (org.apache.logging.log4j:log4j-api) 3.0.0-alpha1 through 3.0.0-beta2

Description:

Improper encoding of non-finite floating-point values during MapMessage JSON serialization in Apache Log4j API produces output that is not valid JSON. This issue affects Apache Log4j API versions 2.13.1 through 2.25.4 and version 2.26.0.

The fix for CVE-2026-34481 did not cover all code paths: when a MapMessage contains a non-finite IEEE 754 value (NaN, Infinity, or -Infinity), MapMessage.asJson() emits the corresponding bare token. RFC 8259 does not permit these tokens, so a conformant parser rejects the resulting document.

The defect is reachable only when both of the following conditions hold:

  *  The application uses the  message resolver https://logging.apache.org/log4j/2.x/manual/json-template-layout.html#event-template-resolver-message  of JsonTemplateLayout or any other layout that relies on MapMessage.asJson() or MapMessage.getFormattedMessage(new String[]{"JSON"}).
  *  The application logs a MapMessage that contains an attacker-controlled floating-point value.


An attacker who can supply a non-finite value can cause the affected layout to emit malformed JSON, which may corrupt the enclosing log record or disrupt downstream log ingestion and parsing.

Users are advised to upgrade to Apache Log4j API 2.25.5 or 2.26.1, both of which emit RFC 8259-compliant JSON for non-finite values.

Credit:

Himanshu Anand (finder)

References:

https://logging.apache.org/log4j/2.x/manual/json-template-layout.html#event-template-resolver-message
https://github.com/apache/logging-log4j2/pull/4163
https://logging.apache.org/cyclonedx/vdr.xml
https://logging.apache.org/security.html#CVE-2026-49844
https://logging.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49844

