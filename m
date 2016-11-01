X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2772" "Tuesday" "1" "November" "2016" "10:58:28" "+0200" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC4-QChSbpYPR8cDCdjOyGpiseTv0VYwSra2+ttkiBNm=A@mail.gmail.com>" "67" "[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "11" "2016110108:58:28" "[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       kaplanlior@g Nov  1   67/2772  " thread-indent "\"[oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12\"\n") "<20161018163436.85A436C4EC1@smtpvmsrv1.mitre.org>" ("<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>" "<20161018163436.85A436C4EC1@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22494 invoked by uid 550); 1 Nov 2016 08:58:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22461 invoked from network); 1 Nov 2016 08:58:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Owb1dKSZfwxL2vfBy0dCFHlO4jvmmDLFNUCJxZkYHLw=;
        b=dheu/2ftMeEhjRURqZAoWkVcgf6wXPnszNwfDlMLhbHMJfCp23iwWx8voH2LpHjqQQ
         wQfjlJENAxbUtz4Pxd7R3shS+C2AG2GYW8XU1V4XWD4u6j9HfkhPKDVo199W3omjXlsm
         5HDFGAXWgdcfLAgMupg6HJF4Pi7YcJ9Iw09DAOMRHhYviJqwRLItPFabVudJSFjbDdc+
         qV7fqdVOvn6M7H03OjjsYNAuTGYFLIa0LfkUinLkWQQEipCYjlq6pveLAcKpcM+GL/LN
         mBHM86eC5zC9qmUG65Un8tRHg633HCZwa+n6V8sVcIFdBtOywo0UFlDByyct0XUKgaF+
         61SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Owb1dKSZfwxL2vfBy0dCFHlO4jvmmDLFNUCJxZkYHLw=;
        b=HB13se5npoRFpem5/fUWLkhrcvk64TJv7pIZptURbydCalpj+kw17evn5lrM+YGMIa
         A3OYHGd0mkr6zQ9ruC9VtQFwGE0/8u9RH7Rva+DnltURvnpkSOeA13KgYVoBuIkpPCkB
         GSoX6ALHgSK/Le9TXfmNO3XXn6VDGXhYutKxz/1XbuE8R3SdsXBnP2H9fNl1chQbQ9uz
         X9pryoRIeFgrdLd8EZOvJhKL7PFfvDLC6FPBf6it0PztBzUp5IrbySpjI6IaYshXDbp3
         oSiKxNQuPAU74PWxgeM2B9glv3CL1PR2fzBOmPeeAB+FWNUhOLIEED5SLffcvBONJojY
         q1nQ==
X-Gm-Message-State: ABUngvcizsEW8G65ajz+/6h7TOGKw6oHkBphSRiY0Z4/fdKOKCxdG1zldrX/oQ2Wv6gOVuImx594cTZ+iaYA7g==
X-Received: by 10.31.151.13 with SMTP id z13mr8453882vkd.41.1477990708832;
 Tue, 01 Nov 2016 01:58:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161018163436.85A436C4EC1@smtpvmsrv1.mitre.org>
References: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
 <20161018163436.85A436C4EC1@smtpvmsrv1.mitre.org>
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Tue, 1 Nov 2016 10:58:28 +0200
Message-ID: <CAEsznC4-QChSbpYPR8cDCdjOyGpiseTv0VYwSra2+ttkiBNm=A@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1140fd582e6e020540398766
Subject: [oss-security] Re: CVE assignment for PHP 5.6.27 and 7.0.12

--001a1140fd582e6e020540398766
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 18, 2016 at 7:34 PM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > Please assign a CVE for the following issue:
> >
> > Bug #73147    Use After Free in unserialize()
> > https://bugs.php.net/bug.php?id=73147
> > http://git.php.net/?p=php-src.git;a=commit;h=
> 0e6fe3a4c96be2d3e88389a5776f878021b4c59f
>
> Can you clarify what should be the scope of this CVE?
> zend_unset_property doesn't exist at all in PHP 7.0.11. The
> 0e6fe3a4c96be2d3e88389a5776f878021b4c59f commit adds
> zend_unset_property for PHP 7.0.12, and arranges for
> zend_unset_property to be called only from
> "ZEND_METHOD(CURLFile, __wakeup)" in ext/curl/curl_file.c.
>
> We're not sure whether that affects anything outside of the CURLFile
> implementation. However, 73147 discusses other concerns such as "The
> similar bug can be also triggered via Exception::__toString with
> DateInterval::__wakeup" and "The problem is that every __wakeup that
> modifies any property would produce the same problem."
>
> There seems to be a related code change between 7.0.11 and 7.0.12 that
> arranges for additional calls to zend_unset_property:
>
>   http://git.php.net/?p=php-src.git;a=blobdiff;f=Zend/zend_exceptions.c;h=
> f21968733581a3cb672d039bec16ce6f17a93db9;hp=95d18f45fbea8808c00975b5df4619
> d5d6745ab0;hb=689a9b8def07875641b3132a82c701fb7acb676c;hpb=
> 4165d976066129000d947ffa3be73f91e9867635
>
> So, some of the options include:
>
> 1. 0e6fe3a4c96be2d3e88389a5776f878021b4c59f is a complete security
> patch that fixes everything discussed in 73147, including the "other
> concerns" mentioned above.
>
> 2. 0e6fe3a4c96be2d3e88389a5776f878021b4c59f fixes only the CURLFile
> implementation. The "other concerns" mentioned above are
> vulnerabilities that still exist in 7.0.12.
>
> 3. The combination of 0e6fe3a4c96be2d3e88389a5776f878021b4c59f and the
> above Zend/zend_exceptions.c diff is a complete security patch that
> fixes everything discussed in 73147, including the "other concerns"
> mentioned above. There only needs to be one CVE ID associated with
> this complete security patch.
>
> 4. The combination of 0e6fe3a4c96be2d3e88389a5776f878021b4c59f and the
> above Zend/zend_exceptions.c diff is a complete security patch that
> fixes everything discussed in 73147, including the "other concerns"
> mentioned above. There should be one CVE ID for the security fix to
> the CURLFile implementation, and a separate CVE ID for the security
> fix found in Zend/zend_exceptions.c.
>
> Which of the above (1 through 4) is correct and/or preferred?
>

I've asked Stas (who fixed the issue) and #2 is the current situation.

Kaplan

--001a1140fd582e6e020540398766--
