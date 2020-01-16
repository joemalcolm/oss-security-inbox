X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/16/1
Message-ID: <27352_1579165193_5E202609_27352_311_28_c5afd0f2-094a-4138-8175-775ad698ec78@OPEXCNORM4F.corporate.adroot.infra.ftgroup>
Date: Thu, 16 Jan 2020 08:59:51 +0000
From: <cert.cc@...nge.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: [CVE-2019-17570] xmlrpc-common untrusted deserialization
Content-Type: text/plain; charset=utf-8

Description
===========
Java untrusted deserialization in faultCause when processing an XMLRPC response. XMLRPC clients are thus targeted by this vulnerability, and rogue XMLRPC servers may gain arbitrary code execution on the XMLRPC client.

The vulnerability lays in the org.apache.xmlrpc.parser.XmlRpcResponseParser:addResult(Object) method.

This vulnerability is different from CVE-2016-5003, which uses ex:serializable type to perform deserialization. This new vulnerability only affects XMLRPC clients, which will receive response, possible faults. It is exploitable in default configuration.

Exploitation technique
======================
REMOTE, NONE AUTHENTICATION REQUIRED.

REMINDER: This vulnerability is on client-side.

CVSSv3 base score : 9.8
=================
CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Impact(s)
=========
An attacker may execute arbitrary code by using a gadget chain.

Affected versions
=================
Detected on XMLRPC-common-Central-3.1.3 but applies to versions (non-exhaustive list):
*         Redhat GA 3.1.3-redhat-5
*         Redhat GA 3.1.3-redhat-2
*         Redhat EA 3.1.3-redhat-1
*         Central 3.1.3
*         Central 3.1.2
*         Central 3.1.1
*         Central 3.1

NOTE: Central 3.0.x are not vulnerable

CVE Id
==========
CVE-2019-17570

Timeline
========
2019-11-19: Apache informed via email
2019-11-19: Apache XML-RPC is no longer actively maintained
2019-11-21: Red Hat informed via email
2019-11-22: Vulnerability reaffected to Apache project
2020-01-06: Distro OSS security informed via email
2020-01-16: Vulnerability published to OSS security mailing list

Credits
========
Guillaume TEISSIER (Orange)
Orange group


_________________________________________________________________________________________________________________________

Ce message et ses pieces jointes peuvent contenir des informations confidentielles ou privilegiees et ne doivent donc
pas etre diffuses, exploites ou copies sans autorisation. Si vous avez recu ce message par erreur, veuillez le signaler
a l'expediteur et le detruire ainsi que les pieces jointes. Les messages electroniques etant susceptibles d'alteration,
Orange decline toute responsabilite si ce message a ete altere, deforme ou falsifie. Merci.

This message and its attachments may contain confidential or privileged information that may be protected by law;
they should not be distributed, used or copied without authorisation.
If you have received this email in error, please notify the sender and delete this message and its attachments.
As emails may be altered, Orange is not liable for messages that have been modified, changed or falsified.
Thank you.

