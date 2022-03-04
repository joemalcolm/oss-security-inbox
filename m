X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["779" "Friday" "4" "March" "2022" "11:04:02" "+0000" "PJ Fanning" "fanningpj@apache.org" nil "20" "[oss-security] CVE-2022-26336: poi-scratchpad: A carefully crafted TNEF file can cause an out of memory exception " nil nil nil "3" nil nil (number mark "U       fanningpj@ap Mar  4   20/779   " thread-indent "\"[oss-security] CVE-2022-26336: poi-scratchpad: A carefully crafted TNEF file can cause an out of memory exception \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-26336: poi-scratchpad: A carefully crafted TNEF file can cause an out of memory exception " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30365 invoked by uid 550); 4 Mar 2022 11:17:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24363 invoked from network); 4 Mar 2022 11:04:15 -0000
Content-Type: text/plain; charset=utf-8
From: PJ Fanning <fanningpj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <916e8648-6c5b-ae73-8a09-549c6c10bbf7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 04 Mar 2022 11:04:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-26336: poi-scratchpad: A carefully crafted TNEF file can
 cause an out of memory exception 

Severity: moderate

Description:

A shortcoming in the HMEF package of poi-scratchpad (Apache POI) allows an =
attacker to cause an Out of Memory exception. This package is used to read =
TNEF files (Microsoft Outlook and Microsoft Exchange Server). If an applica=
tion uses poi-scratchpad to parse TNEF files and the application allows unt=
rusted users to supply them, then a carefully crafted file can cause an Out=
 of Memory exception. This issue affects poi-scratchpad version 5.2.0 and p=
rior versions. Users are recommended to upgrade to poi-scratchpad 5.2.1.

This issue is being tracked as https://bz.apache.org/bugzilla/show_bug.cgi?=
id=3D65899

Credit:

Apache POI would like to thank Craig Haft of Yahoo Inc. for reporting and p=
roviding a patch for this issue.

