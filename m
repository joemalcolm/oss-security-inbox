X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2128" "Saturday" "26" "November" "2016" "14:56:46" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRDwUdYakN+OKpYZwY9WyC6rJ80Jt1SBSbt3ehjU0wJhQ@mail.gmail.com>" "59" "[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" nil nil nil "11" "2016112617:56:46" "[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core" (number mark "U       gustavo.grie Nov 26   59/2128  " thread-indent "\"[oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file with the last revision of JavaScript Core\"\n") "<67442b1d219447cc8a6dfce7f08a43b1@imshyb02.MITRE.ORG>" ("<CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>" "<67442b1d219447cc8a6dfce7f08a43b1@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22046 invoked by uid 550); 26 Nov 2016 17:57:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22025 invoked from network); 26 Nov 2016 17:56:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=QZnEMPpESmGak03DmaFgf4Ywqsq+V9l3JU3fIhlDS8A=;
        b=ttsGTGq6VOaiPycyviXrGQEweUz7NAnkDTIg31pch5IIrRYik07yBseFW2Xgd0oc4C
         epuV6r2m3WLaNV4Hhi6V+r6OWEXqBrC+ZxldL47bFurWOeutRUC8RhFJ6/9fps2F8+PJ
         C0Yc1qeSob7fp1eh9HVzwTH2DEdw3U68bJwdwPrvDj89vFMalA7xWBl/+HIkgDwfMK/B
         psqj4RqHylNsqDMiUC0zB7YBJ7VAZeLe5W6PH2SQsscR9AMiu+kheSXDYJz3ySSZYByn
         NTdm4M7YxXzRZvti/eZOfdodT+xfbuz4HGXn7f/4XhdBKjxJjKw2qmOGOULvV2KfpVlM
         hvMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=QZnEMPpESmGak03DmaFgf4Ywqsq+V9l3JU3fIhlDS8A=;
        b=dPL9wBL0RJclOucu8+vlTZxvhKNRJh2iI9tO6YujU6tilJRA7LuYthLCPZihbUnucg
         dcG+hJKx40p7ytvtVJjmsABJcvR3B1IsVEfghewDKFDSo0eyxEK9UgR7GIv3NZanzeH4
         rALbfTDbjbZ9RKPeV3zF5sloF6/IEbU6rhJmFw7ZyWRNvl0K18ON+k/koO58tjF0+aCA
         hGJjHdEqLZxd+smmRPcsWG8csbe98rL4Hwj1IyDXfC05ij/FczYnGhlL4uOIXveFDxGM
         BC8f/xFTt9/zQv7LZoNxwk0+k3TA2rZzQQAD8W80KBJti4+97teUqAwURx4TOS1Fggfc
         5IGQ==
X-Gm-Message-State: AKaTC01KGNyyaUO9Pp8qC8rfzUqmSWuUv8cNmmkT8afbCFGKSQ2veFWmcQ9yjKFfYdJAE6y8oEW7HuBqDvqwpw==
X-Received: by 10.107.55.136 with SMTP id e130mr11032119ioa.76.1480183007026;
 Sat, 26 Nov 2016 09:56:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <67442b1d219447cc8a6dfce7f08a43b1@imshyb02.MITRE.ORG>
References: <CACn5sdRbBPaw4MCTH7eskU5r1xfM8WGAaLU--=aNjy6x0B6-QQ@mail.gmail.com>
 <67442b1d219447cc8a6dfce7f08a43b1@imshyb02.MITRE.ORG>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sat, 26 Nov 2016 14:56:46 -0300
Message-ID: <CACn5sdRDwUdYakN+OKpYZwY9WyC6rJ80Jt1SBSbt3ehjU0wJhQ@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114ac28056236a054237f61f
Subject: [oss-security] Re: CVE request: Heap read out-of-bounds parsing a Javascript file
 with the last revision of JavaScript Core

--001a114ac28056236a054237f61f
Content-Type: text/plain; charset=UTF-8

2016-11-11 4:07 GMT-03:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > We recently found a read out-of-bounds parsing JavaScript code in the
> last
> > revision of WebKit
>
> > WTF::ParkingLot::parkConditionallyImpl
>
> CVE IDs for WebKit are typically assigned by Google. Perhaps you are
> testing WebKit code that is too new to affect Chrome. Possibly
> applicable references are:
>
>   https://webkit.org/blog/6161/locking-in-webkit/
>   https://chromium.googlesource.com/chromium/src/+/master/thir
> d_party/WebKit/Source/wtf/
>   https://www.google.com/about/appsecurity/chrome-rewards/
>
> If you can confirm that Chrome is unaffected or that your report
> wasn't accepted at
> https://code.google.com/p/chromium/issues/entry?template=Security%20Bug
> then we can send a CVE ID here.
>

After a month, i received no response from the original bug report in the
webkit bug tracker. Additionally, Chrome / Chromium is not affected.


>
> - --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJYJW0PAAoJEHb/MwWLVhi2tAAP/0YPJtWUwAUpo9ei5DxUQpVF
> nKNQjnUR3lCVGwTGDqD3F9nnoWsyrAePbAYvRyodh/KFBLbdoN9EN6N7l8HaRqgy
> gbpetQ1WEJECggmarKk1HveIK82g5yfIKsAfk8ybkPl7FvObd60oQiB6TEZaZRZp
> WqT1eNuJM7fB9f+8GkDhuwMNkq3Q09BMhnM4GOJP8i6afaeh6R9Ih1cVOYwmNxsF
> c/+6ba2QQbCfN3G1P4Sy/0qt0Iuuh/6iN8aXu+c1Ghajx86/w5sPH5hy9BFusJ1i
> e3rSYLDVknDY87gKertfHnK1fkRBvlsABVvEdCiY0a0f8e5wCHB/aTx8fgE9RvCn
> M9767qljP3ea/8GAtSPwwskOx+yMNUJPYBlo6C5NDHW98sCHOlWS4yB3k8zvNWMz
> vS+skFo/GrqnX3RsuNoOdvpUpwt/mBoTr6sVK/oA9xY9U+lvdGiWCRri5ugSjgSK
> Dv1VpxzsQHE7fQBy8RJg5AtFS6VTKGAsTy68hAFkSTZV3aEZNJNsoRmdmCRImQs+
> jKM7cT4MbSrEUEtEFysPt5AWbe5C8E8dwbhg/FNtZV7Zz+B8n7aRBfdcHMCkG0O9
> NsVs9dJkv7w1mOdibownVMvTV/UqzMRr+lzzmUPbeWGetaxmCr3mn6+kx4uKYabH
> aqWJRCKdup0fmNUs/xSW
> =2oQn
> -----END PGP SIGNATURE-----
>

--001a114ac28056236a054237f61f--
