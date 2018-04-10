X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/04/10/4
Message-ID: <CAE=eJscZ-56D2hFjn1LMRQMOOhQG0aUF-4snqfasXfDMW4e5QA@mail.gmail.com>
Date: Tue, 10 Apr 2018 13:40:48 +0300
From: Tomer Brisker <tbrisker@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2018-1097 Foreman: oVirt credentials exposed by host power API
Content-Type: text/plain; charset=utf-8

An information disclosure vulnerability was discovered in the host power
API in Foreman.
When sending a power action to a host provisioned on an oVirt compute
resource, the API responded with details of the compute resource, including
credentials in clear text.

This issue affect Foreman 1.3 or newer.
A fix is included in the 1.16.1 release.
Details are available at http://projects.theforeman.org/issues/22546​

-- 
Have a nice day,
Tomer Brisker
Red Hat Engineering

