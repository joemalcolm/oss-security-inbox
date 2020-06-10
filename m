X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1252" "Wednesday" "10" "June" "2020" "19:55:44" "+0200" "Monsieur Francis Perron" "francisp@google.com" "<20200610175544.GA201093@google.com>" "31" "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" "^Date:" nil nil "6" "2020061017:55:44" "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" (number mark "        francisp@goo Jun 10   31/1252  " thread-indent "\"Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768\"\n") "<20200610114427.GA1895802@kroah.com>" ("<CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>" "<20200610114427.GA1895802@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3714 invoked by uid 550); 10 Jun 2020 18:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15847 invoked from network); 10 Jun 2020 17:56:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vBRvpKObhSNvdxU6utGNzm83IrCHyCd1U2Kv0j9Qhdk=;
        b=Bzq7JYt7oa1SZUZnfxagipDFz6SSv2bypFR8ZL+jUcz4KUC6G51X+Yn+CTJ3fTFR5B
         aVWSPGzvbgzaEzM2flMgkGZMaXY5n2hHtAepMwOliQrgjH67ESX/4wT2023SFse4+Eoq
         MJjx83EKRz9n3gjzVMb5GzkhKaHdWS/IIRo12xg0VXoqQRORVhcE1iyS88JHxqzAW6pQ
         fCevZpJknCWE8NvjFmu8rJO5DSGfoShaZcN1sU1WiduPrBe+A96bcbksBRSrJXh+tzv8
         pnSViAO9CrLzZWQK9fIOzNFWZS6Y7JXrpIeLE8wIBaETy0X+D6XXdRxRpr7U7E2qclYv
         TVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vBRvpKObhSNvdxU6utGNzm83IrCHyCd1U2Kv0j9Qhdk=;
        b=DIft39foPKfK6tCBAq79dTlxlBFRjVDg9WVjUvaY/JbNkdGi+JTEFTOZ3CR1zYXZSX
         abcQGjEL6bMcV7B0AYqnDR05G7ioNJopZLSq94HqQyTIHQzionICK0PYRVQXQIFJoR1U
         ry9pk+zc6Tzs3U8DEz1RkA6+dEIbeaYqQaO9oUQ2TaCUYwnqeuF0axNvBFA2IEZ7Oceh
         NWlPM4PMyGZmNuXoejymH5UOTWn7Jzwi/ZXvEXQBWS+Gxly2xkeBi4XqeYGXvRDCAkVk
         EQVk2t2uKSHxCIHK8aWjk8mWTJRy2DRsWVuJxFsxsRYWv7Iy6rjHKlHQnARgR+h6J8Wd
         hQhA==
X-Gm-Message-State: AOAM531AhHHolK6B+ifkGwYHRbHatndkImi9W0L2VjN2g3+r6ALNbnws
	T3d2FfCsEopgSeKo7x2UFknW4ExjjWs=
X-Google-Smtp-Source: ABdhPJxDHWkZ+b0VTVZb8UeCvOOzihMG69ydPAgShjrm08tDGApjhNPD4pGKN+TaPs8TABdSSgUQCg==
X-Received: by 2002:a5d:66c3:: with SMTP id k3mr4956839wrw.401.1591811747981;
        Wed, 10 Jun 2020 10:55:47 -0700 (PDT)
Message-ID: <20200610175544.GA201093@google.com>
References: <CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>
 <20200610114427.GA1895802@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200610114427.GA1895802@kroah.com>
Date: Wed, 10 Jun 2020 19:55:44 +0200
From: Monsieur Francis Perron <francisp@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Multiple SSBD related flaws
 CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768
To: oss-security@lists.openwall.com

On Wed, Jun 10, 2020 at 01:44:27PM +0200, Greg KH wrote:
> On Wed, Jun 10, 2020 at 09:21:03PM +1000, Wade Mealing wrote:
> > A number of flaws were discussed in the registers article this morning
> > ( https://www.theregister.com/2020/06/09/linux_kernel_bugs_spectre )
> > which have been submitted for inclusion upstream already.
> > 
> > Listed below are the CVE's that Red Hat has assigned.  As far as I can
> > tell there are no existing  CVE assignments for these flaws. I have
> > not done adequate investigation to correctly identify affected
> > versions of the kernel, however this is a flaw in the fix for
> > CVE-2018-3639, affected systems would likely be affected by the flaws
> > listed below if they required the fix.
> 
> Did you ask the authors of the patches?  I think they might have already
> assigned CVEs from Google's pool, based on previous interactions with
> those developers...

We (Google) did not assign CVEs to this work Anthony did.


Wade -
  Did you already request MITRE to look into it? If not, let me know and
we can see to it with the kernel folks. You are correct that fixing an
incomplete fix is within the scope of getting new numbers.


Thank you,

-- 
Francis Perron
  Vulnerability Coordination @ Google inc.
