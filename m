Received: (qmail 21815 invoked by uid 550); 28 Sep 2023 08:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21794 invoked from network); 28 Sep 2023 08:29:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695889788; x=1696494588; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BKALrIucVBXi5KI8WthNPaOs4TS0SynpJ1EEyHYuyB0=;
        b=CoHDqs41h2sTRhIe94KXgPZ27beefnqrBwTYETzEvUHMswdXHIE4uzjWq06G3q1Rki
         GcLE1MwrTYQH11CRAwmGqerIdaPGlJUZbN9s1Iza+QDxPgoI58UyhLKYrrx54zELTfa0
         p1c5RQQeR9PXxF2fChE4So94k6nnCabDIYNSxwds9+B+az35E6kdo64ufMCzMgLQeR3+
         3BwCYApZ9o/f9biuAfcy9ov3f9j4VFCS49r4q/T4s02ei/JAuyYHX1w24VQvgbOE62O3
         mM1k3SGm3CkZpXlPfoq3/Up0sI0J9FgclRaHh+9asmkl21d5vZvLF4UINjPmh1kXz87j
         6Z2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695889788; x=1696494588;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BKALrIucVBXi5KI8WthNPaOs4TS0SynpJ1EEyHYuyB0=;
        b=tPtPs4z0LSIh9PFfgUCYbw3vYSrTw8j2UTMnOXDfZvZUTFrJMqB/Wlo1ZCrOZhEf3Z
         ds6PRl1ImXWSYFcv4/uy/pKMsKhzMPp0egT8+F44tdXV42C1eRWbupsZW/uEnjYIphpm
         D8kMbDICuY36fWr53V0VaYMW8npPJriF2dshTxOWlRKdMmf5oBr6l60UBHoITT06SvXy
         onYIhzCLlzyh0wHB/9+I09r1AJd6rYrmsJZKkvM6ciOJY6pF0Dp1vmgtJ0bDQocC2Ms8
         AWxhS21aKSPL9vbaC1LYxEXKBTKneFn/kGdlQwunZqxmWbgkPmD1MqkoQq+6kmXiiVOE
         dCqw==
X-Gm-Message-State: AOJu0Yyl5dhT3GeNexgiKF8cMUrMhkaZd18WlmWfJPcjOz+RkZJnb2HI
	ZoV0WJRY7Ap+TOL+B2jGStABe1FZ0/HtGw==
X-Google-Smtp-Source: AGHT+IEXmbSMLitWM+WQ8LS0mR6f7I9qQnlEdpw6IyQNbWEdTCyMEekcVFCvvXu6wl2Y8dMDtecXWA==
X-Received: by 2002:a17:906:f15:b0:9b2:b85d:cec0 with SMTP id z21-20020a1709060f1500b009b2b85dcec0mr532537eji.60.1695889787618;
        Thu, 28 Sep 2023 01:29:47 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 28 Sep 2023 10:29:45 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZRU5efsKAQYM874Z@eldamar.lan>
References: <20230921205250.GA13106@openwall.com>
 <ZRKn0bQVe4MBMYiC@eldamar.lan>
 <20230926153454.GA12511@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926153454.GA12511@openwall.com>
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

Hi,

On Tue, Sep 26, 2023 at 05:34:54PM +0200, Solar Designer wrote:
> Hi,
> 
> It was great to hear from Vincent that the newer libwebp changes are
> just "Clean-ups, no security issues there."  Yet I think it would also
> be great if someone in here double-checks that.
> 
> Regarding the assert failure detected by oss-fuzz, "A release build
> would not be negatively affected."  libwebp does specify -DNDEBUG by
> default in:
> 
> $ fgrep -rl DNDEBUG .
> ./Makefile.vc
> ./xcframeworkbuild.sh
> ./iosbuild.sh
> ./configure.ac
> ./makefile.unix
> 
> and there's also cmake support, but apparently cmake sets -DNDEBUG for
> release builds by default.  So at least this statement does appear to be
> true for libwebp itself as built via the above means.
> 
> However, there's also Gradle support, and the gradle* files do not
> mention NDEBUG.
> 
> Also, I wonder if there are other projects building code from libwebp
> via different build environments.
> 
> So there might be (a small minority of) uses of libwebp where the assert
> exists in a release build of some project.
> 
> On Tue, Sep 26, 2023 at 11:43:45AM +0200, Salvatore Bonaccorso wrote:
> > Maybe related to this question in todays CVEs updates there appeared 
> > 
> > https://www.cve.org/CVERecord?id=CVE-2023-5129
> > 
> > vs.
> > 
> > https://www.cve.org/CVERecord?id=CVE-2023-4863
> > 
> > FWIW, I contacted the assigning CNAs so this can be clarified (e.g. if
> > one of those needs to be rejected).
> 
> CVE-2023-5129 description looks like what the original's should have been:
> 
> > Assigner: Google LLC
> > Published: 2023-09-25Updated: 2023-09-25
> > 
> > With a specially crafted WebP lossless file, libwebp may write data out
> > of bounds to the heap. The ReadHuffmanCodes() function allocates the
> > HuffmanCode buffer with a size that comes from an array of precomputed
> > sizes: kTableSize. The color_cache_bits value defines which size to use.
> > The kTableSize array only takes into account sizes for 8-bit first-level
> > table lookups but not second-level table lookups. libwebp allows codes
> > that are up to 15-bit (MAX_ALLOWED_CODE_LENGTH). When
> > BuildHuffmanTable() attempts to fill the second-level tables it may
> > write data out-of-bounds. The OOB write to the undersized array happens
> > in ReplicateValue.
> > 
> > Vendor
> > libwebp
> > 
> > Product
> > libwebp
> > 
> > Versions
> > affected from 0.5.0 before 1.3.2
> > 
> > Credits
> > 
> >     Apple Security Engineering and Architecture (SEAR) finder
> >     The Citizen Lab at The University of Toronto's Munk School finder
> > 
> > References
> > 
> >     https://chromium.googlesource.com/webm/libwebp/+/902bc9190331343b2017211debcec8d2ab87e17a
> >     https://chromium.googlesource.com/webm/libwebp/+/2af26267cdfcb63a88e5c74a85927a12d6ca1d76

An update on this: CVE-2023-5129 has now been rejected.

> Rejected Reason: This CVE ID has been rejected or withdrawn by its CVE
> Numbering Authority. Duplicate of CVE-2023-4863. 

Regards,
Salvatore
