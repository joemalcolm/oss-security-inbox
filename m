X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3425" "Thursday" "10" "March" "2016" "12:34:52" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3Gws1VO5CVr_sAw4Kzjk=1uO+xi3KjdabH7-o6yv0ikg@mail.gmail.com>" "91" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031019:34:52" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       kseifried@re Mar 10   91/3425  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160310192521.GO1250@sentinelchicken.org>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<20160309203420.GJ1250@sentinelchicken.org>" "<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>" "<20160310173337.GN1250@sentinelchicken.org>" "<CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>" "<20160310192521.GO1250@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30010 invoked by uid 550); 10 Mar 2016 19:35:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29985 invoked from network); 10 Mar 2016 19:35:04 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=P3hqdi60sa1iRE9Rt+QdukA0co6po7eWKMJca8ayNYg=;
        b=HQy42QVC7uPNnSApfaquYhAkUfpBAPBmrFVPEPp5DUHbBlc+a7Zf0vYwCXJ+zG3K2I
         Ado21sk3UmKTABttlgwpBPoohzFDkqi+FV71HfFFsDEiD9V9PkT4JNJJXF3uFaq1Wd2b
         lScLMpmwWXwlATNIVdhgxR6wozsW3CX+suMWdqPQ9eJNFAf9s09tsBI9ijttUi4AzlIJ
         SF0vDdnsmxR7MHviSYkjVqC9Dj6NaBHByz6Ap9YG7K6k/OsPT8OQhI63cNOHL/Smj+HA
         Wwq6ZPliPBDOgstWTAVa/84qXk5ugpfzxiGkOHapOnms1WmTdZzK6x+VPLRM9ryol99i
         UUWg==
X-Gm-Message-State: AD7BkJLNx9fksmNzGlakb27Q8cQt8LzlC50cjFd1VRyaVs9lsnluK3vU9bGXraQUsxuxFMLNJsYuEEi3yJgOGHZu
MIME-Version: 1.0
X-Received: by 10.37.230.136 with SMTP id d130mr2988839ybh.125.1457638492490;
 Thu, 10 Mar 2016 11:34:52 -0800 (PST)
In-Reply-To: <20160310192521.GO1250@sentinelchicken.org>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
	<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
	<20160309203420.GJ1250@sentinelchicken.org>
	<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>
	<20160310173337.GN1250@sentinelchicken.org>
	<CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>
	<20160310192521.GO1250@sentinelchicken.org>
Message-ID: <CANO=Ty3Gws1VO5CVr_sAw4Kzjk=1uO+xi3KjdabH7-o6yv0ikg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0a93608e8d48052db6e8f4
Date: Thu, 10 Mar 2016 12:34:52 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0a93608e8d48052db6e8f4
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 10, 2016 at 12:25 PM, Tim <tim-security@sentinelchicken.org>
wrote:

> > It's git. You can trivially keep an entire copy the databases trivially.
> It
> > can be hosted in many places. We'd have to redo the issue tracking, but
> > bugtracking systems are not exactly hard anymore.
>
> I see that as only one component of having a distributed database.
> Who's running the cron job that constantly pulls down updates from the
> github server?  How do you ensure it's synced up when a legal threat
> causes the main repo to go black?
>

Whoever wants to. It's public. Can you give me a real world example of this
BTW, or are we just worrying about things that pretty much never happen in
real life, but make for fun email threads?


> > See above. That's the whole point of the artifacts database. Please
> reread
> > my original email maybe?
>
> > I am of course open to feedback, but please actually go to
> > https://github.com/distributedweaknessfiling/ and see what we're doing
> > first before assuming we aren't doing certain things (like making sure
> the
> > artifacts associated with a security vuln don't disappear).
>
> I did look.  Sorry I missed the artifacts.  The git repos and
> documentation make it far from obvious where that info lies.

Ok so is "A database of artifacts, files and related files for DWF
> entries (so that when websites disappear the required content is
> hopefully still available)" in an email the sum of your documentation
> on that right now?  Just want to be sure I didn't miss something else.
>

Not clear what your question is.


> Do you have ideas on how to capture vendor advisories?  Vendors are
> almost certainly, in 99% of cases, going to ignore the DWF for a long
> time.  Perhaps forever.  We're currently lucky to get many of them to
> even include a CVE # in their own advisory.  How can that information
> be captured without moderators having to do all the work?  Have you
> thought about how we can deal with the copyright issues associated
> with copying vendor content directly into the DWF for archival?
>

Vendors can submit them, to get your DWF # officially in the database you
also need to be willing to post the artifacts. So that's the big carrot for
a lot of researchers (official recognition which they can then use on their
resume/etc.).


>
> What I'm thinking is that perhaps there's a way to make vendors *want*
> to post information.  Also, perhaps there could be a way to license
>

Well with CVE we've already crossed that bridge for the ones that care,
they (like Red Hat) post CVEs, the vendors that don't care, well, they'll
continue to not care until customers speak up. One hope I have is that
getting more identifiers for issues that researchers find will give
customers the data they need to make informed decisions and maybe pressure
companies into behaving better.


> DWF numbering in such a way that vendors implicitly agree that the DWF
> can re-publish.  Or maybe there's a way to work with the Internet
> Archive to have third-party URLs archived automatically when they are
> first posted.  See:
>  https://archive-it.org/learn-more/
>
> tim
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0a93608e8d48052db6e8f4--
