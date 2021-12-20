X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["412" "Monday" "20" "December" "2021" "10:36:28" "+0000" "Stefan Eissing" "icing@apache.org" nil "16" "[oss-security] CVE-2021-44790: Apache HTTP Server: Possible buffer overflow when parsing multipart content in mod_lua of Apache HTTP Server 2.4.51 and earlier " nil nil nil "12" nil nil (number mark "U       icing@apache Dec 20   16/412   " thread-indent "\"[oss-security] CVE-2021-44790: Apache HTTP Server: Possible buffer overflow when parsing multipart content in mod_lua of Apache HTTP Server 2.4.51 and earlier \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44790: Apache HTTP Server: Possible buffer overflow when parsing multipart content in mod_lua of Apache HTTP Server 2.4.51 and earlier " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11680 invoked by uid 550); 20 Dec 2021 14:16:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10187 invoked from network); 20 Dec 2021 10:37:39 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <30b33714-e372-c864-5111-94b8bf062b80@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Dec 2021 10:36:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44790: Apache HTTP Server: Possible buffer overflow when parsing multipart
 content in mod_lua of Apache HTTP Server 2.4.51 and earlier 

Severity: high

Description:

A carefully crafted request body can cause a buffer overflow in the mod_lua=
 multipart parser (r:parsebody() called from Lua scripts).
The Apache httpd team is not aware of an exploit for the vulnerabilty thoug=
h it might be possible to craft one.

This issue affects Apache HTTP Server 2.4.51 and earlier.

Credit:

Chamal
Anonymous working with Trend Micro Zero Day Initiative

