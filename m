X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/13/1
Message-ID: <2ea60db6-f798-f9c6-90c6-93b011257ff7@apache.org>
Date: Fri, 13 Mar 2020 07:33:45 +0100
From: Oliver Heger <oheger@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1953] Uncontrolled class instantiation when loading YAML files in Apache Commons Configuration
Content-Type: text/plain; charset=utf-8

CVE-2020-1953: Uncontrolled class instantiation when loading YAML files
in Apache Commons Configuration

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
2.2 to 2.6

Description:
Apache Commons Configuration uses a third-party library to parse YAML
files which by default allows the instantiation of classes if the YAML
includes special statements. If a YAML file is from an untrusted source,
it can therefore load and execute code out of the control of the host
application.

Mitigation:
Users should upgrade to to 2.7, which prevents class instantiation by
the YAML processor.

Credit:
This issue was discovered by Daniel Kalinowski of ISEC.pl Research Team

Oliver Heger
on behalf of the Apache Commons PMC

