X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["768" "Friday" "14" "August" "2015" "18:55:01" "+0100" "Jonathan Wakely" "jwakely.gcc@gmail.com" "<CAH6eHdRuW7F_xJNUjj0cvd2eU38xg9eWUKm4a=PYwuFCqibgfA@mail.gmail.com>" "20" "[oss-security] Re: Alleged libstdc++ vulnerabilities" nil nil nil "8" "2015081417:55:01" "[oss-security] Re: Alleged libstdc++ vulnerabilities" (number mark "        jwakely.gcc@ Aug 14   20/768   " thread-indent "\"[oss-security] Re: Alleged libstdc++ vulnerabilities\"\n") "<55CE2A12.6020909@redhat.com>" ("<55CE2A12.6020909@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5351 invoked by uid 550); 14 Aug 2015 17:56:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3305 invoked from network); 14 Aug 2015 17:55:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=LWtryHyXUupuKXSB9G8yH5GoJbKrFOxFl/8CUZSrE3k=;
        b=mcfS/UcA8oCkeQQRHYFudYfxWNTG6s/EY/MlBJc0V6DrdYpAzkw99uryGZdo/HDm4f
         NpZTefvdarWO6oY22jRV887l6bpDOyR69ksWU96nJ7NIWqNfQzPnXGzsvZFrdl42dsYM
         8TlEAkAQ9M6gMl4K0IHNxucH8Lrk3eX3ksOXNnIQPwZjy3Pt3paJps7TgoWj7Q8Nmnnf
         rBEd6/kWl0HEJYZ0wl5CLR2jg+vpsEyKhVkQ+KxGY9J4kkqRPbitk/Lx810rbOXxiKe7
         LRwosTILPxlQbeQKUekUIp1mVx0KH15qZU/4DPcKtjZhRsTDgKTRnRWBYi4iDPM3F26e
         +IyA==
MIME-Version: 1.0
X-Received: by 10.55.18.11 with SMTP id c11mr78915392qkh.70.1439574901523;
 Fri, 14 Aug 2015 10:55:01 -0700 (PDT)
In-Reply-To: <55CE2A12.6020909@redhat.com>
References: <55CE2A12.6020909@redhat.com>
Message-ID: <CAH6eHdRuW7F_xJNUjj0cvd2eU38xg9eWUKm4a=PYwuFCqibgfA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "libstdc++" <libstdc++@gcc.gnu.org>, oss-security@lists.openwall.com
Date: Fri, 14 Aug 2015 18:55:01 +0100
From: Jonathan Wakely <jwakely.gcc@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Alleged libstdc++ vulnerabilities
To: Florian Weimer <fweimer@redhat.com>

On 14 August 2015 at 18:49, Florian Weimer wrote:
> Does anybody know what this is about and can point to the relevant PRs?
>
> =E2=80=9Cdiscovered serious security bugs in [=E2=80=A6] libstdc++=E2=80=
=9D
>
> <http://www.news.gatech.edu/2015/08/13/georgia-tech-finds-11-security-fla=
ws-popular-internet-browsers-using-new-analysis-method>
>
> The USENIX paper
> <https://www.usenix.org/system/files/conference/usenixsecurity15/sec15-pa=
per-lee.pdf>
> does not back up this claim.

The paper abstract says "discovered 11 previously unknown security vulnera-
bilities: nine in GNU libstdc++ and two in Firefox, all of which have
been confirmed and subsequently fixed by vendors. "

I guess they are referring to https://gcc.gnu.org/bugzilla/show_bug.cgi?id=
=3D63345
