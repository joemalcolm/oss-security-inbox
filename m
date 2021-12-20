X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["471" "Monday" "20" "December" "2021" "09:49:21" "+0000" "Stefan Eissing" "icing@apache.org" nil "17" "[oss-security] CVE-2021-44224: Apache HTTP Server: Possible NULL dereference or SSRF in forward proxy configurations in Apache HTTP Server 2.4.51 and earlier " nil nil nil "12" nil nil (number mark "U       icing@apache Dec 20   17/471   " thread-indent "\"[oss-security] CVE-2021-44224: Apache HTTP Server: Possible NULL dereference or SSRF in forward proxy configurations in Apache HTTP Server 2.4.51 and earlier \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44224: Apache HTTP Server: Possible NULL dereference or SSRF in forward proxy configurations in Apache HTTP Server 2.4.51 and earlier " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11468 invoked by uid 550); 20 Dec 2021 14:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28330 invoked from network); 20 Dec 2021 09:49:34 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c027ff26-93ef-39b6-10a8-228bc988c3e8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Dec 2021 09:49:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44224: Apache HTTP Server: Possible NULL dereference or SSRF in forward proxy
 configurations in Apache HTTP Server 2.4.51 and earlier 

Severity: moderate

Description:

A crafted URI sent to httpd configured as a forward proxy (ProxyRequests on=
) can cause a crash (NULL pointer dereference) or, for configurations mixin=
g forward and reverse proxy declarations, can allow for requests to be dire=
cted to a declared Unix Domain Socket endpoint (Server Side Request Forgery=
).

This issue affects Apache HTTP Server 2.4.7 up to 2.4.51 (included).

Credit:

=E6=BC=82=E4=BA=AE=E9=BC=A0
TengMA(@Te3t123)

