X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2315" "Tuesday" "22" "January" "2019" "16:52:16" "+0100" "Thomas Jarosch" "thomas.jarosch@intra2net.com" "<20190122155216.4fx6xh3tlohmxe3n@storm.m.i2n>" "60" "Re: [oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Date:" nil nil "1" "2019012215:52:16" "[oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        thomas.jaros Jan 22   60/2315  " thread-indent "\"Re: [oss-security] Re: ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") "<SHcYHexZFIPEzxu783h1FvPmnsUAwkTcsBunOplth1OaHsV-kE1uNS6roHC9sojsMJxQE2yOQoj-BBCc2qWNdb09Yrb-rwTVu1nAJgT7ZO0=@protonmail.ch>" ("<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" "<CAJ_zFk+Db=VQi14vEfA8AeRbqEfROwApCbgVqPQny7qbhj7nhw@mail.gmail.com>" "<9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>" "<CAJ_zFkJgSzTV8WKRL7OW6ueFibVGvNY-P6sBNBrDeagLrbPfWw@mail.gmail.com>" "<SHcYHexZFIPEzxu783h1FvPmnsUAwkTcsBunOplth1OaHsV-kE1uNS6roHC9sojsMJxQE2yOQoj-BBCc2qWNdb09Yrb-rwTVu1nAJgT7ZO0=@protonmail.ch>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1653 invoked by uid 550); 22 Jan 2019 16:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23842 invoked from network); 22 Jan 2019 15:52:30 -0000
X-Virus-Scanned: by Intra2net Mail Security (AVE=8.3.52.166,VDF=8.15.18.156)
Message-ID: <20190122155216.4fx6xh3tlohmxe3n@storm.m.i2n>
References: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
 <CAJ_zFk+Db=VQi14vEfA8AeRbqEfROwApCbgVqPQny7qbhj7nhw@mail.gmail.com>
 <9Oh6Q_oGBdLOE2SpGuy67o4P_ytW1KG0urBaQPvPOskA6d6uwyU_et3aIaNCb0M6mSWw8T90Lb2OQIXkE38PlXk5eSCsQqS3Dr0QZ_2Q2ns=@protonmail.ch>
 <CAJ_zFkJgSzTV8WKRL7OW6ueFibVGvNY-P6sBNBrDeagLrbPfWw@mail.gmail.com>
 <SHcYHexZFIPEzxu783h1FvPmnsUAwkTcsBunOplth1OaHsV-kE1uNS6roHC9sojsMJxQE2yOQoj-BBCc2qWNdb09Yrb-rwTVu1nAJgT7ZO0=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SHcYHexZFIPEzxu783h1FvPmnsUAwkTcsBunOplth1OaHsV-kE1uNS6roHC9sojsMJxQE2yOQoj-BBCc2qWNdb09Yrb-rwTVu1nAJgT7ZO0=@protonmail.ch>
User-Agent: NeoMutt/20180716
Date: Tue, 22 Jan 2019 16:52:16 +0100
From: Thomas Jarosch <thomas.jarosch@intra2net.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ghostscript: 1Policy operator gives access to
 .forceput CVE-2018-18284
To: oss-security@lists.openwall.com

Hi,

You wrote on Thu, Oct 18, 2018 at 01:25:29PM +0000:
> ‐‐‐‐‐‐‐ Original Message ‐‐‐‐‐‐‐
> On Thursday, October 18, 2018 2:32 PM, Tavis Ormandy <taviso@google.com> wrote:
> 
> > On Thu, Oct 18, 2018 at 3:51 AM Jordan Glover <Golden_Miller83@protonmail.ch> wrote:
> >
> >> Do you know if upstream is going to make new release soon or distros should take the
> >> pain and backport all of those themselves?
> >
> > AFAIK upstream only makes quarterly releases, so I think you need to backport.
> >
> > Tavis.
> 
> In normal, boring times yes but 9.25 was available just 10 days after 9.24 as urgent security
> release and it seems it was still not enough.

just a quick follow up: ghostscript 9.26 was released on 2018-11-20
and fixes the issue demonstrated by the exploit posted in:
https://bugs.chromium.org/p/project-zero/issues/detail?id=1696

*******************************************
# gs executeonly-bypass.pdf 
GPL Ghostscript 9.26 (2018-11-20)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
what do we want?
        deprecate untrusted postscript!
when do we want it?
        now!
Error: /undefined in .policyprocs
Operand stack:
   --dict:967/1684(ro)(G)--   SAFER   false   --dict:0/0(L)--   --dict:0/0(L)--  
 --dict:967/1684(ro)(G)--   (ignored)   SAFER   false
Execution stack:
   %interp_exit   .runexec2   --nostringval--   --nostringval--   
--nostringval--   2   %stopped_push   --nostringval--   --nostringval--   
--nostringval--   false   1   %stopped_push   2029   1   3   %oparray_pop   2028 
  1   3   %oparray_pop   2009   1   3   %oparray_pop   1868   1   3   
%oparray_pop   --nostringval--   %errorexec_pop   .runexec2   --nostringval--   
--nostringval--   --nostringval--   2   %stopped_push   --nostringval--   
--nostringval--
Dictionary stack:
   --dict:967/1684(ro)(G)--   --dict:0/20(G)--   --dict:79/200(L)--
Current allocation mode is local
Current file position is 575
GPL Ghostscript 9.26: Unrecoverable error, exit code 1
*******************************************

The release timeline of the vendor Artifex is also quite good:

9.24: 2018-09-03
9.25: 2018-09-13
9.26: 2018-11-20

Fedora 28 is f.e. still vulnerable though.

Best regards,
Thomas Jarosch
