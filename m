X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1212" "Tuesday" "10" "May" "2016" "18:24:58" "+0200" "Michael Scherer" "misc@zarb.org" "<20160510162457.GA30154@sisay.ephaone.org>" "31" "Re: [oss-security] BitKeeper /tmp vulns" nil nil nil "5" "2016051016:24:58" "[oss-security] BitKeeper /tmp vulns" (number mark "U       misc@zarb.or May 10   31/1212  " thread-indent "\"Re: [oss-security] BitKeeper /tmp vulns\"\n") "<CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>" ("<CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25965 invoked by uid 550); 10 May 2016 16:25:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25947 invoked from network); 10 May 2016 16:25:10 -0000
Date: Tue, 10 May 2016 18:24:58 +0200
From: Michael Scherer <misc@zarb.org>
To: oss-security@lists.openwall.com
Message-ID: <20160510162457.GA30154@sisay.ephaone.org>
References: <CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: Re: [oss-security] BitKeeper /tmp vulns

On Tue, May 10, 2016 at 09:31:27AM -0600, Kurt Seifried wrote:
> Not found by me, mentioned on HackerNews:
> 
> https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/bk.sh#L485

Just to clarify, the vuln was not mentioned on HN, just the new about it being
under a free license. Then I did a git clone, and grep /tmp and pointed on internal 
IRC that, as usual, there is a ton of /tmp issue (and then Kurt did see and asked where I did see it,
and answered on HN (to the question "bk is now opensource").
 
> BitKeeper is under Apache license so here it is.
> 
> Also a quick look at the source shows a ton of other potential /tmp/ vulns,
> CC'ing bitkeeper security

for example:
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/utils/bk_version#L1563 

There is also a few here:
https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/utils/extractor.c

but that's the installation script, so unlikely to be exploitable.

Or in apply-patch, etc.

But there is also a few projects that are bundled (like zlib), and a few scripts that
are used only at installation and/or build time, so classifying everything is more 
work than what I have time to devote for the project.

-- 
Michael Scherer
