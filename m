X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3412" "Friday" "4" "March" "2016" "16:56:13" "-0500" "Adam Caudill" "adam@adamcaudill.com" "<CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>" "67" "Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Cc:" nil nil "3" "2016030421:56:13" "[oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        adam@adamcau Mar  4   67/3412  " thread-indent "\"Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14279 invoked by uid 550); 4 Mar 2016 21:56:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14261 invoked from network); 4 Mar 2016 21:56:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=adamcaudill.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/ksSmRCC9cvmKLlt/Hy3ZsyFO3brFJW+CJpF+F30xmA=;
        b=L53pu/Yh9fQ42b1O0FY1QrgLQTgsRFxpl8KIqC4sC3FkNu2ySsHKLYQRSLJzLUNx9/
         0hVFZp4RIlujtwFkIDcuzwxXiFy4SMw34n6W5Vz33QiKUN0AZf2eCjCe4sJitvgBiaHO
         Ii3EWgHc63sQjOe/pZ9S1ybRvf0SjNigGh6Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/ksSmRCC9cvmKLlt/Hy3ZsyFO3brFJW+CJpF+F30xmA=;
        b=L4cp8TUyyfBISNA4932W0+u06GjkyffSaPqM/yewIQ2c3TvuHzwBArr9YQAIi39JMM
         15Q03a0mxmDJ4buhRRbzANlxB4FqgpTMu1jVDFbZHkLVf/KStsJQMtonvN2CZZbEgoGg
         cdetGh5+w7WOnYuW7FocCBoq/1y/Xvys2eWimY5ZdH6l68Qw8zPkuInWHD4P2G6u1Q2E
         JMKd8hsiGWzLIeJsAH0toiOuoiSX+6LK9N33wHxkb4aOUbJlq5csLS7A6YhhpK0Up7ts
         ZvKWhnsZD6QaDIRK54dZ2Zsaa3LRk/BEw9EXtLW7/H0DOa7cFTv6cVCbVZXGH1FYrIoE
         Bn6Q==
X-Gm-Message-State: AD7BkJLpIafkVqzprBw8zvcUSVAfuypl4lW65w4Ni6xQvdKkuBYrTa9JV5g+wUjy4Mmr0cAnhSmu3nP0g5R4dw==
X-Received: by 10.25.25.143 with SMTP id 137mr3881932lfz.86.1457128593289;
 Fri, 04 Mar 2016 13:56:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org> <6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>
Message-ID: <CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Art Manion <amanion@cert.org>, Kurt Seifried <kseifried@redhat.com>, 
	cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>
Date: Fri, 4 Mar 2016 16:56:13 -0500
From: Adam Caudill <adam@adamcaudill.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

CVE clearly plays an important role - customers and clients rely on
them, researchers need them to coordinate with vendors - they play an
important role in so many parts of vulnerability disclosure and
management - yet as Kurt points out, researchers request CVEs, and the
requests are rejected because of this coverage policy (assuming the
researcher gets a response; anyone that has watched this list has seen
the issues with requests not being responded to). By rejecting these
requests, and leaving legitimate vulnerabilities in software with a
significant user base without a CVE, it makes work for difficult for
researchers, for vendors, and for customers.

The level of frustration in the research community has been growing,
with steady calls for a new CVE-like solution that is designed to
address these needs in a more effective way. I greatly appreciate the
work that has been done, but at this point CVE is becoming less
useful, less relevant - if this isn't addressed, my expectation is
that a CVE-like solution will be adopted by the community, and
researchers will begin moving away from requesting CVEs.

At least one (very prolific) researcher has already moved to
self-assigning CVE-like IDs that are outside of the normal CVE range
to address this issue. Others are trying to create their own
registries, and as Kurt points out, some are just not requesting IDs
of any sort now.

This is a legitimate problem, the frustration level is growing, some
type of solution is needed.

--Adam Caudill
http://adamcaudill.com


On Fri, Mar 4, 2016 at 3:25 PM, Mike Prosser <mprosser@symantec.com> wrote:
> While it would have an impact for sure on our community, I think the biggest impact would be on customers since CVEs have become a Vulnerability Name when calling support with concerns....rather than just a common tracking reference.
>
> -Mike
> Symantec Software Security Group
>
>
> -----Original Message-----
> From: owner-cve-editorial-board-list@lists.mitre.org [mailto:owner-cve-editorial-board-list@lists.mitre.org] On Behalf Of Art Manion
> Sent: Friday, March 04, 2016 1:08 PM
> To: Kurt Seifried <kseifried@redhat.com>; cve-editorial-board-list <cve-editorial-board-list@LISTS.MITRE.ORG>; oss-security <oss-security@lists.openwall.com>
> Subject: Re: Concerns about CVE coverage shrinking - direct impact to researchers/companies
>
> On 2016-03-04 13:24, Kurt Seifried wrote:
>> So I've now heard from several security researchers that they are
>> unable to get CVEs for issues that need CVEs (e.g. widely used
>> hardware/software with flaws that have real world impacts and need to
>> be properly tracked. This has definitely resulted in issues being
>> publicized with no CVE that then makes it much harder to track and
>> deal with these issues.
>
> I think it's been said on this list previously -- these are two separate
> activities:
>
> 1. Assigning IDs
>
> 2. Analysis, deconfliction, write-up
>
> Binding these together results in delay, because #2 takes considerably more calendar time and effort.  Another result is a limited but fairly high quality set of entries (once #2 is complete).
>
> I share Kurt's concern that CVE is not meeting a researcher/disclosure use case of having IDs for vulnerabilities, and that the community will at some point stop bothering with CVE.
>
> I'm not sure how bad such an outcome would be, or what impact that would have on CVE.
>
>  - Art
