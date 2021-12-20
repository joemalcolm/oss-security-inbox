X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["748" "Monday" "20" "December" "2021" "10:00:38" "+0000" "Christofer Dutz" "cdutz@apache.org" nil "20" "[oss-security] CVE-2021-43083: Apache PLC4X 0.9.0 Buffer overflow in PLC4C via crafted server response " nil nil nil "12" nil nil (number mark "U       cdutz@apache Dec 20   20/748   " thread-indent "\"[oss-security] CVE-2021-43083: Apache PLC4X 0.9.0 Buffer overflow in PLC4C via crafted server response \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43083: Apache PLC4X 0.9.0 Buffer overflow in PLC4C via crafted server response " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27744 invoked by uid 550); 20 Dec 2021 14:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32190 invoked from network); 20 Dec 2021 10:00:51 -0000
Content-Type: text/plain; charset=utf-8
From: Christofer Dutz <cdutz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5c63230e-b733-4b15-1f5a-e885929bf474@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Dec 2021 10:00:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-43083: Apache PLC4X 0.9.0 Buffer overflow in PLC4C via
 crafted server response 

Description:

Apache PLC4X - PLC4C (Only the C language implementation was effected) was =
vulnerable to an unsigned integer underflow flaw inside the tcp transport. =
Users should update to 0.9.1, which addresses this issue.

However, in order to exploit this vulnerability, a user would have to activ=
ely connect to a mallicious device which could send a response with invalid=
 content. Currently we consider the probability of this being exploited as =
quite minimal, however this could change in the future, especially with the=
 industrial networks growing more and more together.

Credit:

Apache PLC4X would like to thank Eugene Lim for reporting this issue.

References:

https://lists.apache.org/thread/jxx6qc84z60xbbhn6vp2s5qf09psrtc7

