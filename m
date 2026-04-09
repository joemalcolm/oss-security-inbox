Received: (qmail 32495 invoked by uid 550); 9 Apr 2026 15:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7566 invoked from network); 9 Apr 2026 06:30:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deepin.org;
	s=ukjg2408; t=1775716203;
	bh=CGZmoPFN06o6OgytzHaucSQGCMv6ZKef5zL+450fRlY=;
	h=Date:From:To:Subject:Message-ID:MIME-Version;
	b=yyqgO1L9xrRR1RudKLIupmWAqGU2iPwBNL7fnopynoR1VfqnIzmv4Fq61bfazxttJ
	 AB35MhY51gMY0DU7FfRcXZs9YC7afAv4uxMY6lz66C4cvuXeLxctNSbqrJvnuWe98j
	 AJo83YiZ4ykAntFiq+7dlQsnqg1uE46sXecpjkMg=
X-QQ-mid: zesmtpip3t1775716198t7355362e
X-QQ-Originating-IP: zhxdxx/klF913w4lKiTDhRYHHTKWRcN2SCBjFCSMLIw=
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7514892915362823764
Date: Thu, 9 Apr 2026 14:29:55 +0800
From: Tianyu Chen <sweetyfish@deepin.org>
To: oss-security@lists.openwall.com
Cc: morgan@kernel.org, elirazamumtaz@gmail.com
Message-ID: <FF535D49DCDE0939+addHY0xl6rD04Ddg@ut005408-PC>
References: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com>
 <fa4662c4-ce58-48ec-85a4-b0272ca9931a@seltendoof.de>
 <20260409013620.GA13098@openwall.com>
 <CACmP8UKMsyDGzMSbuu_tORKR9p2EUhCE_qY6YcFf_w19ZcZaqw@mail.gmail.com>
 <20260409035050.GA14884@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260409035050.GA14884@openwall.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:deepin.org:qybglogicsvrgz:qybglogicsvrgz3a-1
X-QQ-XMAILINFO: OW3qjH3bC/TAnozFat2MHXmqPdtgD2iWEW6kztT32vXExWb3HRpF6tYB
	BgIWTYXhFwlmsz+GbuZYV5RLt2tzgjVlC/C7XNx3WEQuZRKuKs6ctL9QF2z3VGdDUtYl40M
	CEUE0JH8H2S/uh21tRg6hkW8Rf4KCZ5qmmpw62sHnuNxap/ipyoyXFkdRDArV4D1kynzRWU
	eOOa+MKHERZ4CjB1Xa673L8uyYOJbIIdDDERzCRhDVytj8XLXlwD20Be15H4hky3xqZpNPv
	OD+nn05z2jbPVw0iBiCQ4GQuugBc37B4gZxpZx3OEk/2Ko8Cj685axZ6qLeg1Wgk+A9Os1C
	zWRgFplu5EE6ZJU/EOGxJbfZREZtQTQv5rZuNECqqqqW78/nWk7Vk0S8Nq5DfrVY4/SVPlG
	uzsXIOZkG3p4vC3Gx1nsQ9UmxcBT9jQwyruKJhj7Hfgmdqy0HTEbZEKk7QgN2f1C3RtxDUB
	ZgwIZBTBDrNRRAUbzqwZRHOEact+t6EO/6KXduR4yoVfKqK5nwYIhZGkWTZfgc9aE4BrGU5
	0UaoIJdDJ37y8XqiU8xsXX8rGiO48eeaIKXiiObKsnB3N+uT+4UxTzUYsbfx2utn3FzL4G1
	D2uuXq4ISCXqRCPzpkNuDqs5bP+x2/pK+tYk5uKBlZGxfDVB4376+mYaOqxZhyN107pfpbn
	MUKaD/yWlPZcK5dETdKWuLy8MJsqOv27I3fWb5XX60mT9Pj0M21RppJbkBiaUV+RZGx0lOD
	EvOX6fluSBCbV4uCpAYjZ4O9v/9vTBtD478P1bKjFIK/+ZV3S26CU1QmcN4fgwQLmfnqSNV
	XVoXwJMgdk8kNgFNNXqEnkKZy4Gz4W9AVADWDUgP4KdTUocjetd6oJvGK9J1NvzoXqK7FL7
	5pHh5BYmNyCuHlS74b6Gk49cPqXHqJ42/NS+LDqGKH4c9iJEiJ7I5tae9T8DruqOH9EI2SY
	HKAbW40tlFxqNM68m0z2UuGvNjgiWOCewSnNRxOIX4g5g8aTaQvFbYHqK9mopXVGFo+AMlD
	hifLnae6xy98okgBAi
X-QQ-XMRINFO: Mp0Kj//9VHAxzExpfF+O8yhSrljjwrznVg==
X-QQ-RECHKSPAM: 0
Subject: Re: [oss-security] libcap-2.77 (since libcap-2.04) has TOCTOU
 privilege escalation issue

On Thu, Apr 09, 2026 at 05:50:50AM +0200, Solar Designer wrote:
> I would still like to know if there's a way I could extract Markdown
> source from third-party GitHub advisories, if anyone knows.

GitHub's REST API can be used for that:

$ curl -s https://api.github.com/repos/AndrewGMorgan/libcap_mirror/security-advisories/GHSA-f78v-p5hx-m7hh | jq -r .description

https://docs.github.com/en/rest/security-advisories/repository-advisories

Best regards,
Tianyu Chen @ deepin
