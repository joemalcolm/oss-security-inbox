X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1113" "Saturday" "16" "May" "2015" "17:08:22" "-0700" "Luca Carettoni" "luca.carettoni@ikkisoft.com" "<CAFThDPGYiVLj3ZBVTQKYA+yMVMsDruCjCQEyGTjTeoGjXAfKDg@mail.gmail.com>" "35" "[oss-security] =?UTF-8?B?TmV0dHkvUGxheSdzIFNlY3VyaXR5IFVwZGF0ZXMgKENWRcKtLTIwMTXCrS0yMTU2KQ==?=" nil nil nil "5" "2015051700:08:22" "[oss-security] =?UTF-8?B?TmV0dHkvUGxheSdz?= =?UTF-8?B?U2VjdXJpdHk=?= =?UTF-8?B?VXBkYXRlcw==?= =?UTF-8?B?KENWRcKtLTIwMTXCrS0yMTU2KQ==?=" (number mark "        luca.caretto May 16   35/1113  " thread-indent "\"[oss-security] =?UTF-8?B?TmV0dHkvUGxheSdzIFNlY3VyaXR5IFVwZGF0ZXMgKENWRcKtLTIwMTXCrS0yMTU2KQ==?=\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3101 invoked by uid 550); 17 May 2015 00:08:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2047 invoked from network); 17 May 2015 00:08:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=NbHtZNUP0Y9doUYdYs6lsSHBr5Xz4E+1c+1dUqoImDs=;
        b=mdJiWEoUtA8PbGCiLVqad+ILOwz30hwi+7D0ajY9Ewz+B8ECGhr+9AadZcEJ+3zKsR
         mUlqf4jcw6PmwvLpptBaCsDiekAo9tzVn/39US5rcK3AAdyDmyEnhHOvmZYq9jZVqRX/
         4MYGHd0WQY9GL0wJA4QQOBTUCwM8COA9L1Abo4c4Gk6KpDARNIvaQuAbj85YR0kqP7pT
         lWwtRNJzyyLKdQnNho8JC7g39GE3Q8hSCmsMhoVkCght6AjBPzxgspE7N0AxUqb6ijxN
         DfzWtU8aILBGIMLMi3GEcGIO9PoRuobTO9Syr/HJTMhY3UHJ97O8UDFIOEOmpzgyo2Ip
         DoJg==
X-Gm-Message-State: ALoCoQmEdJ3K/QZbH96vlGpolRgBt/n3D8hW1hydBRNR9f+9RGQXNjNSdqsQsEI6+0xIb9/vSVCT
MIME-Version: 1.0
X-Received: by 10.194.89.70 with SMTP id bm6mr29543398wjb.146.1431821302438;
 Sat, 16 May 2015 17:08:22 -0700 (PDT)
X-Originating-IP: [162.234.3.32]
Message-ID: <CAFThDPGYiVLj3ZBVTQKYA+yMVMsDruCjCQEyGTjTeoGjXAfKDg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e010d89e21d33af05163be09a
Date: Sat, 16 May 2015 17:08:22 -0700
From: Luca Carettoni <luca.carettoni@ikkisoft.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] =?UTF-8?B?TmV0dHkvUGxheSdzIFNlY3VyaXR5IFVwZGF0ZXMgKENWRcKtLTIwMTXCrS0yMTU2KQ==?=
To: oss-security@lists.openwall.com

--089e010d89e21d33af05163be09a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

During a recent assessment, we discovered a security flaw within Netty=E2=
=80=99s
cookie parsing code which leads to a universal HttpOnly bypass in Play
Framework and potentially other frameworks using Netty as a dependency.

The issue has been fixed in Netty 3.9.8.Final, 3.10.3.Final, Netty
4.1.0.Beta5, Netty 4.0.28.Final and Play Framework 2.3.9.

http://netty.io/news/2015/05/08/3-9-8-Final-and-3.html
https://www.playframework.com/security/vulnerability/CVE-2015-2156-HttpOnly=
Bypass

Technical details of the vulnerability:
http://engineering.linkedin.com/security/look-netty%E2%80%99s-recent-securi=
ty-update-cve%C2%AD-2015%C2%AD-2156

Many other projects using Netty may be vulnerable to similar
"side=C2=AD-effects" of the incorrect cookies parsing routine. We recommend=
 that
every project relying on Netty=E2=80=99s CookieDecoder method should mitiga=
te the
potential risk by upgrading to the latest version.

Cheers,
Luca

--=20

Luca Carettoni

--089e010d89e21d33af05163be09a--
