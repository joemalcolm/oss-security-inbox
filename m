X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2738" "Saturday" "15" "June" "2019" "11:49:03" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "58" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061515:49:03" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "U       alex.gaynor@ Jun 15   58/2738  " thread-indent "\"[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29924 invoked by uid 550); 15 Jun 2019 15:49:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29906 invoked from network); 15 Jun 2019 15:49:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+iowhhL/YU4svTAtqViLcVBDl00YBiDpnyioeO9I440=;
        b=c3DSENwZ74DrN7BPexRMDweDDHQJvVipfSPcLaoBZ96H+ASBbc6bnVkhPapm61WTk8
         AMuKvYNYyU2w3dz/vQMdOlyM2ViviwV7u5UP14Bf8S13Rk/cbvTf7wYW0KGxOnsWu+2Y
         RrI6ZURIIhVuiJvAfv5MN5Dixel0RVBkR9lkusVHhuY3a8D4LeA11Polk52wXtTOHfDm
         CKmgFZCqg7RVjb16xYwdJHmJmqckPYQnmtg2k6Eosjz7g051fGYcsNaTNh052HE14ChM
         SdMsRAJWbJWK077hupLKlDHF4Lcr4FhN6PK3481AL+t82so3RX3b9Sr6BPBTKqAgklh2
         Gbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+iowhhL/YU4svTAtqViLcVBDl00YBiDpnyioeO9I440=;
        b=ayz07OICl1zVXVKGaR9f6rMHJr7qaR95gfRDnZxKsES6/Jq3z9/SW5gD0Q63Ql8cpg
         t4Jka/CIFDjtZBgEPGM0h1HfuFfZA6h8ntd2m+FQnTr0Nj5pay7VwZOiK3gNLE+pOj1I
         jMMequG22CRSwPc/ESrcOFO3Q6b+/WLdgMuyF4jr2njJjYU4WsgyYdqdMfXUxQMAT1Z9
         z7dnFUhuYibZamNQ7b+gXOUQGYMFajtsIvexXyoJGdPsaN8nwVUyM5/40vobLaW56s6D
         39osEO6SEenpEFXH4za6EGRfmPXeS//X9dsS5XHIMsQ4kPnRI3q5Fk4TYKq5vy0A4tIU
         k7oA==
X-Gm-Message-State: APjAAAVWyxQLF7VqwkPAaUJ6bLEZc48MYcom/EaOR0+7bCeDlLtV3DUN
	P2nXOtk93E8TO3npOE8s2jH0j9EtYD0yHanmoZH+xkQl+8A=
X-Google-Smtp-Source: APXvYqzZlRmvZSW0p8aFf7lSwU1e7oI/euXtFxwrVCkfVMl5zCZ0sPbXiGDz54yEz4kFf77XBeT++rXS8k+mCGMBDmQ=
X-Received: by 2002:aca:fc8d:: with SMTP id a135mr5387295oii.145.1560613755512;
 Sat, 15 Jun 2019 08:49:15 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000876c6d058b5eb474"
Date: Sat, 15 Jun 2019 11:49:03 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

--000000000000876c6d058b5eb474
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

OSS-Fuzz is Google's project to provide continious large-scale fuzzing.
Since it launched in 2016, it's found just shy of 3000 things it counts as
security bugs [0][1]. I'm not a developer of OSS-Fuzz (at Google), but I've
helped several projects integrate with it.

You can see that it's had some amazing success across a variety of projects
-- I've written previously to this list about the things I thought made it
particularly effective working with ImageMagick and GraphicsMagick [2].

Today I'd like to highlight what I see as a tremendous issue: very few of
these security bugs ever has a CVE issued for it. This is probably due to a
few factors, a) the relative difficulty of obtaining a CVE, b) the lack of
a human reporter who is interested in obtaining one for "credit" purposes,
c) the sheer number of bugs that we're talking about.

CVEs are not important for their own sake. The true value is in all of the
downstream processing that uses them as input: the Linux distributions that
use them to figure out what fixes to backport, the docker security scanners
that look for vulnerable code on the system, the corporate
threat-intelligence feeds, etc.

A test of a random ImageMagick vulnerability against Ubuntu Xenial shows
that it, indeed, continues to reproduce.

This is in addition to the >100 security bugs OSS-Fuzz found and publicly
disclosed due to hitting their disclosure deadline, and which still have
not been fixed [3].

I haven't analyzed any of these vulnerabilities for exploitability, and I
doubt anyone else has either.

I do not have a solution to this problem. I wanted to raise awareness of
it, in the hope that it would start a discussion which might come to a
solution.

Alex


[0]: Security bug is defined as roughly: heap/stack/global buffer overflow,
heap use after free, heap double free, invalid free, stack use after scope,
invalid typecast, other non-null segfaults, and a few other things.
[1]:
https://bugs.chromium.org/p/oss-fuzz/issues/list?can=1&q=status%3AVerified+Type%3ABug-Security&colspec=ID+Type+Component+Status+Library+Reported+Owner+Summary+Modified&sort=-modified&groupby=&mode=grid&y=Proj&x=Security_Severity&cells=counts&nobtn=Update
[2]:
https://alexgaynor.net/2019/feb/05/notes-fuzzing-imagemagick-graphicsmagick/
[3]:
https://bugs.chromium.org/p/oss-fuzz/issues/list?can=1&q=Type%3DBug-Security+status%3ANew+label%3ADeadline-exceeded&colspec=ID+Type+Component+Status+Library+Reported+Summary+Modified&sort=-modified&groupby=&mode=grid&y=Proj&x=--&cells=ids&nobtn=Update


-- 
All that is necessary for evil to succeed is for good people to do nothing.

--000000000000876c6d058b5eb474--
