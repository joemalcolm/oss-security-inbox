X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2112" "Thursday" "10" "March" "2016" "11:25:21" "-0800" "Tim" "tim-security@sentinelchicken.org" "<20160310192521.GO1250@sentinelchicken.org>" "43" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031019:25:21" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       tim-security Mar 10   43/2112  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" "<20160309203420.GJ1250@sentinelchicken.org>" "<CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>" "<20160310173337.GN1250@sentinelchicken.org>" "<CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9600 invoked by uid 550); 10 Mar 2016 19:25:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9582 invoked from network); 10 Mar 2016 19:25:46 -0000
Message-ID: <20160310192521.GO1250@sentinelchicken.org>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
 <E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
 <20160309203420.GJ1250@sentinelchicken.org>
 <CANO=Ty0T=HkGovAZzYhvOSZKWCTaQtM1EDuUTZmEBZDA_5Wx1A@mail.gmail.com>
 <20160310173337.GN1250@sentinelchicken.org>
 <CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty2OU8mLGaEwsgYEYraOYvXggXiWYr5t_NsAcvkGMg5vRw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 10 Mar 2016 11:25:21 -0800
From: Tim <tim-security@sentinelchicken.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security@lists.openwall.com

> It's git. You can trivially keep an entire copy the databases trivially. It
> can be hosted in many places. We'd have to redo the issue tracking, but
> bugtracking systems are not exactly hard anymore.

I see that as only one component of having a distributed database.
Who's running the cron job that constantly pulls down updates from the
github server?  How do you ensure it's synced up when a legal threat
causes the main repo to go black?  

> See above. That's the whole point of the artifacts database. Please reread
> my original email maybe?

> I am of course open to feedback, but please actually go to
> https://github.com/distributedweaknessfiling/ and see what we're doing
> first before assuming we aren't doing certain things (like making sure the
> artifacts associated with a security vuln don't disappear).

I did look.  Sorry I missed the artifacts.  The git repos and
documentation make it far from obvious where that info lies.

Ok so is "A database of artifacts, files and related files for DWF
entries (so that when websites disappear the required content is
hopefully still available)" in an email the sum of your documentation
on that right now?  Just want to be sure I didn't miss something else.


Do you have ideas on how to capture vendor advisories?  Vendors are
almost certainly, in 99% of cases, going to ignore the DWF for a long
time.  Perhaps forever.  We're currently lucky to get many of them to
even include a CVE # in their own advisory.  How can that information
be captured without moderators having to do all the work?  Have you
thought about how we can deal with the copyright issues associated
with copying vendor content directly into the DWF for archival?

What I'm thinking is that perhaps there's a way to make vendors *want*
to post information.  Also, perhaps there could be a way to license
DWF numbering in such a way that vendors implicitly agree that the DWF
can re-publish.  Or maybe there's a way to work with the Internet
Archive to have third-party URLs archived automatically when they are
first posted.  See:
 https://archive-it.org/learn-more/

tim
