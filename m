X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1684" "Wednesday" "20" "December" "2017" "06:59:18" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171220055918.GA32086@lorien.valinor.li>" "59" "Re: [oss-security] GIMP parser bugs (FLIMP and more)" "^Date:" nil nil "12" "2017122005:59:18" "[oss-security] GIMP parser bugs (FLIMP and more)" (number mark "        carnil@debia Dec 20   59/1684  " thread-indent "\"Re: [oss-security] GIMP parser bugs (FLIMP and more)\"\n") "<20171219171119.3f4c7ae5@pc1>" ("<20171219171119.3f4c7ae5@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13468 invoked by uid 550); 20 Dec 2017 05:59:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13450 invoked from network); 20 Dec 2017 05:59:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4OBISYyxx17Gfyf+C9iC5WbMd5i8IIuEf5APWL4Zfy0=;
        b=eFH3XTgsNLPQM7g6H9blnf0XkJ8gnuN2bJQ/beMQZGRUVkX+3fY0V3RKg7nbtOf+qH
         fYtera999VZCdYz6Ov55eNKu1Tvj5Bicr9zujZO7pj89Fas++mwGeiYPqjTLgLz1niez
         uTJRuD+UVrzG6inSWsRhpmNs/MHdcmWrrZ9Lp8lEcVte+1UAf5NqZqhTmKO6a41iR4gS
         m0lIFcyCExfiieCpFCQB5w5msQOjjNw10ElRNmh5eTt5hcSZ6epQy1xPR8cHj94IUbXz
         Hn12ClwerzmeMJaVuFnzBk2ehGzJqtv5rHUAngssZcq9xEgA5RXfMwl3PTA03P6+ZjnM
         QJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=4OBISYyxx17Gfyf+C9iC5WbMd5i8IIuEf5APWL4Zfy0=;
        b=VWASh8oiaBSVQF86iQ5SdcEUU+aJV3KIrUJtgmzJFF0R9HO1w+ome3Ca37RNMAwmvq
         kzHzJfGSxGG3AV4gOxIKkEIyMZ6X0A4QVwyRFXBRRAJjgwF1GDbDQTDcM0qZ130gfWpP
         sfK+ZgQE+g8PNDlFlqsqNYega3hJi//Ec6K9SeoXytzfddPaBkazl6tg3GoUjcMb9UYj
         yiZn2kLK/pYzYOPwK4yyw8G8PRSjXf5doxxXC7fWVDTGb275275gb2z87SJ1jzEuAcBp
         /suv++MeJueK84ZuzZE6LwOwgLuIHZZuT22rBw4dp8q4dNZ++NbJ98f08NTLj7aeA9nk
         Ai/Q==
X-Gm-Message-State: AKGB3mL/RigTHkVBcKg5WNkWxC+apQaTiCccAmrudv9f95oiGvF/11Mb
	mjFE7t+4Nxci7VcKHiUy0XnMBQ==
X-Google-Smtp-Source: ACJfBoucCgWFn0+ryqwqBLgBbxKwdRvBO96kcLdxGfZ+dQMg7abDV+cGkQeKd7TG7QBV+0UjjmSlxA==
X-Received: by 10.223.176.86 with SMTP id g22mr7739868wra.267.1513749560273;
        Tue, 19 Dec 2017 21:59:20 -0800 (PST)
Message-ID: <20171220055918.GA32086@lorien.valinor.li>
References: <20171219171119.3f4c7ae5@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171219171119.3f4c7ae5@pc1>
User-Agent: Mutt/1.9.2 (2017-12-15)
Date: Wed, 20 Dec 2017 06:59:18 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] GIMP parser bugs (FLIMP and more)
To: oss-security@lists.openwall.com

Hi

On Tue, Dec 19, 2017 at 05:11:19PM +0100, Hanno B??ck wrote:
> Hi,
> 
> See also
> https://flimp.fuzzing-project.org/
> 
> Background: In 2014, back when I started the fuzzing project, I
> reported two bugs in GIMP in their more obscure parsers. Recently I was
> contacted by Tobias St??ckmann who wrote a working exploit (on freebsd <-
> no aslr, thus easier) for one of those bugs in the FLIC parser. He also
> submitted a patch.
> 
> The bugs were ignored all the time, patches as well.
> 
> I reported a couple of more bugs and also contacted the GNOME security
> team. Some have patches, others not, ony one got handled. It seems
> overall the file format importers are unmaintained.
> I also tried to submit a fuzzing guide to the gimp wiki, which failed,
> because the people who are supposed to hand out user accounts don't
> answer. (gimp is not fuzzing friendly.)
> 
> The bugs:

The following CVEs were assigned:

> Heap overflow in FLI import (the one where we have an exploit):
> https://bugzilla.gnome.org/show_bug.cgi?id=739133

CVE-2017-17785

> OOB read in TGA (with patch)
> https://bugzilla.gnome.org/show_bug.cgi?id=739134

CVE-2017-17786

> OOB read in XCF (patch, the only one that got merged and fixed)
> https://bugzilla.gnome.org/show_bug.cgi?id=790783

CVE-2017-17788

> OOB read in GBR (no patch, looks like string/utf8 issue)
> https://bugzilla.gnome.org/show_bug.cgi?id=790784

CVE-2017-17784

> Heap overflow in PSP (no patch, doesn't look straightforward to fix)
> https://bugzilla.gnome.org/show_bug.cgi?id=790849

CVE-2017-17789

> OOB read in PSP (no patch)
> https://bugzilla.gnome.org/show_bug.cgi?id=790853

CVE-2017-17787

Regards,
Salvatore
