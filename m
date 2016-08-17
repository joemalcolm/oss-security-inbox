X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1220" "Wednesday" "17" "August" "2016" "19:58:19" "+0300" "Solar Designer" "solar@openwall.com" "<20160817165819.GA24935@openwall.com>" "34" "[oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction" "^Cc:" nil nil "8" "2016081716:58:19" "[oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction" (number mark "        solar@openwa Aug 17   34/1220  " thread-indent "\"[oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16226 invoked by uid 550); 17 Aug 2016 16:58:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16089 invoked from network); 17 Aug 2016 16:58:26 -0000
Message-ID: <20160817165819.GA24935@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Cc: Werner Koch <wk@gnupg.org>
Date: Wed, 17 Aug 2016 19:58:19 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction
To: oss-security@lists.openwall.com

Hi,

This was just announced on gnupg-announce and Twitter @gnupg, and I
think it should also be in here:

https://lists.gnupg.org/pipermail/gnupg-announce/2016q3/000395.html

> Felix Drre and Vladimir Klebanov from the Karlsruhe Institute of
> Technology found a bug in the mixing functions of Libgcrypt's random
> number generator: An attacker who obtains 4640 bits from the RNG can
> trivially predict the next 160 bits of output.  This bug exists since
> 1998 in all GnuPG and Libgcrypt versions.
> 
> 
> Impact
> ======
> All Libgcrypt and GnuPG versions released before 2016-08-17 are affected
> on all platforms.
> 
> A first analysis on the impact of this bug in GnuPG shows that existing
> RSA keys are not weakened.  For DSA and Elgamal keys it is also unlikely
> that the private key can be predicted from other public information.
> This needs more research and I would suggest _not to_ overhasty revoke
> keys.

Also off Twitter:

<@rgacogne> @gnupg @solardiz The CVE number (CVE-2016-6316) seems to have been used to track another security issue rubygem-actionview, is that correct?

There does in fact appear to be a CVE ID clash, with:

http://www.openwall.com/lists/oss-security/2016/08/11/6

Alexander
