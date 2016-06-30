X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1448" "Thursday" "30" "June" "2016" "14:14:25" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160630121425.GA17822@eldamar.local>" "46" "Re: [oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)" nil nil nil "6" "2016063012:14:25" "[oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)" (number mark "U       carnil@debia Jun 30   46/1448  " thread-indent "\"Re: [oss-security] Re: CVE Request: libgd: Invalid color index is not properly handled leading to denial of service (crash)\"\n") "<20160630012758.B2D89EBC15E@smtpvmsrv1.mitre.org>" ("<20160629194243.GA12097@eldamar.local>" "<20160630012758.B2D89EBC15E@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25810 invoked by uid 550); 30 Jun 2016 12:14:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25786 invoked from network); 30 Jun 2016 12:14:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dufYdMkb+Lh6PnL2Yoi0inknZ20zrHpfd6h/VVsHCdo=;
        b=YNZc5h59i+q8rnF5qawGwGAOXSFkpC5TaB6Dw8lTQ/XG2Mcc+qRO/AgZppzUgOkTb/
         U7yNAgJvFHNW6xc1vVLNN0M3bTcxLL0b6WncjR5px7ObCn3nUtDyg4wFQ7dS8G2AUiF7
         EA71m4g6620YiRHSUZgzTLwldrlkakv6xiK+PsArOKF6p5PLvc25PT+gT05baS8gdW5a
         ACYjuq1ZcdfivftMolunZV3EjXSUA+L0CPCPtk2SSOiZDJJQepm2ZHak/CbyKHtw3UY/
         jPWZnqyeMdWMJ9uEtQ9VtQWiUEiFHhtp6cAY9X18EgJoFg1moe+Jo2hmcflFcRqC8/AH
         UuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=dufYdMkb+Lh6PnL2Yoi0inknZ20zrHpfd6h/VVsHCdo=;
        b=hFuo3OtRhdgsxe7gYFH7ndB+KcLAsd8tGzTGYQ+xXowlGKGrpP5mJqQskBKH2ykDzx
         oJJFHrnR+VV1rysxWpU8CLbYMTQ72tflJfdEYAxlOiwGN4vlIrkUwWoU6KLh1ODFUCaN
         HqrpBaYI55qNq+6T3SAjD1RSF98nY+iZq0Iy7z79dN77fK2/zbwxZyfAe+qu2cL/7tQR
         XHYeMGfl7RuIJ8SWOksjFgOoZyrqwhChrPSMEXZaNbVQFug4JaOkcS0NoR05/ZIQj1G2
         lFAnroxHP0rDPwCrpfUJMwMnwxmqcTiaQ87UyThUFm5vwtn566YHRcKBPlbB9FGPjrkU
         FDnw==
X-Gm-Message-State: ALyK8tJo84QIlbxIuP8cl74vbNdtalerwtWno3FsNeRaE8modGQ8lyFgT8Gjld0KqBZjCA==
X-Received: by 10.194.5.40 with SMTP id p8mr13642367wjp.56.1467288866755;
        Thu, 30 Jun 2016 05:14:26 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 30 Jun 2016 14:14:25 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160630121425.GA17822@eldamar.local>
References: <20160629194243.GA12097@eldamar.local>
 <20160630012758.B2D89EBC15E@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160630012758.B2D89EBC15E@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [oss-security] Re: CVE Request: libgd: Invalid color index is
 not properly handled leading to denial of service (crash)

Hi,

On Wed, Jun 29, 2016 at 09:27:58PM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > There is currently PHP upstream bug which is still marked as private:
> > 
> > https://bugs.php.net/bug.php?id=72494
> > 
> > But the libgd project references the following set of commits to this
> > bug report:
> > 
> > https://github.com/libgd/libgd/compare/3fe0a71...6ff72ae
> > 
> > indicating that libgd does not properly handle invalid color index,
> > which could lead to a denial of service against applications using the
> > libgd library (in particular thus PHP).
> 
> > https://github.com/libgd/libgd/commit/1ccfe21e14c4d18336f9da8515cd17db88c3de61
> > gd_crop.c
> > gdImageCropThreshold
> > 
> > + if (color < 0 || (!gdImageTrueColor(im) && color >= gdImageColorsTotal(im))) {
> > + return NULL;
> > + }
> 
> > https://github.com/libgd/libgd/commit/6ff72ae40c7c20ece939afb362d98cc37f4a1c96
> > tests/gdimagecrop/php_bug_72494.c
> > 
> > im = gdImageCreate(50, 50);
> > gdImageCropThreshold(im, 1337, 0);
> > gdImageDestroy(im);
> 
> Use CVE-2016-6128.

Thanks for the CVE assignment. Just for the record, my above commit
range stated should have better been written as

https://github.com/libgd/libgd/compare/3fe0a7128bac5000fdcfab888bd2a75ec0c9447d...fd623025505e87bba7ec8555eeb72dae4fb0afd

including
https://github.com/libgd/libgd/commit/a0f9f8f7bd0d3a6c6afd6d180b8e75d93aadddfa

Regards,
Salvatore
