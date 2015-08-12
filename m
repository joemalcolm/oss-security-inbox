X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1208" "Wednesday" "12" "August" "2015" "14:32:41" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55CB3CE9.1030104@redhat.com>" "35" "[oss-security] Is CVE-2015-4650 a duplicate, leak, or just a typo?" nil nil nil "8" "2015081212:32:41" "[oss-security] Is CVE-2015-4650 a duplicate, leak, or just a typo?" (number mark "        fweimer@redh Aug 12   35/1208  " thread-indent "\"[oss-security] Is CVE-2015-4650 a duplicate, leak, or just a typo?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3239 invoked by uid 550); 12 Aug 2015 12:32:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3218 invoked from network); 12 Aug 2015 12:32:55 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <55CB3CE9.1030104@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Cc: oss-security@lists.openwall.com
Date: Wed, 12 Aug 2015 14:32:41 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Is CVE-2015-4650 a duplicate, leak, or just a typo?
To: ISC Security Officer <security-officer@isc.org>,
        Assign a CVE Identifier <cve-assign@mitre.org>

Some documents use CVE-2015-4650 to refer to a vulnerability in BIND.
Apparently, they source back to

<https://www.alienvault.com/forums/discussion/5706/security-advisory-alienvault-v5-1-addresses-6-vulnerabilities>

which says:

“
Debian Security Update
AlienVault ID: ENG-101265
Description: name.c in named in ISC BIND 9.7.x through 9.9.x before
9.9.7-P1 and 9.10.x before 9.10.2-P2, when configured as a recursive
resolver with DNSSEC validation, allows remote attackers to cause a
denial of service (REQUIRE assertion failure and daemon exit) by
constructing crafted zone data and then making a query for a name in
that zone.
CVE ID: CVE-2015-4650
CVSS v2 Base Score: 7.8
CVSS v2 Vector: (AV:N/AC:L/Au:N/C:N/I:N/A:N)
”

That description seems to match CVE-2015-4620, so I'm leaning towards typo:

<https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2015-4620>

I don't know how this came into being.  Debian does not appear
responsible, the immutable list archives use the correct ID:

<https://lists.debian.org/debian-lts-announce/2015/07/msg00008.html>
<https://lists.debian.org/debian-security-announce/2015/msg00200.html>

Comments appreciated.

-- 
Florian Weimer / Red Hat Product Security
