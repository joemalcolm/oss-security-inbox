X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["808" "Thursday" "17" "November" "2016" "17:50:17" "+0000" "Jason Cooper" "osssecurity@lakedaemon.net" "<20161117175017.GM5329@io.lakedaemon.net>" "22" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Date:" nil nil "11" "2016111717:50:17" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        osssecurity@ Nov 17   22/808   " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" "<20161117163922.GL5329@io.lakedaemon.net>" "<6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24201 invoked by uid 550); 17 Nov 2016 18:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29706 invoked from network); 17 Nov 2016 17:50:33 -0000
X-MHO-User: 542ece85-acee-11e6-b17f-19517aec265d
X-Report-Abuse-To: https://support.duocircle.com/support/solutions/articles/5000540958-duocircle-standard-smtp-abuse-information
X-Originating-IP: 173.50.81.193
X-Mail-Handler: DuoCircle Outbound SMTP
X-DKIM: OpenDKIM Filter v2.6.8 io D81B68005C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lakedaemon.net;
	s=mail; t=1479405017;
	bh=Jlkd6hJCjhQ72K92u+HiraoQvY41AQf4ogO/cAZFMWo=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=CySzwrqJXNL4JT8rBXfOeB0+BVplg9MK90cgmK5kSE5op4/vtNysN7sGRHzGkL/pp
	 pIVBcKVd/B5yuJ2wWSPGPnEW8fgf6T2Vsri+691w1VEAOswCAy1wKXdh/IoLlfT66P
	 qphj1UsmbTTR44WDNmBdiuFMDQ5f1sSdEqPxjodAQzk8IFTThRVP/+Tnfz1KGq8uab
	 y23OIFDX+qnOArm60vIP0V+AGbCDbwiSQ2TJ+rVIezcMHutiRjOF1sWlWc5/pdatq1
	 TmNjfUZq74gFt2T32SvG3FMdhIFBxeoEJLn+oecg8vuo2rvT7XTFv9MCfeQe/ZBf/b
	 ZcigYNhIcEqRw==
Message-ID: <20161117175017.GM5329@io.lakedaemon.net>
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
 <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
 <20161117163922.GL5329@io.lakedaemon.net>
 <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 17 Nov 2016 17:50:17 +0000
From: Jason Cooper <osssecurity@lakedaemon.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

Hi John,

On Thu, Nov 17, 2016 at 04:56:06PM +0000, John Haxby wrote:
> On 17/11/16 16:39, Jason Cooper wrote:
> > However, the golden rule still applies.  Physical access trumps all
> > defensive measures.  The absolute best you can do is detect that
> > physical access occurred.  From there, you're hoping there are no
> > hardware implants or other devices outside the scope of software
> > security.
> 
> I agree.  However, it ought be to be harder than leaning on the enter
> key to break into a system.  You lock your doors even though it doesn't
> stop a determined burglar?

Yes, as I said before, non-deterministic failure modes are bad.  This
CVE is a bug in the initrd script and needs to be fixed.  What I
disagree with, and still do, is the "sky is falling!" nature of the
alert.

thx,

Jason.
