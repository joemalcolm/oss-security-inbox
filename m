X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Sunday" "4" "September" "2016" "17:45:03" "-0400" "Antoine =?utf-8?B?QmVhdXByw6k=?=" "anarcat@debian.org" "<87r38ze3vk.fsf@angela.anarc.at>" "21" "[oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis" nil nil nil "9" "2016090421:45:03" "[oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis" (number mark "U       anarcat@debi Sep  4   21/568   " thread-indent "\"[oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24186 invoked by uid 550); 4 Sep 2016 21:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22468 invoked from network); 4 Sep 2016 21:45:17 -0000
From: anarcat@debian.org (Antoine =?utf-8?Q?Beaupr=C3=A9?=)
To: oss-security@lists.openwall.com
User-Agent: Notmuch/0.22 (http://notmuchmail.org) Emacs/24.4.1 (x86_64-pc-linux-gnu)
Date: Sun, 04 Sep 2016 17:45:03 -0400
Message-ID: <87r38ze3vk.fsf@angela.anarc.at>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis

inspircd published 2.0.23 that fixes an issue with SASL
authentication. The details are here:

http://www.inspircd.org/2016/09/03/v2023-released.html

All versions are affected.

Upstream hasn't requested a CVE yet. I told them I would request one
from here on IRC.

It seems to also affect Charybdis, which fixed the issue in the
upcoming 3.5.3 release:

https://github.com/charybdis-ircd/charybdis/commit/818a3fda944b26d4814132cee14cfda4ea4aa824

A.

-- 
All governments are run by liars and nothing they say should be
believed.
                       - I. F. Stone
