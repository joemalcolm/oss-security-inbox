X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Wednesday" "25" "January" "2017" "16:48:04" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8n4BiR+o8hJOZWCFNcP+-2CPFqkWRm=z2760_vKgt0Eog@mail.gmail.com>" "15" "Re: [oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)" "^Date:" nil nil "1" "2017012521:48:04" "[oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)" (number mark "        noloader@gma Jan 25   15/568   " thread-indent "\"Re: [oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)\"\n") "<20170125211427.GA1002@notk.org>" ("<20170124134604.0b4e5ba1@pc1>" "<20170125211427.GA1002@notk.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20053 invoked by uid 550); 25 Jan 2017 22:19:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9326 invoked from network); 25 Jan 2017 21:48:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=2u8e6EhVRIjmQFktbFwgtEVqmT3aRuSP/9F2G1uJGa0=;
        b=Il8AWI6wPyum/l1vmtIPB8kVbncS5wxwUqYXWSaTLDqkjtPtRpQuSizE264drpV3sa
         bC7auRs5Z4nDnjuR2B4OsO90IwvuwJ+TcrDLXHNJ/xSwvBQBIpBuJSAhvXOGPoPm3EvL
         N9FtthEs9joakS3KlP6/MgOZ9n2Ax0PYbxp7HrYACCLXNSuHi/52ixQxvQgRV4wJQeWp
         KJ6TXnTwtysig9HhnmzVA5GcCqDrCp4otSmtcFKT7K/Bjd6op60RdoNGZkMGUpsF2qgQ
         BQvMQ2sMmFBUmXcQIdzUunbEWtuyR+4E/X3TDMtCLRtpkkYkq/5UDtK86UbH4a4Rq3Fc
         r/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to;
        bh=2u8e6EhVRIjmQFktbFwgtEVqmT3aRuSP/9F2G1uJGa0=;
        b=jqdtEJloX6ccdvG+2tgTLzOOBav2XKhy4Js1oLebmscI+ucPEcFBjUTTQGgAhE3tLP
         a1OKmmoe2g6qKPX2sL2F9FuME4T1O6yaAVv4uUgUlhddF2V4pYp+jflBmnPSS/jJ4JXk
         VNQ6aeE/7aWVr/pwTYObw55cxeBAuyBDkHmYO4ZMWxg1zZXJPWycN0vg+S0HJOY1gl+M
         M/hSbjqsWM7FrAOrWwwuduhYT63me7We8qyrd6hh/V2BdElZztp4botEBeDQMI4QUuL4
         U9hhYL5qrEvDuLT6nnCGFS+oZUkDAJCqGw17j6LsvmZeMw4WNtbp2+KRIuBbKgE/HuMi
         Kj2Q==
X-Gm-Message-State: AIkVDXLli5p2+0ErKbHQtsxh84gyTDnrQFrFONLDI3+7/fyh8YKdP0hZAgFAeVTUAHmRGBttuG6KZWuOM7ZXJw==
X-Received: by 10.36.123.145 with SMTP id q139mr82959itc.62.1485380885108;
 Wed, 25 Jan 2017 13:48:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170125211427.GA1002@notk.org>
References: <20170124134604.0b4e5ba1@pc1> <20170125211427.GA1002@notk.org>
Message-ID: <CAH8yC8n4BiR+o8hJOZWCFNcP+-2CPFqkWRm=z2760_vKgt0Eog@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Jan 2017 16:48:04 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Windows ports of Linux software bundling outdated
 libraries (Gajim / PyCurl)
To: oss-security@lists.openwall.com

> tl:dr; use Fedora or OpenSuse and their mingw-w64* packages to
> cross-compile and package from Linux; if you use Windows or OS X or
> anything else, use one of these in a VM.

Maven and Git are noteworthy here.

Maven was infamous for outdated packages. Confer, "The Vulnerability
Dataset of a Large Software Ecosystem",
http://bkarak.wizhut.com/www/pubs/pdfs/badgers2014.pdf.

Git took it to the next level and made it distributed. Instead of one
outdated repo like Maven, we now have hundreds or thousands of
outdated followers who don't pulll from master.

Jeff
