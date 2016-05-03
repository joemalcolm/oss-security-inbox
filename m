X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3213" "Tuesday" "3" "May" "2016" "10:59:12" "-0700" "Ryan Huber" "rhuber@gmail.com" "<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "92" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016050317:59:12" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        rhuber@gmail May  3   92/3213  " thread-indent "\"[oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4035 invoked by uid 550); 3 May 2016 18:03:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1538 invoked from network); 3 May 2016 17:59:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=SbduoyK2LS3q8hXRLwg26Lynbe7EMWM2MqXaJ2v4vms=;
        b=j1VHc6MK7kBVr2Rua6piwOAV3/KThnkvwDpbsLDmNU3WJLJVXZaCNE/9QW/aOGz7Gf
         btJ0Xcuim1uwwISnU7aUwJlXpJ30tsFgA/DhPxRCAjwRQ7PJoEUNruMP/kcU6zmDVvoD
         HTdCpLMWye5d/8ZyER6Da2ttufyygnD4hHnuL+XbrDJjTrkx8ybT47nuCDbM+kyBeTEZ
         +RxUs6iOwhk0albFTBK3SQeLdQ53TjzgsHSdsoyCc/7Y+SJrlCeMXjoPF7+IlVyve+qx
         QKuDgWn+lj9Ldf3jpHE81b+u6vFojKfuCmvR0gAgDTPtjhUQ7LJHXWfI8hJyjzQbMc6x
         NSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=SbduoyK2LS3q8hXRLwg26Lynbe7EMWM2MqXaJ2v4vms=;
        b=WqUQYK+O2pRNmj5gl+pAEqmHUElHFtN6az0Xgz+BAyZAmFmVCIlqD8jtQ3vaQAMkRH
         MAohaIp8nVMFX7m41qPRmH3GjDomg0VAbM0XeeyLuKeA6aUXmSUyOAAFYyVF7wGSRwZh
         tnTmbLy01WvoIUZNnqoBd6d5v605HFvf81jISb6MA0JZ83Ms2EjV5rTA2VYLjD5cMrIq
         g6gUK30m7Si6LtCzW41nzqJXli8no2q13QBaD8TQWB3grbdDVq/LPc7a3UdqBDAT+3pU
         /Laph0AEd0cdCQ7zfqiJe1HSAZR5Uw06msjV7anJMiwAqsHpU+ACAoJWlFDOzOQ7lQ5w
         AvDA==
X-Gm-Message-State: AOPr4FXSdhjxW6DQV0XFxLILuAY7z7PFpeaYy1NBjiuFhFMXvozA0fyyYZkDuoVtqKni0w==
X-Received: by 10.50.109.138 with SMTP id hs10mr5226361igb.76.1462298353324;
        Tue, 03 May 2016 10:59:13 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.50.190.138 with SMTP id gq10mr22211651igc.44.1462298352577;
 Tue, 03 May 2016 10:59:12 -0700 (PDT)
X-Gmail-Original-Message-ID: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
Message-ID: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 3 May 2016 10:59:12 -0700
From: Ryan Huber <rhuber@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

There are multiple vulnerabilities in ImageMagick, a package commonly
used by web services to process images. One of the vulnerabilities can
lead to remote code execution (RCE) if you process user submitted
images. The exploit for this vulnerability is being used in the wild.

A number of image processing plugins depend on the ImageMagick
library, including, but not limited to, PHP's imagick, Ruby's rmagick
and paperclip, and nodejs's imagemagick.

If you use ImageMagick or an affected library, we recommend you
mitigate the known vulnerabilities by doing at least one these two
things (but preferably both!):

1. Verify that all image files begin with the expected "magic bytes"
corresponding to the image file types you support before sending them
to ImageMagick for processing. (see FAQ for more info)

2. Use a policy file to disable the vulnerable ImageMagick coders. The
global policy for ImageMagick is usually found in "/etc/ImageMagick".
This policy.xml example will disable the coders EPHEMERAL, URL, MVG,
and MSL.

Github Gist showing an example policy file:
https://gist.github.com/rawdigits/d73312d21c8584590783a5e07e124723

FAQ

Who found this bug?

Stewie (https://hackerone.com/stewie) found the initial bug, and
Nikolay Ermishkin (https://twitter.com/__sl1m) from the Mail.Ru
Security Team found additional issues, including the RCE.

Will you share the exploit with me?

No. We would like to give people a chance to patch before it is more
widely available. The exploit is trivial, so we expect it to be
available within hours of this post. Updates and PoC will eventually
be available here.

Are patches available?

Yes, but they appear to be incomplete. Everyone would have preferred
to wait for patches before disclosing, but working exploits are
readily available.

What are "magic bytes"?

The first few bytes of a file can often used to identify the type of
file. Some examples are GIF images, which start with the hex bytes "47
49 46 38", and JPEG images, which start with "FF D8". This list on
Wikipedia has the magic bytes for most common file types.

Why are you disclosing a vulnerability like this?

We have collectively determined that these vulnerabilities are
available to individuals other than the person(s) who discovered them.
An unknowable number of people having access to these vulnerabilities
makes this a critical issue for everyone using this software.
ImageMagick also disclosed this on their forum a few hours ago.

How well-tested are these mitigations?

They are effective against all of the exploit samples we've seen, but
we cannot guarantee they will eliminate all vectors of attack.

Are there other ways to mitigate?

Sandboxing ImageMagick is worth investigating, but we are not
providing specific instructions for doing this.

What else should I know?

We did not find this vulnerability ourselves. We understand the
mechanisms involved, but credit for finding this vulnerability should
go to the researcher(s).

Vulnerabilities need names! What is its name??!?

If you must, we've been calling it "ImageTragick".

How can I contact you?

imagetragick@gmail.com


-- 
Ryan Huber
rhuber@gmail.com
@ryanhuber
https://github.com/rawdigits
+1 (312) 380 6136
