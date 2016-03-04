X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1026" "Friday" "4" "March" "2016" "14:08:15" "-0500" "Art Manion" "amanion@cert.org" "<56D9DD1F.1030302@cert.org>" "29" "[oss-security] Re: Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Date:" nil nil "3" "2016030419:08:15" "[oss-security] Re: Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        amanion@cert Mar  4   29/1026  " thread-indent "\"[oss-security] Re: Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29853 invoked by uid 550); 4 Mar 2016 21:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26500 invoked from network); 4 Mar 2016 19:08:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cert.org;
	s=jthatj15xw2j; t=1457118498;
	bh=TklVOSSHjDMz6A+1kjfMZwoG1TVLfqSU3LhbAj+DNW4=;
	h=Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type:Content-Transfer-Encoding:Sender:Reply-To:
	 Cc;
	b=CYBoKVA9ctyWFL6eKZ9j/aVOfOOq3QImJFHTpW35tO4756ih2BPVfCY/GrM1IWj7D
	 YB88gcFSj3P/nyrLdOPYduriB89cVPYktJm4+H7+HCRGAfc7DNkOUAmicaH+CRWXzJ
	 KsVeEWq1iL9tkJzoBjmDbf7YFP+05aZEH8kOIBa0=
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
Message-ID: <56D9DD1F.1030302@cert.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 4 Mar 2016 14:08:15 -0500
From: Art Manion <amanion@cert.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Concerns about CVE coverage shrinking - direct impact to
 researchers/companies
To: Kurt Seifried <kseifried@redhat.com>,
        cve-editorial-board-list <cve-editorial-board-list@LISTS.MITRE.ORG>,
        oss-security <oss-security@lists.openwall.com>

On 2016-03-04 13:24, Kurt Seifried wrote:
> So I've now heard from several security researchers that they are unable
> to get CVEs for issues that need CVEs (e.g. widely used
> hardware/software with flaws that have real world impacts and need to be
> properly tracked. This has definitely resulted in issues being
> publicized with no CVE that then makes it much harder to track and deal
> with these issues.

I think it's been said on this list previously -- these are two separate
activities:

1. Assigning IDs

2. Analysis, deconfliction, write-up

Binding these together results in delay, because #2 takes considerably
more calendar time and effort.  Another result is a limited but fairly
high quality set of entries (once #2 is complete).

I share Kurt's concern that CVE is not meeting a researcher/disclosure
use case of having IDs for vulnerabilities, and that the community will
at some point stop bothering with CVE.

I'm not sure how bad such an outcome would be, or what impact that would
have on CVE.

 - Art


