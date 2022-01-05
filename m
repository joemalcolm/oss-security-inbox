X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/05/3
Message-ID: <CAAqbB_eXdFUkYbaAXQ8jxi5n+mEkbOY7Qnv4xWtWtZg6VS_+Pg@mail.gmail.com>
Date: Wed, 5 Jan 2022 18:32:51 -0500
From: Neil Griffin <asfgriff@...che.org>
To: general@...tals.apache.org, pluto-user@...tals.apache.org,  announce@...che.org, jetspeed-user@...tals.apache.org, security@...che.org,  oss-security@...ts.openwall.com
Subject: CVE-2021-36738: XSS vulnerability in the JSP version of the Apache Pluto Applicant MVCBean CDI portlet
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

The input fields in the JSP version of the Apache Pluto Applicant MVCBean
CDI portlet are vulnerable to Cross-Site Scripting (XSS) attacks. Users
should migrate to version 3.1.1 of the
applicant-mvcbean-cdi-jsp-portlet.war artifact

Mitigation:

* Uninstall the applicant-mvcbean-cdi-jsp-portlet.war artifact
-or-
* Migrate to version 3.1.1 of the applicant-mvcbean-cdi-jsp-portlet.war
artifact

