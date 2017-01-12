X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["569" "Thursday" "12" "January" "2017" "11:15:44" "+0100" "Casper Thomsen" "ct@clearhaus.com" "<CAHzNyaDjaD5kp0Xe5CSUNGoPbiRg1r=wphfBL6n1=ow00CTV5A@mail.gmail.com>" "17" "Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" "^Date:" nil nil "1" "2017011210:15:44" "[oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" (number mark "        ct@clearhaus Jan 12   17/569   " thread-indent "\"Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)\"\n") "<D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>" ("<D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29775 invoked by uid 550); 12 Jan 2017 19:01:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7815 invoked from network); 12 Jan 2017 10:15:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=clearhaus.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=N3J01lieC/ByZLvWAStMJOLwa4WB7fmhdFOi6KYobxU=;
        b=H06m8ZcKMdv2kHNNvElmjqydX57QLP1EVcFTqxNZQYzGp7Rm92fxxV9o519KjIOITM
         7T2umUqnQEDzMSqO8H4s7B1RBSUt3VfWyYacwGfl9oZ+pBrV2N2oFSJ41uLnmQvzzacg
         zPKhMVJf1ddQJZttugA4fb6UW4r8XCeLwbeIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=N3J01lieC/ByZLvWAStMJOLwa4WB7fmhdFOi6KYobxU=;
        b=NvKOIJMIVrQ/Zze5L0cNzBT1Xmf8zu66eljBjoRBPetvBXslDFovoYpCfU+4QcrpDe
         1HVQLbSiqx+syFw3snhlnVfZvj7yr2JX73A/5OEKpnczJxHmJRDN27sv4H0GIqTTBunR
         XOaTMufRtYPzOEXTxdAMWyYRhOAy1lviFk9qcpEdoUof6FC5jWGMdsfpDx5oYB1DK8kI
         56dtJzy6yN1lf/Gbg1HOKPd+1vpusyvvPJilDBZCiN2zKLyPBmF6n0Jl49kS6USP5TxE
         5kLGy3gfWFkYHWppQVcqxA6Ib+3wQyCPKel2sZyhSU5btNMsvEAOgXuXmMQ7wWyQwlDy
         UE8Q==
X-Gm-Message-State: AIkVDXJr5TZE4afceDVntqaNbq3Fk6ZF0KS3FFBAiZPPHbNpoO9FIyWBXZSFl1gdF6tMqxyWFt0l0i5zSR0CssHd
X-Received: by 10.157.54.152 with SMTP id h24mr6206523otc.213.1484216145419;
 Thu, 12 Jan 2017 02:15:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>
References: <D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>
Message-ID: <CAHzNyaDjaD5kp0Xe5CSUNGoPbiRg1r=wphfBL6n1=ow00CTV5A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Jan 2017 11:15:44 +0100
From: Casper Thomsen <ct@clearhaus.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key
 recovery (OpenSSL, LibreSSL, BoringSSL)
To: oss-security@lists.openwall.com

On Tue, Jan 10, 2017 at 4:50 PM, Cesar Pereida Garcia
<cesar.pereidagarcia@tut.fi> wrote:
> Vendor: OpenSSL, LibreSSL, BoringSSL

Noticed on https://nacl.cr.yp.to/features.html:

> Support for standard primitives
> Whenever NaCl includes (...) a newly proposed signature system, etc., it also includes (...) [TO DO:] an older standard signature system (e.g., ECDSA using the NIST P-256 elliptic curve)

I couldn't find traces of ECDSA in NaCl and the "[TO DO]" suggest that
there are in fact none.

Anyone able to reject the "non-findings"?

Kindly,
-- 
Casper Thomsen
