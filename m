X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["363" "Tuesday" "10" "January" "2017" "11:17:45" "-0500" "Dan McDonald" "danmcd@omniti.com" "<6D927636-CDD5-4A48-90F8-3149133ED354@omniti.com>" "14" "Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" "^Cc:" nil nil "1" "2017011016:17:45" "[oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)" (number mark "        danmcd@omnit Jan 10   14/363   " thread-indent "\"Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key recovery (OpenSSL, LibreSSL, BoringSSL)\"\n") "<D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>" ("<D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3654 invoked by uid 550); 10 Jan 2017 16:20:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3106 invoked from network); 10 Jan 2017 16:17:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=omniti-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Yx9cTN2Lq/K9zFXduIETdrqJCWC8qx/QyGfbLfRdLiE=;
        b=DKGRSY42iCoRnVU6/I9BjFRNW5uzMGMucT6eVvH8LSSy/fjhBOHUJ9dYakr6A6h+jF
         ou44ZiUcBtIXECN1gaPl/8Zxe/zx2K2RUAqdC6FAkWtqXSlCzZJfe0ctaHd0wyhSkobY
         1LHy+vqj4zhK91q1dFXUjOvE2weJKaA5V1z+SKSXB9aYhjNL8bWI4C8wHSncH2GR7pLg
         FHV1VWKhUF20CZMj7fUKCfE/gdF1Cud3G5VP8eo01RFcxF2kSN0F8mGvzjFeh5p6S9nR
         Ubvh5nLePO7pIWFovIm1d6a9X0w0KWPU4s4e6z+wNmokK2ykwnbijERVQSq8/sqbl3wV
         4gLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Yx9cTN2Lq/K9zFXduIETdrqJCWC8qx/QyGfbLfRdLiE=;
        b=gSl++iFugrRZwNUJa60b3SWyRMaBNorOsImq7y+vPx3VSkYhKTMX1Kgm+l804c4m3i
         /hpDIBS2BT2ZIbJeR1XEPOep3s+gWb0W+uXrKAyBgtYyFwhj7E2xBTGNmmXqnME3WLiW
         rPccAgwFiBIXTdrk/r1zA0tK4w93+PHv5FCJ2QMWGaP87kPSLXGBl+QozMLqfD2G1+U0
         DS2c9i2tDLWYyz9PyJ3SwFxHN9PpCZYlb4jYPwZ2S7vAtJt6v+Z88ZtzcsgidRJNSACA
         vxXkSMxibf+MAhHVcdEF/dXmJmMX45uJ0WzONGr5uaCs+5YWNeZogWhd1+0QUCxlxxkO
         xUkg==
X-Gm-Message-State: AIkVDXKCB7ir1STquaVM4nsKTbXN1jafhgucg28cWvsFAx6TH+CpGIC5Aw4eS9yMeOT8GHSM
X-Received: by 10.55.130.4 with SMTP id e4mr3867688qkd.121.1484065067632;
        Tue, 10 Jan 2017 08:17:47 -0800 (PST)
Content-Type: text/plain; charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
In-Reply-To: <D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>
Content-Transfer-Encoding: quoted-printable
Message-Id: <6D927636-CDD5-4A48-90F8-3149133ED354@omniti.com>
References: <D159A2841943CE409CC23D3F12A4633A516569@mb2010-3.intra.tut.fi>
X-Mailer: Apple Mail (2.3259)
Cc: Dan McDonald <danmcd@omniti.com>
Date: Tue, 10 Jan 2017 11:17:45 -0500
From: Dan McDonald <danmcd@omniti.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7056 ECDSA P-256 timing attack key
 recovery (OpenSSL, LibreSSL, BoringSSL)
To: oss-security@lists.openwall.com


> On Jan 10, 2017, at 10:50 AM, Cesar Pereida Garcia <cesar.pereidagarcia@t=
ut.fi> wrote:
>=20
> Mitigation:
> Users of OpenSSL with the affected versions should apply
> the patch available in the manuscript at [1].

You should just mail the patch to this list.  I'm having a hard time copyin=
g/pasting the uuencoded blob from your paper, Cesar.

Thanks,
Dan

