X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["518" "Tuesday" "20" "April" "2021" "22:35:17" "+0200" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "16" "[oss-security] DNS rebinding vulnerability in pupnp" nil nil nil "4" nil nil (number mark "U       gabriel.coro Apr 20   16/518   " thread-indent "\"[oss-security] DNS rebinding vulnerability in pupnp\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] DNS rebinding vulnerability in pupnp" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29898 invoked by uid 550); 20 Apr 2021 20:39:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28178 invoked from network); 20 Apr 2021 20:35:29 -0000
To: oss-security@lists.openwall.com
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
Message-ID: <bfe1a38e-f10a-cc67-d0f2-05089977383c@enst-bretagne.fr>
Date: Tue, 20 Apr 2021 22:35:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] DNS rebinding vulnerability in pupnp

The server-part of pupnp, a library used to implement UPnP clients and
servers, is vulnerable to DNS rebinding attacks.

Impact: A remote web server can exploit this vulnerability to trick the
user browser into triggering actions on the local UPnP services
implemented using this library or exfiltrate resources exposed using the
embedded web server.

This is fixed in v1.14.6

This is CVE-2021-29462.

References:

https://github.com/pupnp/pupnp/security/advisories/GHSA-6hqq-w3jq-9fhg
https://github.com/pupnp/pupnp
