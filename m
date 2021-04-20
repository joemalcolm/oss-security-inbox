X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["446" "Tuesday" "20" "April" "2021" "09:54:56" "+0200" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "13" "[oss-security] DNS rebinding vulnerability in npupnp" nil nil nil "4" nil nil (number mark "U       gabriel.coro Apr 20   13/446   " thread-indent "\"[oss-security] DNS rebinding vulnerability in npupnp\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] DNS rebinding vulnerability in npupnp" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25981 invoked by uid 550); 20 Apr 2021 09:15:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19496 invoked from network); 20 Apr 2021 07:55:08 -0000
To: oss-security@lists.openwall.com
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
Message-ID: <729765b4-00fc-bf19-d0b0-0f3923f685b9@enst-bretagne.fr>
Date: Tue, 20 Apr 2021 09:54:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] DNS rebinding vulnerability in npupnp

The server-part of npupnp, a library used to implement UUPnP clients and
servers, is vulnerable to DNS rebinding attacks.

Impact: A remote web server can exploit this vulnerability to trick the
user browser into triggering actions on the local UPnP services
implemented using this library.

This is fixed in v4.1.4.

https://framagit.org/medoc92/npupnp
https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/libnpupnp.html

A CVE as been requested.
