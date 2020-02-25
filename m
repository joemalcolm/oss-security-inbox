X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1547" "Tuesday" "25" "February" "2020" "14:05:33" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "46" nil "^Cc:" nil nil "2" nil nil (number mark "        carnil@debia Feb 25   46/1547  " thread-indent "\"Re: [oss-security] GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16013 invoked by uid 550); 25 Feb 2020 13:05:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15992 invoked from network); 25 Feb 2020 13:05:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=i4qZjoGZro++kTA0/mSZIuN4qoae7w2uYRzZe0ruxBQ=;
        b=LpULzC1IGH8IrpuDSrIR0vH8OywI8WD9FpFtF9t3fqjbImeXVx3Vi5pvnfx5F4/FzA
         bznwjRoJBV9q76H7rgmrsjP38GOxtgUQidxD/erJTCMbr7tgZJukEcAIx2HJjgbXXC8v
         tZt5UGO8QCMVwDC0S/EwSNfFE7d5D/JqsVY25zad/rGFJ9X9nRdx9m1A9DspvnS82ZAD
         tv9AW41EdqtfDh8NVfz+wd4ndsWJLHrlizRbtU7HzX13SuXKVGJWVfhQQoHvtqbA/Sdv
         ndXh/uqPDqmqPPyBM75KHQrDCd4Ad3gIRtMV91GWLs0lQzX5jdpkjNMrwaknxnM4GdS/
         f/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=i4qZjoGZro++kTA0/mSZIuN4qoae7w2uYRzZe0ruxBQ=;
        b=NQOHR0GC7HJtGZaIPe2Gs1T7fCJhn6xocO8UytjhXHlmBFwlVfaVg/bTgYjxWZogwg
         F7gIAaOmXswgOTybkCTJwegJl0h34fIoRe7PX0ZDTd5bd8VkvsETLpUzRGiRhAnnPP5B
         fqfnzvL2dDKUonuAqLLZhXMODai5VsIIzcBvPT2HKbAax6OxpPAF47BLZZmsEWQx2EDP
         zLGgaQJqr9B6wA/Q99Xcvjak7I2ZaLLuz3qtjUBdeTEC1tWU549qEzyt9MWrtw1gWGOA
         AdW096j5VThcCJOk5gm1N9R1cF/Rygd29oRr+4MKizxktNW7vsscx+TGAyMc1wCsNaWr
         gJLQ==
X-Gm-Message-State: APjAAAUwWZa3+o79hXKTqyQLyfWulIb7AHxLAbi49cRImtb2SKRvhpEQ
	n8KeBO/1TIfseCFyAiPsPOVU6p4IbnE=
X-Google-Smtp-Source: APXvYqyxzkw3vrgPYpWF904m5U63iT6562gGIXEg0ZNIrmwd0A+51Y9pPGYxk2u1HLrQYtNcIkB72w==
X-Received: by 2002:adf:ca07:: with SMTP id o7mr71469905wrh.49.1582635935517;
        Tue, 25 Feb 2020 05:05:35 -0800 (PST)
Message-ID: <20200225130532.GA4071@lorien.valinor.li>
References: <20200206140418.GA26959@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200206140418.GA26959@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Amadeusz Slawinski <amade@asmblr.net>
Date: Tue, 25 Feb 2020 14:05:33 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] GNU screen "out of bounds access when setting
 w_xtermosc after OSC 49"
To: oss-security@lists.openwall.com

Hi

On Thu, Feb 06, 2020 at 03:04:18PM +0100, Solar Designer wrote:
> Hi,
> 
> GNU screen 4.8.0 was released yesterday with a documented security fix
> in it:
> 
> https://lists.gnu.org/archive/html/screen-devel/2020-02/msg00007.html
> 
> ---
> From: 	Amadeusz Slawinski
> Subject: 	[screen-devel] GNU Screen v.4.8.0
> Date: 	Wed, 5 Feb 2020 21:45:35 +0100
> 
> Hello everyone,
>  
> I'm announcing availability of GNU Screen v.4.8.0
> 
> Screen is a full-screen window manager that multiplexes a physical
> terminal between several processes, typically interactive shells. 
> 
> This release
>   * Improves startup time by only polling for already open files to
>     close
>   * Fixes:
>        - Fix for segfault if termcap doesn't have Km entry
>        - Make screen exit code be 0 when checking --version
>        - Fix potential memory corruption when using OSC 49
> 
> As last fix, fixes potential memory overwrite of quite big size (~768
> bytes), and even though I'm not sure about potential exploitability of
> that issue, I highly recommend everyone to upgrade as soon as possible.
> This issue is present at least since v.4.2.0 (haven't checked earlier).
> Thanks to pippin who brought this to my attention.

Regarding the affected versions,
https://bugzilla.redhat.com/show_bug.cgi?id=1801405#c6 points out that
the issue is caused by the upsteram commit
https://git.savannah.gnu.org/cgit/screen.git/commit/?h=screen-v4&id=c5db181b6e017cfccb8d7842ce140e59294d9f62
which would be only in v4.7.0.

Is this correct?

Regards,
Salvatore
