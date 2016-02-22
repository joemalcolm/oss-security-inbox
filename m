X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["222" "Tuesday" "23" "February" "2016" "06:39:57" "+0700" "Hans Jerry Illikainen" "hji@dyntopia.com" "<m1ziuspb5e.darpa@darpa.mil>" "10" "[oss-security] php: stack overflow when decompressing tar archives" "^Date:" nil nil "2" "2016022223:39:57" "[oss-security] php: stack overflow when decompressing tar archives" (number mark "        hji@dyntopia Feb 23   10/222   " thread-indent "\"[oss-security] php: stack overflow when decompressing tar archives\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18173 invoked by uid 550); 22 Feb 2016 23:39:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18152 invoked from network); 22 Feb 2016 23:39:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dyntopia-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version:content-type;
        bh=KLPKtkyp8PB6Lnjca2nEllXH810DYXFp7Dh8JMwldWo=;
        b=Jbc7iQy+pd6J0JashnrYzBC/1GTUhVhGcKdjEc9NKftyoyv2G2pYjssdrxEakUmztR
         Nt4+IA6sJBPhMMg7EmSLyzd/3dMmneEaHDWnG0OPriNCg59DL4NojNsLKv9r+0Bki6EL
         B9dEXJtBGRrv2Omznp+s2KjQHtoUi5nGjiSzbYSDlsetEPrl75t8wyVMWc338cqCEVoN
         c5BM76CIsJZmZBW9qv1U59IT7N6erjx/04+jHN4z/FdzCZ1uRSuJyjoQ5F+PvECljCDF
         fWnNA4/P6aPmdkREMEi4PAwK4OWmtYtWm/F6f8giAhIVsg8i/oZ8tHCbTCD6g3frcv1i
         rLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-type;
        bh=KLPKtkyp8PB6Lnjca2nEllXH810DYXFp7Dh8JMwldWo=;
        b=MPV1grqSprOlkPvcNGGpG4PTdUr5b4LRhO97IFuwRr9ekT+fZCb6nsFi8atj+mguI6
         jDzIeZPgbhdqnVAxkauS68M8ehiNLu/7bsunsdzsESNnYmoPD9rewq6vUmB3VvltA0ss
         7jG8PM1ltq7rDPtk7dnnjDAGKlhdCYyoM0ff44VcLalnY91+TWyw6assoNJWsscWKGZx
         Ijh3Uh18H8d+AddK1EFdKhyBvbuY5+whxPSai377JfdBSAYyvJmccGXrAAmX8hMGgThJ
         eUjDF3vzLirma7VnmEjy+KX9e6sqW1xbUf8ffSiA4Xnrf9El0I73nQUXrIYRDV4JNUb1
         aqag==
X-Gm-Message-State: AG10YOQqei5MJ5w0w/nB1U4VBb2X4xOKE/qG40Dl0MCtA7rHJC3Aj32/j2RmYDdaREhK1w==
X-Received: by 10.28.63.200 with SMTP id m191mr14416228wma.21.1456184354475;
        Mon, 22 Feb 2016 15:39:14 -0800 (PST)
Message-ID: <m1ziuspb5e.darpa@darpa.mil>
MIME-Version: 1.0
Content-Type: text/plain
Date: Tue, 23 Feb 2016 06:39:57 +0700
From: Hans Jerry Illikainen <hji@dyntopia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] php: stack overflow when decompressing tar archives
To: oss-security@lists.openwall.com

Hi,

it seems that no CVE has been assigned this issue which may be of
interest to anybody shipping PHP older than 5.5.32, 5.6.18 or 7.0.3
without FORTIFY:

https://bugs.php.net/bug.php?id=71488

-- 
Hans Jerry Illikainen
