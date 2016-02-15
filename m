X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["692" "Monday" "15" "February" "2016" "22:13:30" "+0300" "gremlin@gremlin.ru" "gremlin@gremlin.ru" "<20160215191330.GA11450@gremlin.ru>" "20" "Re: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)" "^Date:" nil nil "2" "2016021519:13:30" "[oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)" (number mark "        gremlin@grem Feb 15   20/692   " thread-indent "\"Re: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)\"\n") "<CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>" ("<CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17413 invoked by uid 550); 15 Feb 2016 19:13:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16371 invoked from network); 15 Feb 2016 19:13:44 -0000
Message-ID: <20160215191330.GA11450@gremlin.ru>
References: <CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=koi8-r
Content-Disposition: inline
In-Reply-To: <CAAeBhPfv200duAxCKnYkABgyt-34u_cP_YrrRajPWZ-Md+H9GA@mail.gmail.com>
OpenPGP: id=8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
X-PGP-PubKey: 0xEF3B1FA8
X-PGP-Fingerprint: 8832 FE9F A791 F796 8AC9 6E4E 909D AC45 EF3B 1FA8
Date: Mon, 15 Feb 2016 22:13:30 +0300
From: gremlin@gremlin.ru
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Browser Security Tool: HTTPS Only (Why, How, Open Source, Python)
To: oss-security@lists.openwall.com

On 2016-02-14 22:07:21 -0500, David Leo wrote:

 > This tool completely locks browser - just HTTPS, nothing else.

That means, it causes effective DoS with "ssl_error_no_cypher_overlap"
(as it's called by Firefox) for approx. 60% of all sites.

In most cases, HTTPS is either misused or abused. But the ${subject}
does both misuse and abuse: it forces HTTPS even for unauthenticated
connections (are there any real reasons to use HTTPS instead of E2EE
for protecting the information which is publicly available?), while
not making any use of a clients' certificates.

Ds: PoS
Rp: >& /dev/null


-- 
Alexey V. Vissarionov aka Gremlin from Kremlin
GPG: 8832FE9FA791F7968AC96E4E909DAC45EF3B1FA8
