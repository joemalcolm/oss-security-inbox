Received: (qmail 9242 invoked by uid 550); 22 Mar 2026 21:06:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9217 invoked from network); 22 Mar 2026 21:06:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774213564; x=1774818364; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PhtpC9GdCt8R2UwH+8Qo8nZUIO37xRaml3MHTLHiNfM=;
        b=ZmfL41zJBd9vROGwd5lMEP0GTpGvu5i70Bx2YnV+yS0eB/OGs/1ApqMRk1Jnudb5Qs
         GA5g2HjGa4k6TKll9eY8TltWyEz+xXmGEu4VjhZHgVZORgeKbg9MSeLstnZxaotgEbEr
         RaRyoRziMT4mwcFbYmaZDVDRlAgRMoxixVoJ7s33PuaIV4IXM4v5eMQ35Lzdm27ZYKQa
         ZxxPh0vJiOxuBREKA8/Cg/PvrbppVsaV2GhBT8xvR5Yh7p5hSRaeUBDcYYmtjdqQoPkA
         H6Vx5IbDZNbbzcNDQAENLn3qh/czi2jHM+hlO5J+DbCUaz67MwD9HR5716i170WW8T9z
         13uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774213564; x=1774818364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PhtpC9GdCt8R2UwH+8Qo8nZUIO37xRaml3MHTLHiNfM=;
        b=NgU1/r1zIl6smW3PQmiypPmxHAX4sT886jUTvVDtvonDI2Mt3xZPWxkVs9I4RzoKbA
         BQM2r2pvYvvUIpbupPuZD0cJeIbT3r6N4ZOaJzeGzU4ewp+iJusW72yTHC0jqpqGatKs
         qJiNgRYDeRckNbWokRcNaA+zJWYVhKCh+IAGmnhsgGJIZiVSh9dsM7eNM9cPLgybwNFK
         FT0IWlMvsR5hOvd0L7EtSA9XVyWx9qI632BpuJOc1VH3g+kMDK9czqfzsCoSKcn1TLJC
         d8wm/OVWvuQ6tqTZ+8UuXwhFx40fgZJ761rBtiM48CQWRxtO7Wksx+f1y8jr12AR1IoO
         7COw==
X-Gm-Message-State: AOJu0YyXB0Adt/v3WhcBcP3r3Y1F+SJVSKpTldIoeuiL1zwcdImsQAup
	u4IdRb83KN/LQ8omlhhskhUrj+jE8e2sSOuaD3iKLCMwkLtbc8cum+/MrYcGJQ9P
X-Gm-Gg: ATEYQzwQdCm/DX1IvYWAUG+gHHA4CpJ6TEl6H6EL9Jrb97eUmHk+AUmNpyW5w0t7SIT
	qBokYXCdG01Q9o04gzHdG7k6/c5uN4o3uzoJhV+hrcINuwQkg1YnQItzP5av5O4zSyX+YahjPC2
	WjDXbMcTaE5iH0UKuF0OqhpInJ9UIL5zVe1DOxEF4/yWb81+f7fJC4cwUMVGv1pPvbAAiFGQUZb
	CQ/DR8CRnq9ruPZUV4dHtZH4MBCgruAa/Uo87hoQKwFp5AMI2240O5XMsGHlHrPVYlwbB4VHCmV
	m/eZG5w6htyPj4Sp65pHNvhqBtWpqz3NCJHXwO8i6Y1Z48f5Qo+awjmhh6HILHhqDUhltLsRrYm
	BmUDebBB2UDCUFAE4zKvAXKZeBJWTTLcoF+yaeBNGi6k7BCTd2IeqnDIwV8TJq0AyGhNhqDdp22
	NN4PJPR9K9AjGZDgNv9qy9PCNQDUJEoyfuC27L1W5RXXgcKS8OoOlZLBpPOQA=
X-Received: by 2002:a05:600c:5291:b0:485:4278:24fb with SMTP id 5b1f17b1804b1-486ff04d6afmr141635055e9.32.1774213563431;
        Sun, 22 Mar 2026 14:06:03 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 22 Mar 2026 22:06:00 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <acBZuNK969JYpCu-@eldamar.lan>
References: <f364e074ecc549033a42517c76c38366@cpansec.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f364e074ecc549033a42517c76c38366@cpansec.org>
Subject: Re: [oss-security] CVE-2006-10002: XML::Parser versions through 2.47
 for Perl could overflow the pre-allocated buffer size cause a heap
 corruption (double free or corruption) and crashes

Hi,

On Thu, Mar 19, 2026 at 08:06:17AM -0300, Timothy Legge wrote:
> ========================================================================
> CVE-2006-10002                                       CPAN Security Group
> ========================================================================
> 
>         CVE ID:  CVE-2006-10002
>   Distribution:  XML-Parser
>       Versions:  through 2.47
> 
>       MetaCPAN:  https://metacpan.org/dist/XML-Parser
>       VCS Repo:  http://github.com/toddr/XML-Parser
> 
> 
> XML::Parser versions through 2.47 for Perl could overflow the
> pre-allocated buffer size cause a heap corruption (double free or
> corruption) and crashes
> 
> Description
> -----------
> XML::Parser versions through 2.47 for Perl could overflow the
> pre-allocated buffer size cause a heap corruption (double free or
> corruption) and crashes.
> 
> A :utf8 PerlIO layer, parse_stream() in Expat.xs could overflow the XML
> input buffer because Perl's read() returns decoded characters while
> SvPV() gives back multi-byte UTF-8 bytes that can exceed the
> pre-allocated buffer size. This can cause heap corruption (double free
> or corruption) and crashes.
> 
> Problem types
> -------------
> - CWE-122 Heap-based Buffer Overflow
> - CWE-176 Improper Handling of Unicode Encoding
> 
> Workarounds
> -----------
> Apply the patch that has been publicly available since 2006-06-13.
> 
> 
> Solutions
> ---------
> Apply the patch that has been publicly available since 2006-06-13 or
> upgrade to version 2.48 or later when it is released.
> 
> 
> References
> ----------
> https://rt.cpan.org/Ticket/Display.html?id=19859
> https://github.com/cpan-authors/XML-Parser/issues/64
> https://github.com/cpan-authors/XML-Parser/commit/6b291f4d260fc124a6ec80382b87a918f372bc6b.patch
> 
> Timeline
> --------
> - 2006-06-13: Issue logged in Request Tracker for XML::Parser
> - 2006-08-11: Patch provided in Request Tracker for XML::Parser
> - 2019-09-24: Issue migrated to github issue tracker
> - 2019-09-24: Patch provided in github issue tracker
> - 2026-03-16: PR created and commit merged to git repo

An update on this one, it was later assessed that this was fixed
earlier already in 2.45, with
https://github.com/cpan-authors/XML-Parser/commit/56b0509dfc6b559cd7555ea81ee62e3622069255
(so the CVE record got update, thanks Timothy).

Regards,
Salvatore
