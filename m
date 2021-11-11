X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["561" "Thursday" "11" "November" "2021" "03:08:08" "+0000" "Juan Pan" "panjuan@apache.org" nil "15" "[oss-security] CVE-2021-26558: Apache ShardingSphere-UI: Deserialization of Untrusted Data " nil nil nil "11" nil nil (number mark "U       panjuan@apac Nov 11   15/561   " thread-indent "\"[oss-security] CVE-2021-26558: Apache ShardingSphere-UI: Deserialization of Untrusted Data \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26558: Apache ShardingSphere-UI: Deserialization of Untrusted Data " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14128 invoked by uid 550); 11 Nov 2021 11:25:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32209 invoked from network); 11 Nov 2021 03:08:23 -0000
Content-Type: text/plain; charset=utf-8
From: Juan Pan <panjuan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <72d28796-d98d-7476-0df3-2bcb59fd79c9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Nov 2021 03:08:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-26558: Apache ShardingSphere-UI: Deserialization of
 Untrusted Data 

Severity: low

Description:

Deserialization of Untrusted Data vulnerability of Apache ShardingSphere-UI=
 allows an attacker to inject outer link resources.  This issue affects Apa=
che ShardingSphere-UI Apache ShardingSphere-UI version 4.1.1 and later vers=
ions; Apache ShardingSphere-UI versions prior to 5.0.0.

Mitigation:

This issue is related to ShardingSphere-UI project. If you do not deploy UI=
 project, it is not required to upgrade. Otherwise, the vulnerability issue=
 of servers deployed UI project or version upgrade is supposed to consider.

