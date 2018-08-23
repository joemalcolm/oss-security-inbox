X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1099" "Thursday" "23" "August" "2018" "15:33:33" "+0200" "Leonardo Taccari" "iamleot@gmail.com" "<5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>" "34" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082313:33:33" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        iamleot@gmai Aug 23   34/1099  " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32712 invoked by uid 550); 23 Aug 2018 14:17:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15464 invoked from network); 23 Aug 2018 13:33:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:from:to:subject:in-reply-to:references:comments
         :mime-version:content-id:date;
        bh=Vs2owsLeaT+P6uEvXHrS2VCiHwJw5VxdDzmkh/+47vg=;
        b=cej2EdIJNNU+VvhJ4fxDimo9yIc0x9y5NWVkE7n1YoYLBKSiFWTC5niPd3+mBjzTci
         LHF3SuDZf2GP9c/XltqOdJXJUrp9nQTAnh0EcKCp1MoHT9f2WkB4Om2aV4XWEwmwN2kR
         3PUSN2Ie2wdeQ968OSipIJz3xKdPu+iBu8IrBIoOVp1ZdM9Ux7/kDXMPcEAe/A1NXYtG
         E6rQHe+azJkOFnDPY+Rwd8IYdqe89UOIq7ikSOyT/7U8wwlsHZ3t/5ugQY5GdeqlNwgO
         Uf5EF4/ZciYbxGPiW52JYqQ6A3B8vF0fQTZDX+RIM8MCfkaVkJrVDiGX60YWr05lsJGg
         hzCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:from:to:subject:in-reply-to
         :references:comments:mime-version:content-id:date;
        bh=Vs2owsLeaT+P6uEvXHrS2VCiHwJw5VxdDzmkh/+47vg=;
        b=sp2ze/HSMz9kUSNwhTEj0t7Erp3C7lSSPOkFa8myRaFe85JYnj+IrfHBN/+SH3lOad
         jCgo+56Uyy2znB7VcUuJcuoPkz/CjWxDRDF/zPjCbEHoehCVKwE8Sln/cjOK59bmSXug
         hfjsatAIvJGhf9iACJB88k7tTN4GZYKV0KVIdAqCZqKZE6TqR9kNlTWVI452Bwze9xPM
         B6+CGSlovHV77/5X1VI1ySf2/MJs6w35vF7cVd23Wtr+L5O2kQAH1ZaEMxV+rFUDd/zk
         RXHhtOdAACLb3jstaUOjyda/jjqmb1lSdcd4tB68f5PdT9mLAzpninilf9Ax2qnXkRh5
         jRGg==
X-Gm-Message-State: APzg51C0UngCzfmO3ZJDvRavejAVHMrkQTM2fLgjjxLvSIEIOS2L14JL
	dRILFVvo2lgm1WOUXOqHZLIk/oOa
X-Google-Smtp-Source: ANB0VdaiGbPfYV2+xjrRnBbSrH6HKN/d+Sb5uwVUL/qZmVWavhuno6zNoWToL+R4LiV+ib2IdHTRVg==
X-Received: by 2002:a1c:30c3:: with SMTP id w186-v6mr4985800wmw.153.1535031219653;
        Thu, 23 Aug 2018 06:33:39 -0700 (PDT)
Message-ID: <5b7eb7b2.1c69fb81.6b98e.519f@mx.google.com>
In-reply-to: <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com> <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com> <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org> <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com> <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com> <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com> <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org> <5b7dd771.1c69fb81.a6d8.6521@mx.google.com> <alpine.GSO.2.20.1808230753470.3841@freddy.simplesystems.org>
Comments: In-reply-to Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
   message dated "Thu, 23 Aug 2018 07:58:51 -0500."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <21910.1535031213.1@boh>
Date: Thu, 23 Aug 2018 15:33:33 +0200
From: Leonardo Taccari <iamleot@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
To: oss-security@lists.openwall.com

Hello Bob,

Bob Friesenhahn writes:
> You are missing something.  While they are unlikely to be triggered by 
> default (but still could be triggered by an attacker with sufficient 
> control), testing shows that
>
>    convert -verbose PS2:file.ps outfile.png
>    convert -verbose file.ps2 outfile.png
>    convert -verbose PS3:file.ps outfile.png
>    convert -verbose file.ps3 outfile.png
>
> does in fact invoke Ghostscript.

Whoops, I stand corrected, sorry for the incorrect information!
(at least when invoking them with the `PS2:' or `PS3:' prefixes,
anyway, yes, both PS2 and PS3 policy rules are worth to be added
as well).

(Regarding the `file.ps2' and `file.ps3' examples without `PS2:' or
`PS3:' prefixes according `convert -debug Policy -log "%e"' it seems
that they ends up as:

 Domain: Coder; rights=Read; pattern="PS" ...

...so should be blocked by the workaround described in
VU#332928. But please correct me if I'm wrong.)

JFTR, not related to PS2 and PS3 but also a possible ghostcript
consumer: EPT seems to ends up as `pattern="PS"' too (unlike PS2
and PS3).


Thank you!
