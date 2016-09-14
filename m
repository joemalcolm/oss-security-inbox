X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["852" "Wednesday" "14" "September" "2016" "22:29:16" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20160914222916.GM24597@yuggoth.org>" "16" "Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" "^Date:" nil nil "9" "2016091422:29:16" "[oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection" (number mark "        fungi@yuggot Sep 14   16/852   " thread-indent "\"Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow SQL injection\"\n") "<CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>" ("<nqpirj$fvm$1@blaine.gmane.org>" "<nraqt1$a2m$1@blaine.gmane.org>" "<8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>" "<1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>" "<20160914092135.GA16607@inutil.org>" "<CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12173 invoked by uid 550); 14 Sep 2016 22:29:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12155 invoked from network); 14 Sep 2016 22:29:29 -0000
Message-ID: <20160914222916.GM24597@yuggoth.org>
References: <nqpirj$fvm$1@blaine.gmane.org>
 <nraqt1$a2m$1@blaine.gmane.org>
 <8b02b17e-cc12-5145-9957-381c583aa76c-IBi9RG/b67k@public.gmane.org>
 <1797555053.495533413.810249.dregad-mantisbt.org@news.gmane.org>
 <20160914092135.GA16607@inutil.org>
 <CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty3Ru9FEkXs93PY5KgQbT2Gru6S0HHGfciUgZwuXVLy=aA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Wed, 14 Sep 2016 22:29:16 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ADOdb PDO driver: incorrect quoting may allow
 SQL injection
To: oss-security@lists.openwall.com

On 2016-09-14 10:22:58 -0600 (-0600), Kurt Seifried wrote:
> Ideally people should get CVEs and then post to oss-security with the
> information and the CVE. A lot of people consume the list data and the
> current method means that people end up searching their DBs, making sure
> it's new, then entering it, then updating it with a CVE. If people got CVEs
> first this would vastly simplify things.

At least for some projects, if a vulnerability is already public or
becomes public prior to requesting a CVE privately from some CNA, it
makes more sense to go ahead and widely inform the community (via
this ML and elsewhere) and then associate a CVE with it afterward.
While having a unique identifier is important, I think rapid
dissemination of vulnerabilities so that downstream users can patch
their systems is more important.
-- 
Jeremy Stanley
