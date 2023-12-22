Received: (qmail 3082 invoked by uid 550); 22 Dec 2023 15:08:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30619 invoked from network); 22 Dec 2023 15:04:05 -0000
Date: Fri, 22 Dec 2023 16:04:38 +0100
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Message-ID: <20231222150438.GA13989@unix-ag.uni-kl.de>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
 <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
 <20231222121134.GI14101@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231222121134.GI14101@suse.de>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Subject: Re: [oss-security] Re: New SMTP smuggling attack

Hi,

On Fri, Dec 22, 2023 at 01:11:37PM +0100, Marcus Meissner wrote:
> On Fri, Dec 22, 2023 at 11:09:49AM +0000, Stuart Henderson wrote:
> > On 2023/12/22 11:46, Marcus Meissner wrote:
> > > 
> > > FWIW as no CVEs were to be found yet, I filed a CVE request for
> > > Postfix now.
> > > 
> > > Not sure if we need it for others like sendmail too, as that is
> > > also referenced by the security researchers.

I'd think that sendmail should have a CVE, too, or there could be one
CVE pertaining to both Postfix and sendmail, because SEC Consult write
in their blog post:

   "After testing some popular e-mail software in their default
    configuration, it turned out that Postfix and Sendmail fulfil the
    requirements, are affected and can be smuggled to."

As such I'd say that both Postfix and sendmail are known to be vulnerable.

> > I'm a little confused by sec-consult's process here. They identify
> > a problem affecting various pieces of software including some very
> > widely deployed open source software, go to the trouble of doing
> > a coordinated disclosure, but only do that with...looking at their
> > timeline... gmx, microsoft and cisco?
> 
> Yes its weird.
> 
> I was also confused and actually only spotted the OSS software being
> affected on third read over their page.
> 
> They also reference CERT and VINCE, but at least SUSE was not pulled
> into the VINCE issue if there was any. (as CERT has not published
> anything I am not sure there was any besides the Cisco disclosure).

According to the timeline, they involved CERT/CC and VINCE in August:

    2023-08-17: Contacting CERT Coordination Center (CERT/CC) for further
                discussion with Cisco
    ...
    2023-09-13: CERT/CC accepts the case
    ...
    2023-11-29: CERT/CC allows public release of SMTP smuggling, since
                no software vulnerabilities were identified ("it's not
                a bug, it's a feature")
    ...
    2023-12-18: Release date of blog post

The first timeline entry omits a bit from the text, i.e., VINCE:

   "we contacted CERT/CC on 17th August to get some help for further
    discussion with Cisco and involve other potentially affected vendors
    (such as sendmail) through the VINCE communication platform."

> Also postfix timeline starts 4 days ago only.
> https://www.mail-archive.com/postfix-announce@postfix.org/msg00090.html

This is three days after the SEC Consult blog post.

My personal interpretation is as follows:

  * SEC Consult concentrated on the big email platforms, because of the
    potential impact.
  * They informed platforms that could be used to perform the attack
    against vulnerable targets.
  * They informed Cisco since they used an affected Cisco product
    and could thus be targeted (even though for Cisco this is not a
    vulnerability, but a feature).
  * They involved CERT/CC and VINCE, probably with the assumption that
    this would result in identifying and informing affected vendors
    and projects.
  * The CERT/CC and VINCE involvement resulted in "there is no
    vulnerability".
  * SEC Consult publish their findings.

Now, others (including me) see this as a vulnerability affecting at
least some open source email servers.  SNAFU.

Cheers,
Erik
