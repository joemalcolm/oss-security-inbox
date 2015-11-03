X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1672" "Tuesday" "3" "November" "2015" "10:55:49" "+0100" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTkWV07UbmM4RgXG8fXorErwAvVrKvH8JWBu-+Pwi99VQ@mail.gmail.com>" "46" "[oss-security] Re: CVE request: DoS in libxml2 if xz is enabled" nil nil nil "11" "2015110309:55:49" "[oss-security] Re: CVE request: DoS in libxml2 if xz is enabled" (number mark "U       gustavo.grie Nov  3   46/1672  " thread-indent "\"[oss-security] Re: CVE request: DoS in libxml2 if xz is enabled\"\n") "<20151102160355.7C43352E039@smtpvbsrv1.mitre.org>" ("<CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>" "<20151102160355.7C43352E039@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19730 invoked by uid 550); 3 Nov 2015 09:56:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19712 invoked from network); 3 Nov 2015 09:56:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=1mZvHLX45xYMez+9sI/AuzK6MtoYUE09S0CCFGriAE0=;
        b=iDNbfIGMuUN4R61+Uq1wOjN+BnNprDQY2e19Sei6cz4rnknmH7VKJs3Cf+/HdUG25p
         Ez4wuL7cgKa2Revgh6Z+qi/Nl3qJNSpW5Wdye2Oei8ofhLDxWapmLwEls6bp7R6RgxWp
         wIgeY0L+PGU34FxAPVbTXa/QrHwulgGO+2KHysyDLWqqA+PGdHiJjbwa4JiWjuQ58rlG
         BqOEnqVq1LS2mYZqxIbsScJ2m2czyZjKek7v18472/SUlzzp8DxOP3+8/+cxeJxchhG7
         eW8Xk2VTs9zFwwDLJnyvws59GdiHu/otqEZMBO8egJBlTW1EHF7DCXzKeyK/JJolIrAD
         1QhA==
MIME-Version: 1.0
X-Received: by 10.25.144.143 with SMTP id s137mr8334822lfd.116.1446544549189;
 Tue, 03 Nov 2015 01:55:49 -0800 (PST)
In-Reply-To: <20151102160355.7C43352E039@smtpvbsrv1.mitre.org>
References: <CACn5sdQxv1xrLWNJi4eiS=mN3ZkXvaGQOzbNGw4HZqr3Dfg=Fw@mail.gmail.com>
	<20151102160355.7C43352E039@smtpvbsrv1.mitre.org>
Date: Tue, 3 Nov 2015 10:55:49 +0100
Message-ID: <CACn5sdTkWV07UbmM4RgXG8fXorErwAvVrKvH8JWBu-+Pwi99VQ@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1140227401a1b405239fe6fb
Subject: [oss-security] Re: CVE request: DoS in libxml2 if xz is enabled

--001a1140227401a1b405239fe6fb
Content-Type: text/plain; charset=UTF-8

Fixed!

https://git.gnome.org/browse/libxml2/commit/?id=f0709e3ca8f8947f2d91ed34e92e38a4c23eae63

2015-11-02 17:03 GMT+01:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > We found a denegation of service parsing a specially crafted xml in
> libxml2
> > if xz support is enabled. It affects version 2.9.1 and probably others.
> > Find attached a xml that never finishes the parsing process:
> > ...
> > #0  0xb7f3e63c in xz_decomp (state=state@entry=0x8001cff0)
>
> Use CVE-2015-8035.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIcBAEBCAAGBQJWN4jAAAoJEL54rhJi8gl5/dMP/iQwWAw5fr+9kWkFCQEEfyM9
> xznrHRmuygTKDSNMSFGuZ2wXbGzsakJNFke3BC6WqU8343CjoWbX7FinfR/NSqEN
> HykMeCUlAuM7I19CA/8Ig1qBoS/46LUBNwMrRrmbfJyNn1mh52+96RBYISFmhF2/
> hyEhGl+4zscCy+JRgZD0/77bNZR0fS1gxy3x6pXr5TN9MmxTONXEHk3Kg0u9jHAC
> ve1pzE8DxzNTIi0vbI4MNGP0NezTFUNjhcCuxiiJUuqhNZ2wvkJAgCkxEQz6uvPP
> XoOVuyu/+ytM4Z42wAId7aylgu7Zdp7Yx2Ej5PZLIYo8TDrrOp5dqRC83hdV1S0n
> AU/VEFF7CqEDrX2W5Idjx9sbnAnVGcsBrVTZta5zkpaHZhtnjK/SeNKNKOgxc5F8
> YRc/M/LasyHQBq/mK982h3iY2r82r7XN4tmkYayzXBtMEEXm1eRbS9eQx/je3bX+
> I66BlEAaUdhqNhRU5Auyx27FIVuM7RnmU/7SKYWaB45H3X/b1Zr8Xpxvyd/LKqhG
> TxtOuI3i7+d9gl13iX35jfxwSitdoIoNNU5JWftVOalHGITG+glsDq9PFBVB0Udl
> E039za5WjF/R64p/uSoBgMvu4UqOE1DBks+h0VK0vzV/jV3VrUQb/b1qmjlSXzsN
> gTz8OIpmOf6o/PZ8kHRe
> =pFpx
> -----END PGP SIGNATURE-----
>

--001a1140227401a1b405239fe6fb--
