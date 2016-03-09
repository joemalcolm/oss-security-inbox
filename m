X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2746" "Wednesday" "9" "March" "2016" "13:55:45" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>" "73" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Cc:" nil nil "3" "2016030920:55:45" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        kseifried@re Mar  9   73/2746  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160309203420.GJ1250@sentinelchicken.org>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<20160309203420.GJ1250@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3331 invoked by uid 550); 9 Mar 2016 20:55:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3313 invoked from network); 9 Mar 2016 20:55:57 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=oBi2rpVuk/O8S/fzcx5EtTgdQqbPlIJBZAG086VPVpQ=;
        b=LmsSND/0G3A6jmzHeMwarHMBAYXoKTZr/jAuC2AnUZSQWCWFH9RbMQshUwAPjifIwm
         d7ralRhsxkjg58YT3zo7nsrcpYUDwPFqDCHgZFpsDTmGPiVyKD6YUu6xvr9Xe1c+nxut
         c7khbYDWks7IVTD8YCfAqr5WOcz/twrsI5ImLJ8RALEsvg5m6Hy2eDNg3QLqwkGp+1pV
         xAatmNmA8IO5MBpbxxySYPuDZrql9tJD+nktkzNsiJBHcP19jQ1OTGago5C6DxfIOB5x
         0gq2KBZUhlkYysDpy3WwaAR0AjO6AYIr5cWNS/Ve6HNRUkwMtAaTOKMvqRmXJ1Q25j1L
         0uCg==
X-Gm-Message-State: AD7BkJIMLOZNjDDZkYf6ONkBZ3U9RAmS/9uss0FGEHdoqyKY01+5O0P5722gG32g52TU4jcvem7cmoSw4Tbgb664
MIME-Version: 1.0
X-Received: by 10.13.206.2 with SMTP id q2mr224133ywd.76.1457556945989; Wed,
 09 Mar 2016 12:55:45 -0800 (PST)
In-Reply-To: <20160309203420.GJ1250@sentinelchicken.org>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
	<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
	<20160309203420.GJ1250@sentinelchicken.org>
Message-ID: <CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da67e01b695052da3eccb
Cc: oss-security <oss-security@lists.openwall.com>
Date: Wed, 9 Mar 2016 13:55:45 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: "Timothy D. Morgan" <tim-security@sentinelchicken.org>

--001a114da67e01b695052da3eccb
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 9, 2016 at 1:34 PM, Timothy D. Morgan <
tim-security@sentinelchicken.org> wrote:

>
>
> > All - I've chatted with some of the people who fund the CVE work at
> MITRE.
> > I've learned that CVEs *are* being issued, but obviously that is
> happening too slowly.
> >
> > They're having a meeting tomorrow (March 10) to try to figure out what
> > the problems are and how to fix it.  I don't know what they'll do.
> > However, I'm hopeful that  this will mean that the CVE work will get
> > back on track soon.
>
>
> Thanks David for finding the right people and raising the issue with
> them.  I'm sure media coverage is probably helping as well:
>
> http://www.theregister.co.uk/2016/03/09/hackers_spin_up_alternative_cve_system_as_bugs_go_unchecked/
>
> Suppose MITRE fixes their issues tomorrow and the CVE goes back to the
> way it was.  Is that really want we need going forward?  A system
> that's based on sending emails between humans and posting only
> one-line descriptions with a series of links (half of which are broken
> after a short time)?  A system which tries to distribute the load by
> using "big" software vendors, many of whom have a vested interest in
> limiting what vulnerabilities get published in their software?
>
> It seems like we can do better than this.  Infosec hasn't been
> "working" for some time.  Perhaps we need better tools to help us get
> ahead of the game.
>

Even if Mitre had unlimited funding there will be a need for the community
to be involved, especially if we're going to make sure that CVE/DWF cover
important flaws (of which there are thousands right now, and we haven't
even dealt with the IoT or non english software markets like China....).

Putting on my info security economics hat:

And I suspect the solution to this is the same as Open Source, we scale
out, build a community and process that works and change as needed. DWF is
one such effort. We aim to reduce the cost of vulnerability identification,
and vulnerability coordination so that there's more less negative incentive
(cost in time and effort) to do this right.

As I've repeatedly stated the DWF wants to work with CVE/Mitre if possible,
forking vulnerability identification will create additional costs
(retooling all the systems and process that rely on CVE) so I want to
minimize that as much as possible, the goal is to make things better and
easier, not to add another standard for the sake of itself.


>
> --
> tim
> @ecbftw
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da67e01b695052da3eccb--
