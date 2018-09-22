X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2858" "Friday" "21" "September" "2018" "21:12:15" "-0700" "Justin Ferguson" "justin@asac.co" "<CABejAM+hhgCipLzUycSV-RszcF6un45CncGFT9w0Yc69qNcbjQ@mail.gmail.com>" "53" "[oss-security] bounties" "^Cc:" nil nil "9" "2018092204:12:15" "[oss-security] bounties" (number mark "        justin@asac. Sep 21   53/2858  " thread-indent "\"[oss-security] bounties\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15579 invoked by uid 550); 25 Sep 2018 12:58:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25826 invoked from network); 22 Sep 2018 04:12:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asac-co.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=56p5NhdWwB2gcNXTzTNYNRpMfVJQwWtQVavVuiEAJcg=;
        b=NZJ6ZqplIfDj3E/267PazN8NEDfePKwtqw+MhtNvBGx9qpJC6TGKX+Q7FpGPGmcoQu
         QN8C0Lwyi9f29oPp5p7Esvw7vTwjx1A2SQUN7GNGK+0cFXzLerpIvX8Cf/59IJ3Pqhdr
         Xq/21WipMU0iI89BY6aePKBclnjfOfc+AZckxcYWM6RHnXCNtbt8rnoyg+tCC3R0BmE2
         Qd2Akb3BC+vKdgBmk3yN7ypeD2TDPuk0ARpM+4j02FD+I3MuE1+otxXXZSkvPTnU+CjR
         Ux/0W3ETZ5LCgx1owD/UZL2znYXJbTRO4z1nQCmbkGtTirKa4NRm3GmrjAa7gSqaKUZ6
         /iPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=56p5NhdWwB2gcNXTzTNYNRpMfVJQwWtQVavVuiEAJcg=;
        b=UtBigs9Er5YIlYS+vb2xm58Xn1NdhGwmuXnxuBJYc5UNd67AeeijrB/JLWyXjNgjnj
         dSOJwBqA2QFtgxAwEAQtr3S0fXllG/fx4ZuaJaIuyxfik4AqyQzrMWENDR8rt6aYLthz
         x0oLK94LC4H/U61pDPiwL3xY9FzDb7PgARiLlhAKc3fCo4UB9XvKUo4XczSPhnI6Zn7h
         G93C4Tos+Z88ADrkWExO2FQM5o/tEy+y8t2WOup1GFfdmj9nN0N6B0zkOL2qXG0p8fV6
         yR+7gdTW4sfxwlE0OhrIXLYI89DGqhl+nilunSzvDkSg9LSxczZ3Ux3aSykgXqd2G1UX
         p4lA==
X-Gm-Message-State: ABuFfog1nDK7JBeW9/oWuh4Aafs/pe4wv7UxuiB5bN+EcTgFGZ3wX7yp
	T/6WNd0PxmIHUhhq0kFDynBvMAZpeVBoHOq41L9Nkxtv
X-Google-Smtp-Source: ACcGV62Np5GWkVES2FsNitdpH/7ea/EfrqIHvAyiROPGMm+9pXg9hjkMrbZoX7/4vWj14mYaMVaV9LUEdSfixaqQcbM=
X-Received: by 2002:a0c:8441:: with SMTP id l59-v6mr429791qva.5.1537589546415;
 Fri, 21 Sep 2018 21:12:26 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CABejAM+hhgCipLzUycSV-RszcF6un45CncGFT9w0Yc69qNcbjQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: fulldisclosure@seclists.org
Date: Fri, 21 Sep 2018 21:12:15 -0700
From: Justin Ferguson <justin@asac.co>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] bounties
To: oss-security@lists.openwall.com

Hello,

I was curious about peoples experiences with bug bounties particularly
those through the prominent clearing houses for them. My experience is
that I have been either ripped off or extremely slow-walked in payment
that was substantially below the listed payout in every single
instance. I'm curious how accurately that reflects other peoples
experiences.

In the first series of findings, the vendor, a popular open source
component simply patched the bugs and refused to close the tickets
triggering payout for over a year. Attempts at resolving this through
the clearing houses support produced an endless series of excuses
mostly revolving around their not having any insight into their own
database (which is probably true). After a year or so, the ticket was
finally closed and the pay out several hundred dollars less than the
enumerated payout. I refused the bounty citing these complications and
insisted that the finding as a work for hire that was rejected and
requested that the patch be reverted as a result, which was just
ignored.

In the second series, the vendor, a prominent hardware company, stated
that a one line fix with no usability impact (the patch is to move the
line up one line so that it is included in the mutex lock) was found
and "partly fixed" over a month prior and that a full patch should be
released soon. That was several months ago and looking through their
reports, their public repositories, et cetera it appears to be totally
and entirely something they made up as the bug still exists. This
meshes with my thoughts that there even was such a thing as a partial
fix for x() mutex.lock() vs mutex.lock() x();.

In the third instance, the vendor, an anti-virus vendor in Europe,
stated that they were not able to reproduce the issue and didn't see
any issue. There were multiple things reported to them and their
circumstances were different as a context switch meant I was turning
in incomplete work just to attempt to get the issues patched. After
months of them coming back and asking the same question repeatedly,
being told the same answer repeatedly and continually ignoring very
basic questions about their attempts to reproduce, they closed the
matter as not reproducible. Upon further review, they could not have
possibly reviewed anything as the issue is blatantly clear and obvious
implying that they must not have even looked at the matter. In
additional findings reported to them, they've outright ignored the
matter entirely.

Thus, my experience has thus far been that bounties, particularly
those through the clearing houses are basically enabling a 1990s
pre-full-disclosure series of processes under the pretense of the
opposite, but in practice mostly just ripping works for hire off. This
clearly isn't the case across the board, but its been true in every
instance of my participation.

-me
