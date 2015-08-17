X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["925" "Monday" "17" "August" "2015" "11:02:39" "+0200" "Raphael Geissert" "geissert@debian.org" "<CAA7hUgHDgc063CdR8jpzdCmAYTB5_R0a1K+uHjgwiBCYcJ5NSA@mail.gmail.com>" "24" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015081709:02:39" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        geissert@deb Aug 17   24/925   " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<20150816184849.GA32213@zoho.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" "<20150816184849.GA32213@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13786 invoked by uid 550); 17 Aug 2015 09:03:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13768 invoked from network); 17 Aug 2015 09:03:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=USD1S44UGWAj8Xga3aqVa98mjTNhhGPwf+bwt/UG6FE=;
        b=0dzK5HgO4nVuM7dAvKNn1X2zuZgmooUmOelcdLaJDy48k79cwz5pFt3oaJNX6fvzwm
         ZdCbkgUoukIM0PP5np4pd9VhQcqpLtnPl9Ky/YRaXUODdmUl6ZKEBxAvRl5oys4vTSYN
         K67EgJUpz10nXDH/2AdomCe711O14kpxnno6old0HydAB/D+JDaydX4Gzi3SDYQR+4jA
         DcfvHuk/zvomn6c9LCuXUw+U49sB/Jo3XGiZrfb+u6mPF5C1Fkjy+GJFSC1uTHi0kSRl
         aiEl/BmFwDOwMOrLQ6wl6G13fc2kdl8ZPUdMoNGhJf1ynk+1Rq6gXCxi+5lxswKbateH
         aYHg==
X-Received: by 10.180.94.168 with SMTP id dd8mr31762188wib.76.1439802179324;
 Mon, 17 Aug 2015 02:02:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150816184849.GA32213@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
 <20150816184849.GA32213@zoho.com>
X-Google-Sender-Auth: H-zUR6jFeTPwmKNgv-bwqPF1TwA
Message-ID: <CAA7hUgHDgc063CdR8jpzdCmAYTB5_R0a1K+uHjgwiBCYcJ5NSA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: gustavo.grieco@gmail.com
Date: Mon, 17 Aug 2015 11:02:39 +0200
From: Raphael Geissert <geissert@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: atomo64@gmail.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: Open Source Security <oss-security@lists.openwall.com>

Hi,

On 16 August 2015 at 20:48, mancha <mancha1@zoho.com> wrote:
> On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
>> A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
>> been found triggered by function jasper_image_stop_load.  Despite this
>> library is used by many programs (
>> http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
>> providing support, so there is no fix so far.
>
> If you email me your crasher I can look into a fix.

Last time I ran zzuf on jasper there were plenty of crashes and bugs
that triggered a high resource consumption - pretty much like the ones
I found on openjpeg at work. They looked less severe, however.

I should still have some samples in another machine, if anyone is
interested in taking a look at those and/or using them as a base for
further fuzzing.

Cheers,
-- 
Raphael Geissert - Debian Developer
www.debian.org - get.debian.net
