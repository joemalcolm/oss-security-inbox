X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1808" "Wednesday" "2" "March" "2016" "08:53:51" "-0500" "Steve Grubb" "sgrubb@redhat.com" "<1996716.Vy6ClD1zHv@x2>" "37" "Re: [oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030213:53:51" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        sgrubb@redha Mar  2   37/1808  " thread-indent "\"Re: [oss-security] Re: CVE's for SSLv2 support\"\n") "<CANO=Ty0okTGt0pWufnY4ncChi03Z-xM-MsDO9-=DmJ-dbeJJ0g@mail.gmail.com>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "<CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>" "<CANO=Ty0okTGt0pWufnY4ncChi03Z-xM-MsDO9-=DmJ-dbeJJ0g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25981 invoked by uid 550); 2 Mar 2016 13:54:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25931 invoked from network); 2 Mar 2016 13:54:00 -0000
Message-ID: <1996716.Vy6ClD1zHv@x2>
Organization: Red Hat
User-Agent: KMail/4.14.10 (Linux/4.4.2-301.fc23.x86_64; KDE/4.14.17; x86_64; ; )
In-Reply-To: <CANO=Ty0okTGt0pWufnY4ncChi03Z-xM-MsDO9-=DmJ-dbeJJ0g@mail.gmail.com>
References: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com> <CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com> <CANO=Ty0okTGt0pWufnY4ncChi03Z-xM-MsDO9-=DmJ-dbeJJ0g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Cc: Kurt Seifried <kseifried@redhat.com>, Bob Beck <beck@openbsd.org>,
        CVE ID Requests <cve-assign@mitre.org>
Date: Wed, 02 Mar 2016 08:53:51 -0500
From: Steve Grubb <sgrubb@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE's for SSLv2 support
To: oss-security@lists.openwall.com

On Tuesday, March 01, 2016 09:16:05 PM Kurt Seifried wrote:
> On Tue, Mar 1, 2016 at 9:03 PM, Bob Beck <beck@openbsd.org> wrote:
> > While you certainly won't see me defending SSLv2 (I think we were the
> > first to delete it outright)
> > there are many other things that currently fall into that category..
> > I'm agreeing with your sentiment
> > but if you are to consider usage of SSLv2 as CVE worthy, then you will
> > need to do the same for SSH version 1,
> > among other things.   So while I certainly appreciate and even agree
> > with your sentiment, it seems rather timed
> > politically based on a decision made by one implementaiton of SSL/TLS
> > that reflects a decision made by most other
> > implementations long ago.   So far from me to say what CVE's should
> > and shouldn't be used for and issued for, but
> > if this is the road we're going down can I please have permission to
> > use your above quoted paragraph
> > with s/SSLv2/SSH V1/g to request a CVE for *usage or support* of SSH
> > version 1? You said it perfectly.
> 
> I would be totally fine with that, SSH protocol v1 is long overdue for
> "needs to be taken out back and shot along with whoever enabled it by
> default". From OpenSSH's sshd_config:
> 
> # The default requires explicit activation of protocol 1
> 
> I think that says it all.

I'm not entirely sure that CVE is the right vehicle to express the issue. 
Exploitation of this would be an attacker uses code to exploit a poor 
implementation or design problem. There are code weaknesses tracked by CWE, 
vulnerabilities in implementations tracked by CVE, and attacks tracked by 
CAPEC. They reference each other as follows CAPEC->CVE->CWE.

Maybe a CWE somewhere in this category is what you are after:
https://cwe.mitre.org/data/definitions/958.html

-Steve
