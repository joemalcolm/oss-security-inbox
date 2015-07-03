X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1187" "Friday" "3" "July" "2015" "13:58:17" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150703115817.GB12861@lorien.valinor.li>" "35" "Re: [oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters" nil nil nil "7" "2015070311:58:17" "[oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters" (number mark "        carnil@debia Jul  3   35/1187  " thread-indent "\"Re: [oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters\"\n") "<20150703111524.762f89eb@redhat.com>" ("<20150626184326.6b7309a8@redhat.com>" "<20150626195914.6809395a@redhat.com>" "<20150703111524.762f89eb@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13952 invoked by uid 550); 3 Jul 2015 11:58:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13928 invoked from network); 3 Jul 2015 11:58:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qO9z9gr74GbbuCDFDQ+wAny0jIAetoLfNB+vcSwlmsk=;
        b=Qw40q22TL+swV1ztpPl7TCHJDXZR1Te0kXuZWz2qlRSPnu0T4XpFP0nGL/3KUSo9c4
         nfdUjyVEw5nyvNMqqftqdUcA8mDZSme+f1FDLub4Q0tCHBSg3SoZT1z5V7Fm8+RlcPZ4
         8nbEtAFRwBt2/Uz/CYQJ6S6qEiTSjT/d6lmnz4g4BBNzpDcl2si1Nt4ZYlbZ6/74ro3J
         gSMlqWB5B2hu0xsQrYbB0Rvq52T6QhJhQEgvnj8Ecfi7ClEcYXohOcqiN045VPmbpvWX
         nHRhOJbloNvPhcYng5GVdt9DrOo+Yda2yJOmKWEIcmFrrgOURaUotFL3rRBtJYI0AE5h
         wRVQ==
X-Received: by 10.181.12.111 with SMTP id ep15mr25687656wid.15.1435924698183;
        Fri, 03 Jul 2015 04:58:18 -0700 (PDT)
Message-ID: <20150703115817.GB12861@lorien.valinor.li>
References: <20150626184326.6b7309a8@redhat.com>
 <20150626195914.6809395a@redhat.com>
 <20150703111524.762f89eb@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150703111524.762f89eb@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Fri, 3 Jul 2015 13:58:17 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE-2015-3258 CVE-2015-3279 cups-filters
To: oss-security@lists.openwall.com

Hi Stefan,

On Fri, Jul 03, 2015 at 11:15:24AM +0200, Stefan Cornelius wrote:
> On Fri, 26 Jun 2015 19:59:14 +0200
> Stefan Cornelius <scorneli@redhat.com> wrote:
> > Hi again,
> > 
> > I think there's a possible problem with the patch that I failed to
> > catch earlier in the process, so you may want to hold packaging for a
> > bit until this is fully investigated.
> > 
> > Sorry for the inconvenience.
> 
> Hi,
> 
> Even with the patch for CVE-2015-3258 in version 1.0.70 it was possible
> to trigger an integer overflow leading to a heap-based buffer overflow
> using the same vector (specially crafted line sizes).
> 
> The integer overflow has been assigned CVE-2015-3279 and is fixed in
> version 1.0.71. Apart from that, the patch also hardens against
> possible crashes due to missing calloc() success checks.
> 
> Patch:
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7365
> 
> Red Hat bug:
> https://bugzilla.redhat.com/show_bug.cgi?id=1238990

Can you confirm, is CVE-2015-3279 the right CVE? The patch uses in the
description CVE-2015-3259. Although I guess the bugzilla entry from
Red Hat contains the right reference.

Regards,
Salvatore
