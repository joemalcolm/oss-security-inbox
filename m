X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/14
Message-Id: <456C50FD-9704-44A0-99CB-DA5F94EB18DC@overlookinfratech.com>
Date: Tue, 3 Nov 2026 12:09:48 -0800
From: Ben Ford <binford2k@...rlookinfratech.com>
To: oss-security@...ts.openwall.com
Subject: OpenVox Server RCE and client impersonation vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello from the OpenVox project.

We released updates to mitigate two 9+ CVE vulnerabilities that affect all known OpenVox and Puppet versions and implementations. Please update any usage of OpenVox to the versions listed below or greater. This includes your own infrastructures or in any repackaged or bundled usage.
 - openvox-agent versions 9.3.0 and 8.32.0
 - openvox-server versions 9.2.0 and 8.18.0
 - openvoxdb versions 9.2.0 and 8.18.0

We would also recommend that any usage of OSS Puppet should be migrated to OpenVox as soon as possible, as Puppet will not be receiving security updates.

## Remote Code Execution on the OpenVox Server

The Puppet/OpenVox report is a JSON document the agent sends to the server after each enforcement run. It details what changes were made, any warnings or error messages, and any resources that failed to apply correctly. It also contains a full list of all events that happened, where an event might be "content \<foo\> changed to \<bar\>" or the like. In some circumstances involving custom resource types, an event might include a serialized Ruby object (programming code turned into text) instead of just plain JSON. When the report is processed, these objects are deserialized back into something the compiler can use. Unfortunately a malicious event object can be constructed in such a way that code executes on the server when this happens. Read more at https://github.com/OpenVoxProject/openvox/security/advisories/GHSA-ffr6-rwpm-p5wq

## Client Impersonation in Trapperkeeper apps

Trapperkeeper is the framework we use for running our Clojure based applications and trapperkeeper-authorization is the shared authentication library that parses OpenVox's auth.conf file and such. This file allows authentication rules to be specified in multiple ways, including plain strings (foo.example.com), wildcards (*.example.com), or regular expressions (/lab-\d{3}.example.com/). Plain strings and wildcard matches were handled by the same logic and this resulted in wildcard behavior incorrectly showing up in all non-regex rules. The end result of this meant that a certificate name of `evil.target.example.com` would be allowed to impersonate `target.example.com` and access information or perform actions as the target certname. In some non-default configurations, this could even inject exported resources into arbitrary agent catalogs across the infrastructure. Read more at https://github.com/OpenVoxProject/trapperkeeper-authorization/security/advisories/GHSA-q4hm-33rc-572g

## More info

CVE numbers are pending GitHub review. The advisories will be updated and the numbers forwarded here when issued.

The blog post has more information, including migration instructions and mitigation advice. https://voxpupuli.org/blog/2026/11/03/critical-cve-updates/

Thanks to Alain from Neodyme for reporting the server issues and working with us to coordinate.

---
Ben Ford
Open Source infrastructure management with ethics
binford2k@...rlookinfratech.com
https://overlookinfratech.com
Book time with me <https://calendar.app.google/qhH96i65htaRaYQt7>





Content of type "text/html" skipped

Download attachment "signature.asc" of type "application/pgp-signature" (566 bytes)
