X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["269" "Monday" "14" "March" "2022" "10:08:35" "+0000" "Stefan Eissing" "icing@apache.org" nil "12" "[oss-security] CVE-2022-22720: HTTP request smuggling vulnerability in Apache HTTP Server 2.4.52 and earlier " nil nil nil "3" nil nil (number mark "U       icing@apache Mar 14   12/269   " thread-indent "\"[oss-security] CVE-2022-22720: HTTP request smuggling vulnerability in Apache HTTP Server 2.4.52 and earlier \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-22720: HTTP request smuggling vulnerability in Apache HTTP Server 2.4.52 and earlier " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5916 invoked by uid 550); 14 Mar 2022 10:46:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3137 invoked from network); 14 Mar 2022 10:08:48 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bd4ba7ac-0817-f378-08bb-11b8b7632496@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Mar 2022 10:08:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-22720: HTTP request smuggling vulnerability in Apache
 HTTP Server 2.4.52 and earlier 

Severity: important

Description:

Apache HTTP Server 2.4.52 and earlier fails to close inbound connection whe=
n errors are encountered discarding the request body, exposing the server t=
o HTTP Request Smuggling

Credit:

James Kettle <james.kettle portswigger.net>

