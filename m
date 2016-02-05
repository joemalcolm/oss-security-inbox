X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["930" "Friday" "5" "February" "2016" "15:32:29" "-0500" "anarcat" "anarcat@orangeseeds.org" "<87io22kiea.fsf@angela.anarcat.ath.cx>" "27" "[oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression" "^Date:" nil nil "2" "2016020520:32:29" "[oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression" (number mark "U       anarcat@oran Feb  5   27/930   " thread-indent "\"[oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression\"\n") "<20160124153737.GA18993@eldamar.local>" ("<20160124153737.GA18993@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18012 invoked by uid 550); 5 Feb 2016 20:33:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17985 invoked from network); 5 Feb 2016 20:33:21 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <87io22kiea.fsf@angela.anarcat.ath.cx>
References: <20160124153737.GA18993@eldamar.local>
Mime-Version: 1.0
Content-Type: text/plain
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: marcos.anarc.at
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
Cancel-Lock: sha1:7/JfOViawCALPPr68V/M79dpono=
Date: Fri, 05 Feb 2016 15:32:29 -0500
From: anarcat <anarcat@orangeseeds.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression
To: oss-security@lists.openwall.com

So from what I understand, this issue is only related to the *sample*
code in php-openid, correct?

You also report that this code is in "use verbatim" in "the vast
majority of sites", yet looking at the Debian code base, the only
samples of that code I could find are in php-openid itself and the SAML
library:

https://codesearch.debian.net/search?perpkg=1&q=getTrustRoot

(jglobus seems to be a false positive there)

I have reviewed the usage of the openid.realm field in the Debian source
code and, in general, it doesn't seem to use the `Host:` header:

https://codesearch.debian.net/search?perpkg=1&q=openid.realm

Furthermore, I am not sure the attack works even on the theoritical
level: how would the user reach the proper website if the Host header is
changed?

A.
-- 
Never attribute to malice that which can be adequately explained by
stupidity, but don't rule out malice.
                         - Albert Einstein

