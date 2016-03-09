X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2518" "Wednesday" "9" "March" "2016" "09:10:04" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "84" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030916:10:04" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        kseifried@re Mar  9   84/2518  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<2733178.4axvx009n6@sarpedon>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>" "<56DC959A.6060200@gmail.com>" "<2733178.4axvx009n6@sarpedon>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17550 invoked by uid 550); 9 Mar 2016 16:10:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17519 invoked from network); 9 Mar 2016 16:10:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=DULt1YPLpx8IawWoN3TuZSXkzy35KE2xs/aO6h8iAlo=;
        b=lGBd2lZRN45/5yWU4l4Rw73lDQUJUKMPBNIN6BZ2bScHbHGDZtGXMqpj0mdHw+iRkZ
         maB4KHwoDeUfi4/R1lo5erDDKUcFrCAf/najDPICs/iEYarLmR7/ExMKQ9med3I94IOe
         vuOmHHrpbvylvO8kd9HUKHd876JF6Gbkk7pmvtGe8GXTTqCfMzGrtQlMk1kDGViewJU2
         N44+piR2pJquxQTCWJp9R5qijS2aI9m/3GabJxLGItX2xneSG70+4rcr0G/ufmN0mzSq
         oU+X/oRmA37r+hesLyOWEOG2G1xnT7MWAX6xZ88w6/sSpsaGIkEYZjS8dqrct9dpVhlG
         OuMg==
X-Gm-Message-State: AD7BkJK7Aqxt8jq9rg/xtAppfxngFFgcJveel3D/E8Q38KIDo9KZShWRssXC0XOdqWmj4BjV/aE5i1iTB2SfpfzK
MIME-Version: 1.0
X-Received: by 10.129.45.2 with SMTP id t2mr19085463ywt.182.1457539804444;
 Wed, 09 Mar 2016 08:10:04 -0800 (PST)
In-Reply-To: <2733178.4axvx009n6@sarpedon>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
	<8BB58F16-D629-48CB-96C6-3EA7406BA6A6@fearnothingproductions.net>
	<56DC959A.6060200@gmail.com>
	<2733178.4axvx009n6@sarpedon>
Message-ID: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11428d3e4a7586052d9fee59
Date: Wed, 9 Mar 2016 09:10:04 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security <oss-security@lists.openwall.com>

--001a11428d3e4a7586052d9fee59
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 9, 2016 at 8:59 AM, Tim Brown <tmb@65535.com> wrote:

> On Sunday 06 March 2016 21:39:54 Gsunde Orangen wrote:
>
>
> Quite, as much as I appreciate the options presented over the last few
> days, I
> don't think any of them are the winning horse.
>

It's simple. The winning horse is CVE. Or something that is fully CVE
compatible, like DWF.

To put it bluntly DWF is as close to 100% CVE compatible as it can be:

Numerically DWF can generally be mapped directly to CVE with no conflict,
if you spot a conflict between CVE and DWF please notify us so we can fix
it.

If you already have a CVE identifier you can map it directly to DWF, e.g.
CVE-2000-1234 maps directly to DWF-2000-1234.

https://github.com/distributedweaknessfiling/DWF-Documentation

Also the SPLIT/MERGE and general process for numbering authorities are
similar, if not nearly identical. I can say this with some authority having
assigned close to 5,000 CVE's =).


> As would I however, even with pointers from SC about who to poke within
> MITRE
> we came up short tracking a warm body down for (~7) months (even one that
> was
> willing to say no). That being said, we have now located a new warm body at
> MITRE who has made themselves known to us, I am more than happy to approach
> them about the following:
>

So to put it bluntly: good luck. In my role as  a Red Hat employee I'm on
the CVE Editorial board and I can't get answers out of them. I'm now
posting things like:

====
Can someone from Mitre at least confirm that they have seen this email?
It's been over a week now with no reply from Mitre on anything:

https://cve.mitre.org/data/board/archives/2016-03/msg00000.html
https://cve.mitre.org/data/board/archives/2016-03/msg00006.html
https://cve.mitre.org/data/board/archives/2016-03/msg00008.html
====



>
> Indeed, such a project requires a vendor neutral host. If OWASP are up for
> it,
> then I would gladly support them running with the above proposal, if not
> then
> a good faith alternative ought to be sought.
>

Or better yet a community led effort, like DWF that is also willing to work
with Mitre (whether or not Mitre returns the favor remains to be seen).


>
> Tim
> --
> Tim Brown
> <mailto:tmb@65535.com>
>




--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.comTo put it bluntly,

--001a11428d3e4a7586052d9fee59--
