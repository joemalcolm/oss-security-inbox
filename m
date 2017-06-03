X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["324" "Saturday" "3" "June" "2017" "08:39:19" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496493559.21640.7.camel@gmail.com>" "6" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Date:" nil nil "6" "2017060312:39:19" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ Jun  3    6/324   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<1496493018.21640.5.camel@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>" "<CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>" "<CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>" "<20170530165015.GA4884@openwall.com>" "<06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>" "<1496493018.21640.5.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3542 invoked by uid 550); 3 Jun 2017 12:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3506 invoked from network); 3 Jun 2017 12:39:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=PZz0DY5MLnn841TMgoSqKcZqK1p45Y9/aQPT1CLH90c=;
        b=rCaU1vBtFbkKrZtG7KLXEvZli7qcNO+y8WcAgMLU5DoXsRg4uGwpDUlsL4DhRDJn3J
         Y4s8kJ11nc5X98Gq1G5pWZuxgXuxLP0E5z1aAAS63Sp5Bltajx0bKNbw5jXLF5Jext5r
         l5fU4F8VMEIIrKskM6k47v0qdQsyy//OIqykXw4AL4m62C57vVzqTe6V18uO+5B0i+Vp
         AP7wI8+MiFVBnvZcXRs1YANHMS3V1wIZwEepGIaKh6v8ECBUR2c5x3k7zTrfMgALrblm
         O2UbqR8PuuMecbTn9hDcs3VozhAsV4lT9hfqVb+mU1e2u3M3yZnAHk+a9wcDe6GdlN+u
         i56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PZz0DY5MLnn841TMgoSqKcZqK1p45Y9/aQPT1CLH90c=;
        b=CGjJecKwT2UAMqcdqd2K0kEvgXFSmbIc2j6pHT3p6RrUXfnljw2A5i6pTmrSfvdATq
         xlaWj77ptAr2BPwrAKqzhWRY3w6W0vunnB3tXepeo3qMWRyAy/Qnl7GdZgtudmW/Dd4n
         GhnJ36UTyXZKxT4LP20jvP2kuhsfS4cECF2PPeHDAZx045vtCe8v/CkFg4hE1EJfoSmz
         lCnzFcgDjEYp0UBhwJzmOQR8Go6bWE/PVKjEn9PWwho5fnz4zGIDKZNr50c2bsPwbzvw
         ZZSNkAS3Zp/nOBzfYnG9laXIaUQF9DZrCNr8Nw++Zwmzj8p6M7ClnYd2h+IYViH2cCx4
         /ngA==
X-Gm-Message-State: AKS2vOw7MGQXFaRbOeakMpvE5Ug4qbCPCDuY2ykVWuaq9DwmtDJS3Zbg
	tSCTg8edX4dUDUaTBKa5Aw==
X-Received: by 10.107.159.196 with SMTP id i187mr1618728ioe.143.1496493561191;
        Sat, 03 Jun 2017 05:39:21 -0700 (PDT)
Message-ID: <1496493559.21640.7.camel@gmail.com>
In-Reply-To: <1496493018.21640.5.camel@gmail.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <d522fd07-7916-48a4-270c-933ffacddb98@redhat.com>
	 <CA+DvKQ+TfTcK79YgeMZorvpG38HP8zAeB=gioL6xUVDPyn7Ghg@mail.gmail.com>
	 <CANO=Ty2tYv6KAjgrN3fL_YisPSMHQqpSWagEwA+T2Rz15-wGDQ@mail.gmail.com>
	 <20170530165015.GA4884@openwall.com>
	 <06202a69-0da3-68fa-a2b3-6a10c1599014@redhat.com>
	 <1496493018.21640.5.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Sat, 03 Jun 2017 08:39:19 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

> The lockdown patches would be useful if they were complete

In the context of filling holes in containment of root based on
namespaces / chroots / MAC, where they can already be useful today. Not
as something that's independently useful, especially when it's known to
not be complete without other isolation primitives...
