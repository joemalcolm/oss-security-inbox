X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1084" "Thursday" "31" "January" "2019" "21:32:26" "+0100" "=?UTF-8?B?SnVhbiBQYWJsbyBTYW50b3MgUm9kcsOtZ3Vleg==?=" "juanpablo.santos@gmail.com" "<CAMufup4hyhhpgfsiEcmKY7u_vSueB=1WTK5NCShaep-wXP5pOQ@mail.gmail.com>" "41" "Re: [oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on Apache JSPWiki" nil nil nil "1" "2019013120:32:26" "[oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on Apache JSPWiki" (number mark "U       juanpablo.sa Jan 31   41/1084  " thread-indent "\"Re: [oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site scripting vulnerability on Apache JSPWiki\"\n") "<20190131083943.lnx3lwhhu3h5suxh@tunkki.bugs.fi>" ("<CAMufup6pAEfJQv4MvELhYmcLigG-hKKoVO=At+Udh3ao4ZZkAg@mail.gmail.com>" "<20190131083943.lnx3lwhhu3h5suxh@tunkki.bugs.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30065 invoked by uid 550); 1 Feb 2019 08:23:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11495 invoked from network); 31 Jan 2019 20:32:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DaWLnqJkadVAgAhs0IuZxYXx2aIszT/D58LieKt19cQ=;
        b=AShebK8HZ1gxKJLTAW2ZZe4/izmC98xP2Xy7RBN7v8IBHmbd5puHfXbL3Xl1YplQtt
         pis0GtFsOM2SkRaiWq1asABpg0zutMhRYXKGDu418DzSgVcBgjS3DFtCrE/5JXdxZPkN
         /p/0/V5L+w3GxEZWJhuzql5ZBzu2lb4Dbo2Ur1pxM/95yRh2bFSvRXs3NRlqR5Vpgn1r
         uLzTPS+mvQbpNbe7SMC40cjjmTNNVGbDd71Yc5u594x8FDDEYxbkAM+c6+DpcKvxN4wK
         ub6xaHVYG6G9dzXJcAxg05Fmaa+JcIn6ac+sCS6Rw5tNlwLB3wHLxpVAqfQRqInFnupH
         tsMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DaWLnqJkadVAgAhs0IuZxYXx2aIszT/D58LieKt19cQ=;
        b=YAj/1LbLYFzsNQjNvXbUGn584qoTNQT5bMRI3dJzkJeOUH9yNpVqCIG/liCtHAQRo7
         Q/eJfqdvC0su74O0Gjww1YKqFDtVUX9ZmgoChNtJ3NEr4ETFBGamnNgcWmGfibVAuEW0
         AI5lDlLC0Gejj98Q28B+VeHqshAgwbRJX3LpmDT3Szeg8J4ftb47pREfuCm3asFaYrp5
         eN097kscZ2BPWq838rFT/eSix6M4fqhRAm1s6nauSTu//Dy5yhTAeFM+Cii/m79JXGiI
         tBeYZHA1+JmMpo2vdpyzDYIV1nMchNdxlPo7yLyvxaBk9Suor0o993rdcXza5mmz6Pi/
         wQhg==
X-Gm-Message-State: AHQUAubnsGeOg5jNJ8VeAlqVLi0Tmsmop9vEmfznpTsojkcGuaKaOvcF
	OEAX8GZ9BJCdUv2vbLZLr+oGdLeRRwhKbUb27sR/AKPB
X-Google-Smtp-Source: AHgI3Ia+8DVqqeEQMTfx9nf9w+CH3K0vafbs0Kf88E9BFYvuWNXdGVnfpGay51Ndu4qFjRnOf8wNVj2ZgaGrR+w2LcA=
X-Received: by 2002:a24:8604:: with SMTP id u4mr6949176itd.44.1548966754381;
 Thu, 31 Jan 2019 12:32:34 -0800 (PST)
MIME-Version: 1.0
References: <CAMufup6pAEfJQv4MvELhYmcLigG-hKKoVO=At+Udh3ao4ZZkAg@mail.gmail.com>
 <20190131083943.lnx3lwhhu3h5suxh@tunkki.bugs.fi>
In-Reply-To: <20190131083943.lnx3lwhhu3h5suxh@tunkki.bugs.fi>
From: =?UTF-8?Q?Juan_Pablo_Santos_Rodr=C3=ADguez?= <juanpablo.santos@gmail.com>
Date: Thu, 31 Jan 2019 21:32:26 +0100
Message-ID: <CAMufup4hyhhpgfsiEcmKY7u_vSueB=1WTK5NCShaep-wXP5pOQ@mail.gmail.com>
To: Henri Salo <henri@nerv.fi>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000029f5a40580c6ed70"
Subject: Re: [oss-security] [CVE-2018-20242] Apache JSPWiki Cross-site
 scripting vulnerability on Apache JSPWiki

--00000000000029f5a40580c6ed70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Henri,

the vulnerability announcement can be seen here
https://lists.apache.org/thread.html/8ee4644432c0a433c5c514a57d940cf6dcb0a0=
094acd97b36290f0b4@%3Cuser.jspwiki.apache.org%3E
We've also documented it at
https://jspwiki-wiki.apache.org/Wiki.jsp?page=3DCVE-2018-20242

Please do let me know if something else is needed.


best regards,
juan pablo

On Thu, Jan 31, 2019 at 9:39 AM Henri Salo <henri@nerv.fi> wrote:

> On Wed, Jan 30, 2019 at 09:01:43PM +0100, Juan Pablo Santos Rodr=C3=ADguez
> wrote:
> > Versions Affected: Apache JSPWiki up to 2.10.5
> >
> > Description:
> > A carefully crafted URL could trigger an XSS vulnerability on Apache
> > JSPWiki, which could lead to session hijacking.
> >
> > Mitigation:
> > Apache JSPWiki users should upgrade to 2.11.0.M1 or later.
> >
> > Credit:
> > This issue was discovered by Jamie Parfet.
>
> Do you have any Apache reference URLs for this issue?
>
> --
> Henri Salo
>

--00000000000029f5a40580c6ed70--
