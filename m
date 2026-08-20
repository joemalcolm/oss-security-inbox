X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/19
Message-ID:  <SN1PR12MB23821AFFC5663499B4897D5EDEA42@SN1PR12MB2382.namprd12.prod.outlook.com>
Date: Thu, 20 Aug 2026 21:11:27 +0000
From: Manuel Huber <manuelh@...dia.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: CVE-2026-77176: Kata-containers: insufficient validation of createcontainer mount and storage rules in genpolicy
Content-Type: text/plain; charset=utf-8

This vulnerability has been fixed in Kata Containers. The fix will be
included

in the upcoming 4.1.0 release, which is expected to be available shortly:

 

genpolicy: don't match image pull storages to mounts
<https://github.com/kata-containers/kata-containers/commit/fe8eeefcd0bec13c0
37ceb8f0889e48b75db17ab> . kata-containers/kata-containers@...eeef

 

Description:

 

A flaw was found in Kata Containers. In configurations utilizing genpolicy
for

Confidential Containers guest protection, a malicious host operator can

exploit insufficient validation of CreateContainer mount and storage rules.

This allows them to mount arbitrary container-rootfs paths over sensitive

host locations or provision arbitrary content, potentially exposing

confidential information or enabling the acceptance of attacker-controlled

input.

 

CVE: CVE-2026-77176

GHSA: GHSA-fmg6-v47x-52wr

 

Original report:

generated policy allows mounting attacker-chosen guest paths to specific
locations
<https://github.com/kata-containers/kata-containers/security/advisories/GHSA
-fmg6-v47x-52wr> . Advisory . kata-containers/kata-containers

 

---

Manuel Huber, on behalf of the

Kata Containers Vulnerability Management Team

 


Content of type "text/html" skipped

Download attachment "smime.p7s" of type "application/pkcs7-signature" (6327 bytes)
