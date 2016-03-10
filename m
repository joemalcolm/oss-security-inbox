X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3836" "Thursday" "10" "March" "2016" "11:09:36" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>" "104" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031018:09:36" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       kseifried@re Mar 10  104/3836  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160310173337.GN1250@sentinelchicken.org>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<20160309203420.GJ1250@sentinelchicken.org>" "<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>" "<20160310173337.GN1250@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26489 invoked by uid 550); 10 Mar 2016 18:09:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26465 invoked from network); 10 Mar 2016 18:09:48 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=A5pKfoZtITTQROKnm6w7kGa84RTV3TokeXkiDXy0/k8=;
        b=QH4kWXO3offlSemd5UEZxA5uYaC0ebTtjqbKfPZRdcOd85knmxFK7WUErAA22ObMiQ
         tCQiu1QJTmxN9NKaSAlHFQbfukpGa+yyaJkJ55iJRhqyp9Rp5wn/430zN0sEnj3T6cdJ
         OSVo/N6TxPuKj2GcJ74e5GrYVIrrSJd7Atyf3y9xX6b92efkUn8K9G5VRhBarM3bZj9y
         unW4HcdhVLxL6JOn0I5AnI5mu9WM/iREi6ZoXd1tqZwtRSX6xjmOn5imY/PGGUVfpCar
         kqLfkhsRWhAdnIJaqw5GdTCAyX4SJO7dwP14OtpsyAJbOrIxAF4cuT5ExxMtzkj3ZfGB
         9BkA==
X-Gm-Message-State: AD7BkJJPieSQzUE6R3CQPdxhmEJZhkrgaS1zUcQOiaVPw/BxrmhX+4dgA+K4tg3KAaVz3Mi3P7BxgT9n6kQvUvPQ
MIME-Version: 1.0
X-Received: by 10.129.45.2 with SMTP id t2mr2714128ywt.182.1457633376305; Thu,
 10 Mar 2016 10:09:36 -0800 (PST)
In-Reply-To: <20160310173337.GN1250@sentinelchicken.org>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
	<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
	<20160309203420.GJ1250@sentinelchicken.org>
	<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>
	<20160310173337.GN1250@sentinelchicken.org>
Message-ID: <CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11428d3e9bca5b052db5b736
Date: Thu, 10 Mar 2016 11:09:36 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security <oss-security@lists.openwall.com>

--001a11428d3e9bca5b052db5b736
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 10, 2016 at 10:33 AM, Timothy D. Morgan <
tim-security@sentinelchicken.org> wrote:

>
> Hi Kurt,
>
> I don't mean to ignore what you guys have been working on.  It is
> arguably the most mature of the alternatives so far, and we need
> people experimenting with real tools right now.  All I was trying to
> point out was that we should keep this discussion going even if MITRE
> gets their act together in the short term.
>
> More comments below.


> Looking at DWF, it seems to have a few advantages over CVE,
> particularly for researchers, but it's hardly what I would hope for as
> a solution for the public.  Please view this as *constructive*
> criticism:
>
> * It is unclear to me on how the system is currently "distributed".
>   Yeah, it's in git, but that basically means it is just hosted on
>   GitHub.  What if GitHub's policies change tomorrow on distribution
>   of vulnerability information?  I imagine you've thought about this,
>   so I'm probably just pointing out the obvious.
>

It's git. You can trivially keep an entire copy the databases trivially. It
can be hosted in many places. We'd have to redo the issue tracking, but
bugtracking systems are not exactly hard anymore.


> * There's no facility to describe anything about the vulnerabilites in
>   the DWF-database.  As you've probably seen from my past emails, I'm
>   arguing for a system that tracks more than just metadata and links.
>   (DWF doesn't appear to have links or even simple descriptions.)
>

Correct, that is intentional. The database is just the ID and
assignee/requester/etc. THe Database schema would never be close to
correct/complete so I decided not to have one. The Artifacts Database
contains all that data, there will be a JSON file(s) with some semi
structured data (e.g. OSVDB, X-Force IDs, original researcher/etc.) and
then any artifacts (e.g. a copy of a security report, patch file,
whatever).


> The "end user" (sys admins, pentesters, other auditors) need a
> database of vulnerability information that is actually useful and
> isn't going to go away.   Tomorrow your vuln scanner finds a box
> missing a patch in obscure software X from 5 years ago.  All patch
> info and researcher info has been taken offline.  How do you
> represent that risk to your management?  If the software is no longer
> supported by the vendor, but it is still in production in your org,
> how do you argue for funds to replace the software?  THIS HAPPENS ALL
> OF THE TIME.
>

See above. That's the whole point of the artifacts database. Please reread
my original email maybe?


> We literally need a way to copy/paste vendor and researcher
> advisories, when the bug is first published, into a central database.
> (Of course there's copyright/IP concerns there, but if it is valuable
> to the community, that can be worked out.)  You can argue that this
> archival should be handled by third-party databases, but pretty much
> all of them are commercial and many have gone offline years after
> inception.
>

See above. That's the whole point of the artifacts database. Please reread
my original email maybe?


> I recognize you're just getting this started, but I feel when building
> a new system, it's always best to tackle the hard problems first.
>

I am of course open to feedback, but please actually go to
https://github.com/distributedweaknessfiling/ and see what we're doing
first before assuming we aren't doing certain things (like making sure the
artifacts associated with a security vuln don't disappear).


>
> Best,
> tim
> @ecbftw
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11428d3e9bca5b052db5b736--
