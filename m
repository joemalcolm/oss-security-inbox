X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["384" "Thursday" "11" "November" "2021" "20:45:08" "+0000" "Zach Hoffman" "zrhoffman@apache.org" nil "16" "[oss-security] CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops " nil nil nil "11" nil nil (number mark "U       zrhoffman@ap Nov 11   16/384   " thread-indent "\"[oss-security] CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43350: Apache Traffic Control: LDAP filter injection vulnerability in Traffic Ops " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14006 invoked by uid 550); 11 Nov 2021 20:47:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13735 invoked from network); 11 Nov 2021 20:45:22 -0000
Content-Type: text/plain; charset=utf-8
From: Zach Hoffman <zrhoffman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <49610988-1ce7-988d-e601-00d6d7d02c96@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Nov 2021 20:45:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-43350: Apache Traffic Control: LDAP filter injection
 vulnerability in Traffic Ops 

Severity: critical

Description:

An unauthenticated Apache Traffic Control Traffic Ops user can send a reque=
st with a specially-crafted username to the POST /login endpoint of any API=
 version to inject unsanitized content into the LDAP filter.

Credit:

This issue was discovered by Apache Traffic Control user pupiles.

References:

https://trafficcontrol.apache.org/security/

