X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1219" "Monday" "31" "October" "2016" "16:11:49" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161031151149.4waow4btnxoevnax@eldamar.local>" "36" "Re: [oss-security] Re: Handful of libass issues" nil nil nil "10" "2016103115:11:49" "[oss-security] Re: Handful of libass issues" (number mark "U       carnil@debia Oct 31   36/1219  " thread-indent "\"Re: [oss-security] Re: Handful of libass issues\"\n") "<F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>" ("<BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>" "<20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>" "<20161027083901.GA10554@lorien.valinor.li>" "<F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9715 invoked by uid 550); 31 Oct 2016 15:12:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9688 invoked from network); 31 Oct 2016 15:12:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mujY1uVp5Iru7DNq7+4mzlKgS4kkk4ZFzbKEUfSMThc=;
        b=BZ/SSYdi44J52HW0VqVCbYRsunnkOKCBRFsXaiTrvr3ZsyzGsruCyqtUAri0jFeics
         eDk/7TRTV+/lTLK4oTvqkWGqM+1oqu10ZRTVXFkbe0lv0ZQddn9jnFyIidfoZm4Xh715
         qJwaewUHFIlIn4TVNjToO7o2LlMtppMbFOH+lDRaG19aXDUto//mHt8bc+WMtzbIiedF
         LynuO0A8vTl47NHz8q+q/T0cANfhBdJBxXS7ETttRTY20JS/gSunwy9ERJp8QPGIsATo
         udPX44ztJ6T1HIviz+NsL2nQ55lc5XYsMT1YLVHH5bGNr5XsASeMzYY8dPRdyyP+kAZo
         WP3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=mujY1uVp5Iru7DNq7+4mzlKgS4kkk4ZFzbKEUfSMThc=;
        b=kepeUrzFQn0fO3fPa7PHbh87RPd4cd4u2uu8Jvt6sQMuOafuNrDN/Xv4W2Yiz81gHZ
         R/vkkqEPX5Cv+DWBf21rUmunYABg6SohBbVyF0wIMG0jQMboqRVcIDcF8xv2jQeLFnl0
         Lfhi2ZGPKAxdSGh+zphOmqrpMwCxMR3spiDqV3JQEwVf99GmMXTotIBWFOx3LXFxrHkc
         Goc64+IUILDj6IJN0MeJGZPBHmlfvp/oywpqtJQhfLT3yDuT4RZWD5I557mgkATi+Ybt
         bbD7OPU5gndUk/Y+IcFY3yO1zG7oChpmzT7oQagpoA/o9lHgyu4AMBZEZeWNsS9LQ6UT
         cbXg==
X-Gm-Message-State: ABUngveaJpQnPgxqAuNLoG4OLd4Yu+1wudN6vwafOsfyBHV7vL8PYk6dqQg9+ItCsqkQCg==
X-Received: by 10.28.157.137 with SMTP id g131mr6529142wme.29.1477926711052;
        Mon, 31 Oct 2016 08:11:51 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 31 Oct 2016 16:11:49 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20161031151149.4waow4btnxoevnax@eldamar.local>
References: <BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>
 <20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>
 <20161027083901.GA10554@lorien.valinor.li>
 <F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F5095245-3270-42FC-9FCC-91C2D121E6DC@gmail.com>
User-Agent: NeoMutt/20161014 (1.7.1)
Subject: Re: [oss-security] Re: Handful of libass issues

Hi

Apologies for the late reply.

On Thu, Oct 27, 2016 at 08:24:24AM -0500, Brandon Perry wrote:
> 
> > On Oct 27, 2016, at 3:39 AM, Salvatore Bonaccorso <carnil@debian.org> wrote:
> > 
> > Hi,
> > 
> > On Tue, Oct 04, 2016 at 10:23:22PM -0400, cve-assign@mitre.org wrote:
> >>> The third is a huge memory allocation leading to a crash that wasn't
> >>> fixed because a good solution is unavailable at the moment.
> >> 
> >> Use CVE-2016-7971.
> > 
> > It looks from the discussion in
> > https://github.com/libass/libass/pull/240 that this issue is disputed
> > to be actually in libass.
> > 
> 
> For context, while the input caused a crash with AFL (not fuzzing
> with ASAN) and it crashes with ASAN, I was unable to reproduce the
> crash with libass externally. I was only able to take up a hug
> amount of memory and take a long time to finish parsing the input.
> 
> I asked if they dev wanted to reject the CVE but got no strong
> response either way, so I decided to not pursue it.

Sure understand that. Currently, still the CVE is associated with libass.

@MITRE CVE team, could you clarify the above? Is it still desired to
have the CVE associated with libass, or shoult it be rejected?

Regards,
Salvatore
