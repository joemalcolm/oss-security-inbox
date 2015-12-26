X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["736" "Saturday" "26" "December" "2015" "13:41:43" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20151226104143.GA26606@gremlin.ru>" "20" "Re: [oss-security] Being vulnerable to POODLE" "^Date:" nil nil "12" "2015122610:41:43" "[oss-security] Being vulnerable to POODLE" (number mark "        gremlin@grem Dec 26   20/736   " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<567E41B4.2010606@geeklan.co.uk>" ("<567E41B4.2010606@geeklan.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25938 invoked by uid 550); 26 Dec 2015 10:41:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25917 invoked from network); 26 Dec 2015 10:41:57 -0000
Message-ID: <20151226104143.GA26606@gremlin.ru>
References: <567E41B4.2010606@geeklan.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
In-Reply-To: <567E41B4.2010606@geeklan.co.uk>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Sat, 26 Dec 2015 13:41:43 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Being vulnerable to POODLE
To: oss-security@lists.openwall.com

On 2015-12-26 07:28:52 +0000, Sevan Janiyan wrote:

 > Hi, If you have a piece of software which is vulnerable to POODLE,
 > should a CVE be requested for it or should CVE-2014-3566 just be
 > referenced in any advisories published?

The POODLE is an OpenSSL vulnerability, so referencing CVE-2014-3566
should be enough.

 > It turns out that CoovaChilli is vulnerable to POODLE & I'd
 > like to follow the correct procedure regarding disclosure. There's
 > a fix pending due to needing further testing at which point an
 > advisory will be published with the necessary details.

Does the update of OpenSSL eliminate this vulnerability?


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
