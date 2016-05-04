X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2819" "Wednesday" "4" "May" "2016" "10:47:11" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0PxH3R6erUL1y=zoqpuxTh3y8Kxu_D6i60gnC=F=EcWA@mail.gmail.com>" "75" "[oss-security] Older OpenSSL RSA key/64 bit bug (now with added CVE!)" "^Date:" nil nil "5" "2016050416:47:11" "[oss-security] Older OpenSSL RSA key/64 bit bug (now with added CVE!)" (number mark "        kseifried@re May  4   75/2819  " thread-indent "\"[oss-security] Older OpenSSL RSA key/64 bit bug (now with added CVE!)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18116 invoked by uid 550); 4 May 2016 16:47:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18095 invoked from network); 4 May 2016 16:47:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=Sm/0U29r4htFZjN/HW17IHreoGtVfAi8LWkkTAqkx2M=;
        b=fZuYtT7Pd+dxki1F8SZGcMdB/37TxRtGYbvBJRDSqOPjht63SmS0eW4fJRgcpG0Rac
         GAg9Iv4E+IYLd6V9SYa8ZkgBE6hLJrP5V0LPszijKSTrPK+kYibnDz4hn+G0GcZRrUEZ
         +dYuVeKNnE2SFU+L/9HpUsOEz5rxz9ZAixJlDhlLNQgwgbmxLKGf07q70aFp8X9JmKWp
         TBffe2n0wIiAsrC5u7iZ8MXMOkDtLo9aR0uYBAfrjq9AT9xZJ1RDgSlrYkdZOmGxcnc2
         YdGKouKqHD0CBpyrpsy7OnbAFApigEkJjGV7MwUV4mSl6MVJvMitJdnScLhTjI0utk1O
         d7XQ==
X-Gm-Message-State: AOPr4FV24uHGM3uduVL3M4DkaZuyQ20qfFreBIeXMh2IQqlREabQb+t050eLd4Lte5zvfYRWiJjetIG+ClxFdFcB
MIME-Version: 1.0
X-Received: by 10.37.6.139 with SMTP id 133mr5330292ybg.46.1462380431537; Wed,
 04 May 2016 09:47:11 -0700 (PDT)
Message-ID: <CANO=Ty0PxH3R6erUL1y=zoqpuxTh3y8Kxu_D6i60gnC=F=EcWA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113c55c02636f1053206fad5
Date: Wed, 4 May 2016 10:47:11 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Older OpenSSL RSA key/64 bit bug (now with added CVE!)
To: oss-security <oss-security@lists.openwall.com>

--001a113c55c02636f1053206fad5
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: <cve-assign@mitre.org>
Date: Wed, May 4, 2016 at 9:25 AM
Subject: Re: [oss-security] broken RSA keys
To: solar@openwall.com
Cc: cve-assign@mitre.org, kseifried@redhat.com


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> On Wed, May 04, 2016 at 07:50:24AM -0600, Kurt Seifried wrote:
>> Is this something we should look at with respect to CVE assignment (ala
>> CVE-2008-0166)?

> The old OpenSSL bug from 2000 could get a CVE from 2000, since that's
> when it was publicly reported

>>> http://marc.info/?l=openssl-users&m=95961024500509
>>>
>>> Under 64 bit HP-UX,
>>> the problem manifests itself as RSA_F4 becoming 0x1000100010001. The bug
>>> is that 1 is an int, and according to the ANSI C standard, shifting more
>>> than the size of the an expression is undefined. On this architechture,
>>> only the 5 least significant bits of the shift is used, thus 1<<32==1

Use CVE-2000-1254. The commit is:
https://git.openssl.org/?p=openssl.git;a=commit;h=db82b8f9bd432a59aea8e1014694e15fc457c2bb

(We are not sure how this CVE ID would be used. It is possible that
nobody will use this ID for OpenSSL risk management, but someone will
use this ID in deciding to pursue further research on "shifting more
than the size of an expression" issues.)

If this ID is sent in an oss-security followup, the Subject: header
should be changed to mention OpenSSL. Also, MITRE currently plans to
publish the CVE for this along with the CVEs for the OpenSSL
2016-05-03 issues, which should be very soon.

- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXKhODAAoJEHb/MwWLVhi2bREQAKYSRGk+hCcwiAy19+RYQC1g
AvRnK7+5kJnLXVdQO7K2yPQo1aLHcKgbmv+VNcu9tf4kJg/7ebROecdgrtWXHzI1
yksyozDzX574LtFuyBWDax7ethEWdHY1BSmSWRIUOmFj6IOTSks8eI7T5rgEd+Gp
dB2kRLSKEWlPV1ld6B//bfnW1bo/cbfuEgxCkpYh97zwbADSZdGltTqpvzQGt6d/
BRCDLoV688aTS1lEqrrmxcf4BaAWUa1TMHuCg3GSuTfnu8iVDvOuuMrvDItpmovk
5/Z3G/Z23RHwAq6R8yMmXPdDq4aelS0IzxuFCCEU9zCcZsAc90HP1Vt6CDgOQagW
kVRMi2wTVsy+FqlMyDN5CeGDmwlKe5BegAB/sanRzUlv4gn0/rpF223bvgKcYYRc
4LJlOMxhn+eymktp+8neJhwlR5rWzC2Na4HxJFitKQmv2FnQhzYD3BvNyhQSPwJ9
k4ky1/+/T6WyxNNXsA2DnqbYBgDD4crq58IDHfdVEBXpq+wiyGT+b32FS1+fLC29
cIi97XUrzUh6Fzvx1m3Bjwbt31B/lWs13iNy8qz5Z+91Y6ud5UERqjZ2ogv/AVIX
Na3ycUizKATKRdfr2WuEOFXR5Cu+rLB8ayPVlKAc8bNeUcWpOoWUrWTsTyBC0rzT
yka/lgb3X77XRXs9gYgt
=yEbu
-----END PGP SIGNATURE-----



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113c55c02636f1053206fad5--
