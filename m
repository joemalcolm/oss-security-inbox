X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1146" "Sunday" "28" "August" "2016" "05:56:27" "+0000" "Misra, Deapesh" "dmisra@verisign.com" "<E91F67A6-D25F-47ED-A6E5-14A4C6BDBD66@verisign.com>" "35" "[oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" "^CC:" nil nil "8" "2016082805:56:27" "[oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" (number mark "        dmisra@veris Aug 28   35/1146  " thread-indent "\"[oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability\"\n") "<20160827190807.536C66C54F4@smtpvmsrv1.mitre.org>" ("<F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>" "<20160827190807.536C66C54F4@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13559 invoked by uid 550); 28 Aug 2016 11:32:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15479 invoked from network); 28 Aug 2016 05:56:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verisign-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version;
        bh=lFYRfOWZpf+wRsGGxv8PPQiXpLXrPwNPKXDjPyd7CdA=;
        b=WD8Ql0su1sYpe1kOREd+uwq4FIpkqq21CDicP0KjKh0K4VrPlFz1b7Po01LesvIHHD
         G8empiPwGNa24YcQtAPmvCfojMtSgf8jR805qJexNm68F+6jZ/Bovfksn/qYw99kg01m
         Djw3+1EUPkEZAjfAGCOEFsccMRz2tnuuNoC/wrCiAQRNv29Lq5PKZpdDDfmaAAqT4BKV
         Yh8jDPTpm0xYptkV3PN5opnPMUhuI9uS4ly+U7ml4Uy3bVArK+v1O3ykxlyRVnwNh2oF
         74br0oOXM56oVNxllyEDkvfOsr1hK3LFLuZebsbfSn030m1ING41FWW9QLFFofynod7p
         V0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version;
        bh=lFYRfOWZpf+wRsGGxv8PPQiXpLXrPwNPKXDjPyd7CdA=;
        b=DOz+u2HPYK3IDM2Ks/gzAJMA8GZMtAcKeXpjx+yHvg4Inh78mYoXqau+Q4ffvVt3Cj
         Dv9XXx3tZJN2So/aPeo8aJA/tG22lBHE9JedlqEMU/81S1UqYEg4TV2yGM0EBklcvGk7
         CDiu6K4pmGMuzK2bqkt2IjCNPhAdNzkYgv8smxP16AuKwxkUKuQuNJaesJWrQpjfAvr8
         IXCzKX7HSk+JkFhKwHP8/TYjqrSkHOwtm/s/XIghiv+bpa3ZX3OKiqVxE5zhOjYmli/H
         CJ+XYpuvl9/hu4RVo3tFrrAgpqdB6z5DtR3F3BGUQyW3vcGZROghgnRyd4FbRmSarMUa
         AUpg==
X-Gm-Message-State: AE9vXwNzIm5xfx+oqtqQtLsxQZrPFe8p/U+znpQNxTZMsdyZdg31wJiQ6UIqQewW3ZrwGSkJELHdbpCKjtfRnKatmdnLMNuA
X-Received: by 10.55.132.71 with SMTP id g68mr12653844qkd.50.1472363792350;
        Sat, 27 Aug 2016 22:56:32 -0700 (PDT)
X-Relaying-Domain: verisign.com
Thread-Topic: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
Thread-Index: AdH0FHmTbBUqcVEKSSiLw2onxQh3jAMo2WSAAA5C2a8=
Message-ID: <E91F67A6-D25F-47ED-A6E5-14A4C6BDBD66@verisign.com>
References: <F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>,<20160827190807.536C66C54F4@smtpvmsrv1.mitre.org>
In-Reply-To: <20160827190807.536C66C54F4@smtpvmsrv1.mitre.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
CC: "dawid@legalhackers.com" <dawid@legalhackers.com>,
        "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Sun, 28 Aug 2016 05:56:27 +0000
From: "Misra, Deapesh" <dmisra@verisign.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
To: "cve-assign@mitre.org" <cve-assign@mitre.org>

Hi,


> On Aug 27, 2016, at 3:08 PM, "cve-assign@mitre.org" <cve-assign@mitre.org=
> wrote:
>=20
> Maybe a marginally realistic exploitation scenario is for the
> attacker to convey this message to potential victims:

When I read the vulnerability report for the first time, this is the scenar=
io I came up with to justify the security threat from this issue:

(Hypothetical story of course)
A group of developers decide to write their own version of the "internet ar=
chive - way back machine". To keep things simple they decide to use the pow=
er of wget within their PHP app.=20

For their version one of the app, they decide to only allow the archiving a=
nd viewing of jpeg files.=20

They then set up their PHP app and solicit people to input in URLs of websi=
tes with images which need to be archived.

In this kind of "archiving website" scenario, the victim has to=20
- solicit and accept URLs from untrustworthy parties
- has to archive the specified files and then make the archived files avail=
able


Isn't this a common enough and plausible scenario which poses a security th=
reat to the developers server ?

Thanks,
- deapesh.

