Received: (qmail 11968 invoked by uid 550); 23 Feb 2023 09:39:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30647 invoked from network); 23 Feb 2023 08:41:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Carsten Ziegeler <cziegeler@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7e538c37-50f5-0c58-3e2d-b44a8f37b5c3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 23 Feb 2023 08:40:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25621: Apache Sling does not allow to handle i18n content
 in a secure way 

Severity: important

Description:

Privilege Escalation vulnerability in Apache Software Foundation Apache Sli=
ng.
Any content author is able to create i18n dictionaries in the repository in=
 a location the author has write access to. As these translations are used =
across the whole product, it allows an author to change any text or dialog =
in the product. For example an attacker might fool someone by changing the =
text on a delete button to "Info".
This issue affects the i18n module of Apache Sling up to version 2.5.18. Ve=
rsion 2.6.2 and higher limit by default i18m dictionaries to certain paths =
in the repository (/libs and /apps).

Users of the module are advised to update to version 2.6.2 or higher, check=
 the configuration for resource loading and then adjust the access permissi=
ons for the configured path accordingly.

This issue is being tracked as SLING-11744=20

References:

https://sling.apache.org/news.html
https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25621
https://issues.apache.org/jira/browse/SLING-11744

