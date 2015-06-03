X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2871" "Wednesday" "3" "June" "2015" "14:43:35" "-0400" "Joshua Smith" "jsmith@mail.wvnet.edu" "<20150603184335.GM1154@jsmith.wvn.wvnet.edu>" "71" "Re: [oss-security] Re: Stack out of bounds read access in uudecode / sharutils" nil nil nil "6" "2015060318:43:35" "[oss-security] Re: Stack out of bounds read access in uudecode / sharutils" (number mark "        jsmith@mail. Jun  3   71/2871  " thread-indent "\"Re: [oss-security] Re: Stack out of bounds read access in uudecode / sharutils\"\n") "<20150603202537.44409561@pc1>" ("<20150603010028.2c166570@pc1>" "<20150603023502.B967F72E055@smtpvbsrv1.mitre.org>" "<20150603202537.44409561@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9445 invoked by uid 550); 3 Jun 2015 22:03:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28621 invoked from network); 3 Jun 2015 18:43:47 -0000
Message-ID: <20150603184335.GM1154@jsmith.wvn.wvnet.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20150603010028.2c166570@pc1>
 <20150603023502.B967F72E055@smtpvbsrv1.mitre.org>
 <20150603202537.44409561@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20150603202537.44409561@pc1>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: clamav-milter 0.97.8 at clara.wvnet.edu
X-Virus-Status: Clean
Date: Wed, 3 Jun 2015 14:43:35 -0400
From: Joshua Smith <jsmith@mail.wvnet.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Stack out of bounds read access in uudecode /
 sharutils
To: oss-security@lists.openwall.com

On Wed, Jun 03, 2015 at 08:25:37PM +0200, Hanno Böck wrote:
> Hi CVE-team,
> 
> On Tue,  2 Jun 2015 22:35:02 -0400 (EDT)
> cve-assign@mitre.org wrote:
> 
> > What are the realistic scenarios in which this has a security impact?
> > 
> > For example, can any of these occur on actual systems?
> > 
> > 1. The attacker e-mails a uuencoded file to their own mailbox on a
> > web-based mail service. This service has a feature in which decoded
> > data is presented to the recipient. (The server operates on the data
> > with the uudecode program, not with any other implementation of the
> > uudecode algorithm. The attacker gains read access to unintended parts
> > of the server's memory.)
> > 
> > 2. A web site allows users to do HTTP uploads of data in uuencoded
> > format, and supports requests for decoded versions of the data. Same
> > parenthesized description as above.
> > 
> > 3. The attacker composes a news article with crafted uuencoded data
> > and posts it to the alt.sources Usenet newsgroup. The attacker is
> > subscribed to this newsgroup in their own account on a web-based
> > Usenet news reading service. Same parenthesized description as above.
> 
> To answer these questions to the best of my knowledge: I don't know.
> 
> This is a question I think I can answer in a very general fashion. I
> find and report these out of bounds vulns very often. I can
> confirm that in your described scenarios an attacker could trigger an
> out of bounds read. If that can in anyway be used to exfiltrate data or
> other attacks: I don't know. In this case it's probably unlikely,
> because as you can see the oob read is just one byte.
> 
> Analyzing the impact of these kinds of vulns would require digging and
> understanding the code in detail by someone skilled in memory
> corruption exploitation (that means: not me).
> 
> What I can say is that many very similar issues I reported in the past
> got CVEs (lately e.g. in wireshark and curl). And there'll probably be
> a lot more in the near future. I started trying to write up reports for
> all issues of these kinds I reported once they got fixed.
> 
> If you prefere not to be bothered about out of bounds issues with
> unknown impact any more I am fine with that and will stop cc-ing. Also
> - if the people on oss-security feel that my reports on these
> minor issues are too frequently please tell me and I'll stop sending
> them. But in the past I had the impression it's apprechiated and solar
> designer wants as much info as possible in the oss-security archives
> in case external sources vanish.
> 
> 
> cu,
> -- 
> Hanno Böck
> http://hboeck.de/
> 
> mail/jabber: hanno@hboeck.de
> GPG: BBB51E42

Not that my opinion matters but I enjoy reading your posts on this and
similar vulnerabilities you have discovered.



-- 
Joshua Smith
Lead Systems Administrator WVNET

Montani Semper Liberi
