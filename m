X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Wednesday" "11" "May" "2016" "07:09:46" "+0200" "Michael Scherer" "misc@zarb.org" "<20160511050946.GC30154@sisay.ephaone.org>" "38" "Re: [oss-security] BitKeeper /tmp vulns" nil nil nil "5" "2016051105:09:46" "[oss-security] BitKeeper /tmp vulns" (number mark "U       misc@zarb.or May 11   38/1627  " thread-indent "\"Re: [oss-security] BitKeeper /tmp vulns\"\n") "<20160510194050.GA19811@mcvoy.com>" ("<CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>" "<20160510162457.GA30154@sisay.ephaone.org>" "<CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>" "<20160510192837.GB30154@sisay.ephaone.org>" "<20160510194050.GA19811@mcvoy.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20314 invoked by uid 550); 11 May 2016 05:09:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20286 invoked from network); 11 May 2016 05:09:59 -0000
Date: Wed, 11 May 2016 07:09:46 +0200
From: Michael Scherer <misc@zarb.org>
To: oss-security@lists.openwall.com
Cc: security@bitkeeper.com
Message-ID: <20160511050946.GC30154@sisay.ephaone.org>
References: <CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>
 <20160510162457.GA30154@sisay.ephaone.org>
 <CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>
 <20160510192837.GB30154@sisay.ephaone.org>
 <20160510194050.GA19811@mcvoy.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <20160510194050.GA19811@mcvoy.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: Re: [oss-security] BitKeeper /tmp vulns

On Tue, May 10, 2016 at 12:40:50PM -0700, Larry McVoy wrote:
> In the past, at least, BitKeeper was run inside a firewall and in an
> environment where users are trusted.  As such, I suspect that you have
> just begun to scratch the surface, I wouldn't be at all surprised to
> see dozens more like this.

If the security model is "everybody is trusted and we have firewall", the
frontpage of https://www.bitkeeper.com/ with "Hardened for the Enterprise.",
is a bit misleading, as is the part on "security" and "safety" on
https://www.bitkeeper.com/why_why_buy

I do get that "hardening", "security", "safety" can mean different things to different
people, but "insecure on a shared server" is not written anywhere in the documentation.

> We've never had anyone complain about this in a real world situation
> so we've never focussed on it.  

I am not sure to fully understand, so allow me to rephrase based on my understanding.

Because no one complained and found the problem before among your
clients, (that likely didn't had the source code to begin with, and also no
expectation of being able to read without likely infriging copyright), 
the BK team didn't focused on trying to be proactive and fixing security issues
that ook 5 minutes to be found ?

(or updating code bundled for a 15 years old CVE)

> If you care about this stuff we'll
> gladly take patches.

I am sorry, but that's not exactly the kind of answer that motivate me to work
on a software I do not use. 

But since you agree that's a security problem, I guess I can now officially request
CVE for the issues that do not have one.

-- 
Michael Scherer
