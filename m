X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["755" "Monday" "17" "January" "2022" "17:48:28" "+0000" "Larry McCay" "lmccay@apache.org" nil "25" "[oss-security] CVE-2021-42357: DOM based XSS Vulnerability in Apache Knox " nil nil nil "1" nil nil (number mark "U       lmccay@apach Jan 17   25/755   " thread-indent "\"[oss-security] CVE-2021-42357: DOM based XSS Vulnerability in Apache Knox \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42357: DOM based XSS Vulnerability in Apache Knox " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27677 invoked by uid 550); 17 Jan 2022 18:42:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1306 invoked from network); 17 Jan 2022 17:48:43 -0000
Content-Type: text/plain; charset=utf-8
From: Larry McCay <lmccay@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ebb955eb-5f5c-473a-35a4-1ff66d6b97d0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 17 Jan 2022 17:48:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-42357: DOM based XSS Vulnerability in Apache Knox 

Severity: moderate

Description:

When using Knox SSO in affected releases, a request could be crafted to
redirect a user to a malicious page due to improper URL parsing.
A request that included a specially crafted
request parameter could be used to redirect the user to a page controlled
by an attacker. This URL would need to be presented to the user outside
the normal request flow through a XSS or phishing campaign.

Mitigation:

1.x users should upgrade to 1.6.1.
Unsupported versions of the 0.x line that include this issue are: 0.13.0, 0=
.14.0.
and these should upgrade to 1.6.1 as well.
1.0.0 and 1.1.0 are also Unsupported but affected and should upgrade to 1.6=
.1.


Credit:

Apache Knox would like to thank Kajetan Rostojek for this report

