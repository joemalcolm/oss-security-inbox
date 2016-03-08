X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["424" "Tuesday" "8" "March" "2016" "01:59:53" "+0100" "ISC Security Officer" "security-officer@isc.org" "<56DE2409.1060603@isc.org>" "13" "[oss-security] ISC DHCP vulnerability CVE-2016-2774 is now public" "^Cc:" nil nil "3" "2016030800:59:53" "[oss-security] ISC DHCP vulnerability CVE-2016-2774 is now public" (number mark "        security-off Mar  8   13/424   " thread-indent "\"[oss-security] ISC DHCP vulnerability CVE-2016-2774 is now public\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24451 invoked by uid 550); 8 Mar 2016 01:00:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24433 invoked from network); 8 Mar 2016 01:00:02 -0000
Message-ID: <56DE2409.1060603@isc.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: ISC Security Officer <security-officer@isc.org>
Date: Tue, 8 Mar 2016 01:59:53 +0100
From: ISC Security Officer <security-officer@isc.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ISC DHCP vulnerability CVE-2016-2774 is now public
To: oss-security@lists.openwall.com

Please be advised that ISC announced a security advisory for a
vulnerability in the ISC DHCP servers.

CVE-2016-2774 is a denial-of-service vector which can be exploited
against running ISC DHCP servers by opening (and never closing) a large
number of TCP connections to the ports the server is using for
inter-process communication.

https://kb.isc.org/article/AA-01354

Kind Regards,
Marcin Siodelski
ISC Security Officer
