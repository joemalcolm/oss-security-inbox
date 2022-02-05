X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["474" "Saturday" "5" "February" "2022" "00:08:03" "+0000" "Zach Hoffman" "zrhoffman@apache.org" nil "17" "[oss-security] CVE-2022-23206: Apache Traffic Control: Server-Side Request Forgery in Traffic Ops endpoint POST /user/login/oauth " nil nil nil "2" nil nil (number mark "U       zrhoffman@ap Feb  5   17/474   " thread-indent "\"[oss-security] CVE-2022-23206: Apache Traffic Control: Server-Side Request Forgery in Traffic Ops endpoint POST /user/login/oauth \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23206: Apache Traffic Control: Server-Side Request Forgery in Traffic Ops endpoint POST /user/login/oauth " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21778 invoked by uid 550); 5 Feb 2022 00:18:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9726 invoked from network); 5 Feb 2022 00:08:16 -0000
Content-Type: text/plain; charset=utf-8
From: Zach Hoffman <zrhoffman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b4b5b976-5adf-a057-7658-24b875181eda@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 05 Feb 2022 00:08:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-23206: Apache Traffic Control: Server-Side Request
 Forgery in Traffic Ops endpoint POST /user/login/oauth 

Description:

In Apache Traffic Control Traffic Ops prior to 6.1.0 or 5.1.6, an unprivile=
ged user who can reach Traffic Ops over HTTPS can send a specially-crafted =
POST request to /user/login/oauth to scan a port of a server that Traffic O=
ps can reach.

Mitigation:

6.0.x user should upgrade to 6.1.0.
5.1.x users should upgrade to 5.1.6 or 6.1.0.

Credit:

Apache Traffic Control would like to thank walkerxiong of SecCoder Security=
 Lab for reporting this issue.

