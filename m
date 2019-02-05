X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6468" "Tuesday" "5" "February" "2019" "17:28:03" "-0500" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2XKwThukWHpZ_K_uVPfKtamwYQ7vkoL7-6UUpSLEZRFVw@mail.gmail.com>" "149" "[oss-security] Notes on fuzzing ImageMagick and GraphicsMagick" "^Date:" nil nil "2" "2019020522:28:03" "[oss-security] Notes on fuzzing ImageMagick and GraphicsMagick" (number mark "        alex.gaynor@ Feb  5  149/6468  " thread-indent "\"[oss-security] Notes on fuzzing ImageMagick and GraphicsMagick\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3494 invoked by uid 550); 5 Feb 2019 22:28:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3456 invoked from network); 5 Feb 2019 22:28:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=JYiSwg/koNuFr9huUyo0zjEvxZffX8gVWOvCulNahGc=;
        b=tQJqKYycPq4zwBE3NS3TRr2vTZ/XmftGfDylgpnkRTotPH1aKubHdHAqi9WEpms0M6
         fNljLJ8BOFEew7qEd9nK84m+yp2JOJJr4RW2OrmY+l2dAZY/tWfedSOUhJOv1CPD7Z+0
         3Ws4kMYu0QzzuDY+IWQJpBGmU2/CcTWEaC6HGsyKO5px8cJsgjm1Gpnk+248etBdXKE4
         Uny0VZfkMaxjAMMgHJ1JnpK9y3jeoFl7XpokGNg3Pa4lAFktpjzqDnIFrJX7HbornRnX
         b3oVtzLDgczyAitv5HgGHw/WIOpGgD7TQosoemK+56JpYeEJGtq05gbtpmOgPaAACDy5
         iF5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JYiSwg/koNuFr9huUyo0zjEvxZffX8gVWOvCulNahGc=;
        b=f46CvS9bnI/d7dm7bFknCOyRXNO7GrmhtHbqaK8n4ybAFSG7YwqoaipqtvV2JBvDb4
         R3elkEOGm+KbpKlsNSZUPGWLj+v00shFZQEGJqJV5khd2VDj5+xHTEARjyokm/29mIqy
         8wnsfLSwu8NYVNR4+Bjgn0qVaQLpd08ffTobXMf+REV5u3OJflxCBlpNM8MNywdBi2DT
         DbCzAEpLQcGt1To9wcDpk/SXUnTFiY0xZSoCIwkt+LXjqZXn0lWHFH1QpMW5BXwz2d+C
         97VPDpNEa30pyuB2RhzX9Aq5bcokUO0mFXHAoJxF0y59XCbeaZC/OEGdTNbbhRuiSNM+
         naig==
X-Gm-Message-State: AHQUAuYwK6NrPhESFoMdp6Eul6jtNKKrYEDmGgv2BSB088J0Y4DCvSgJ
	RAW103cnajHZv/8+OkYwsqXwhtl4HBCLMEbehHqzA/8s
X-Google-Smtp-Source: AHgI3IbEr3zjxJOvx0YpReW9zSWjx8UlKnKtCda+zB9C8/wcCTzBUNTGHv2MSHoIr+N2KM2z3zW50T4w7IVQu1+nn6g=
X-Received: by 2002:a19:5e54:: with SMTP id z20mr2830835lfi.148.1549405695103;
 Tue, 05 Feb 2019 14:28:15 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAFRnB2XKwThukWHpZ_K_uVPfKtamwYQ7vkoL7-6UUpSLEZRFVw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000011dfeb05812d2088"
Date: Tue, 5 Feb 2019 17:28:03 -0500
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Notes on fuzzing ImageMagick and GraphicsMagick
To: oss-security@lists.openwall.com

--00000000000011dfeb05812d2088
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I figured this would probably be of interest to many list members:
https://alexgaynor.net/2019/feb/05/notes-fuzzing-imagemagick-graphicsmagick/

Follow content follows, in keeping with list policy.

Alex

---

ImageMagick and GraphicsMagick are two popular libraries for manipulating
images. GraphicsMagick is a fork of ImageMagick that diverged well over a
decade ago. OSS-Fuzz provides continuous fuzzing for high impact open source
projects. In December, 2017 `Paul Kehrer`_ and I worked to add ImageMagick
to
Google's OSS-Fuzz, and in February, 2018 we added GraphicsMagick.

Both ImageMagick and GraphicsMagick had been widely fuzzed and audited
before
this. Hanno B=C3=B6ck [#]_ observed: "In the past it was pretty easy to fuzz
bugs in
imagemagick, but after some review by Google most of them have been fixed
and
these days there are at least no more trivial to find fuzzing issues."
Despite
this, within hours of adding each project to OSS-Fuzz it was finding
security
issues. Between the two projects it has found more than `425 security
issues`_
of various severities [#]_, and it continues to occasionally find new ones.

Given the gaping chasm between what was expected and the massive success of
OSS-Fuzz on ImageMagick and GraphicsMagick I thought it would be helpful to
review what factors I thought were contributing to OSS-Fuzz finding so many
vulnerabilities and other bugs:

**Scale** OSS-Fuzz leverages Google's massive server farms to bring serious
compute to bear on fuzzing. The last time I attempted to measure, it looked
like they were running something like 30 CPU cores per fuzz target. Further,
lots of past fuzzing of ImageMagick and GraphicsMagick was done using AFL,
OSS-Fuzz uses libFuzzer which gives the potential for higher executions per
second. This gives them the ability to find bugs that take many iterations
to
show up. Finally, for ImageMagick and GraphicsMagick we generate one fuzz
target per decoder. Each has more than 100 decoders (including many that
leverage third party libraries such as libpng or libjpeg), and OSS-Fuzz runs
them all, this is an amount of compute that is well beyond what's
accessible to
most folks.

**Continuous** OSS-Fuzz builds an updated copy of the project every day,
and it
runs indefinitely. Compared to other fuzzing which might spin up a big EC2
instance and then run for a week, this is a huge advantage. It means that
new bugs are caught as they are introduced and as time passes the amount of
CPU
dedicated to fuzzing each target will continue to climb. It also means if
there's something blocking progress (e.g. an OOM) as it gets fixed, the
fuzzer
will incorporate the fix and proceed.

**Automated** OSS-Fuzz automatically files tickets for each bug it finds,
and
tracks when they are fixed. This means crashers never slip through the
cracks
and reproducers never get lost; the issue tracker always knows the state of
every bug it has encountered. It can also easily catch if a bug regresses.

**MSAN** Most fuzzing these days happens with ASAN, which means things like
use-after-free and buffer-overflows are caught. However, ASAN doesn't catch
use
of uninitialized memory. As `Chris Evans demonstrated`_, uninitialized
memory
in ImageMagick can be used to exfiltrate secret data in memory. MSAN catches
use of uninitialized memory, but unfortunately, using it is kind of a pain:
every library you use, including libc, needs to be compiled with MSAN.
OSS-Fuzz
automatically handles building things with MSAN.

**Improvement** In addition to security issues, OSS-Fuzz also files bugs on
memory leaks, timeouts, and out-of-memory issues. When folks are doing their
own fuzzing, they often won't bother to file bugs from these categories,
because their objective is to find security issues, and manually filing bugs
can be a pain. However, bugs in these categories can make fuzzing far less
efficient, reducing the chance that the fuzzer will find security issues. By
encouraging projects to fix these types of issues, OSS-Fuzz leads to
projects
being more efficient to fuzz, which helps find more vulnerabilities.

Conclusion
----------

If you're fuzzing (or considering fuzzing) an open source library, work
with the
maintainers to `include it in OSS-Fuzz`_. Google will even `pay you a
bounty`_
for the integration. It's pretty clear to me that OSS-Fuzz will deliver
better
results than fuzzing on your own, making us all more secure.

I'd like to extend a huge thank you to the ImageMagick and GraphicsMagick
teams,
who were supportive of our efforts to integrate their projects into
OSS-Fuzz,
and who took on the lion's share of the work: resolving both the
vulnerabilities
that were reported, as well as the other bugs.

And finally, I'd be remiss if I didn't point out that basically every
vulnerability class that OSS-Fuzz finds is a product of memory unsafe
languages,
like C and C++. While fuzzing makes these projects more secure, it's not a
substitute for using `languages that don't cause thousands of
vulnerabilities`_.
When we're finding hundreds and thousands of vulnerabilities that all have a
preventable root cause, it's time to reconsider what we're doing.

.. [#] I don't want to pick on Hanno, this post is about how good OSS-Fuzz
is, not how bad everyone else is. He just happened to have a quote that
captured this well.
.. [#] This includes bugs discovered in "delegate" libraries such as LibRaw
or libheif.

.. _`Paul Kehrer`: https://langui.sh/
.. _`425 security issues`:
https://bugs.chromium.org/p/oss-fuzz/issues/list?can=3D1&q=3Dstatus%3AVerif=
ied+Type%3ABug-Security+label%3AProj-imagemagick%2CProj-graphicsmagick&sort=
=3D-modified&colspec=3DID+Type+Component+Status+Library+Reported+Owner+Summ=
ary+Modified&x=3Dtype&y=3Dproj&cells=3Dcounts
.. _`Chris Evans demonstrated`:
https://scarybeastsecurity.blogspot.com/2017/05/bleed-continues-18-byte-fil=
e-14k-bounty.html
.. _`include it in OSS-Fuzz`:
https://github.com/google/oss-fuzz/blob/master/docs/ideal_integration.md
.. _`pay you a bounty`:
https://security.googleblog.com/2017/05/oss-fuzz-five-months-later-and.html
.. _`languages that don't cause thousands of vulnerabilities`:
https://alexgaynor.net/2017/nov/20/a-vulnerability-by-any-other-name/


--=20
All that is necessary for evil to succeed is for good people to do nothing.

--00000000000011dfeb05812d2088--
