X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1668" "Thursday" "23" "April" "2015" "13:05:46" "+0100" "Simon Waters" "simon.waters@surevine.com" "<3F51893C-E378-481B-8CB4-2AFA86015262@surevine.com>" "53" "[oss-security] Incorrect handling of self signed certificates in OpenFire XMPP Server" nil nil nil "4" "2015042312:05:46" "[oss-security] Incorrect handling of self signed certificates in OpenFire XMPP Server" (number mark "        simon.waters Apr 23   53/1668  " thread-indent "\"[oss-security] Incorrect handling of self signed certificates in OpenFire XMPP Server\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19632 invoked by uid 550); 23 Apr 2015 12:06:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19567 invoked from network); 23 Apr 2015 12:05:59 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-type:subject:message-id:date:to
         :mime-version;
        bh=63DaQlKLWLQqdBx1WyA8sx6mJzTrfK/fgiO6FBaPCsU=;
        b=WDRqisG/Q4wnkKqSXYbAK2anJB7TqKdUs4g7yIEim2C8C9kyTmiBqqf35oNjTBFCN1
         DxUYhNMLwrzmEPmsRRd3tltsAaDydO3PVyMBV5zw/Bm2xjjFoETW5gjpRHWF4Y4+65r5
         scIDDewK0ZHF/JPtB34iHrxJGPOGlGvSVuQldCco7IrDOHWte8nMOi4vRFwHCnTl8m8q
         3vRbHozuZjXLd4wDjGLj15X5fPoJVOci9vBFlq2r/sNoTOLtpnPa/qlVVoIsCa5NWIZW
         pe8cD3gzAeQlRHiv1m6Ye18O19PUc2x2ZOFEFf4WrI9CRxTPpC+snKIrXzkOWZKVXifi
         GnuA==
X-Gm-Message-State: ALoCoQk9G6G1Xyg5dmQkFUIpweZ1uE3omRJgEx43A2AM0rzjp3HkS1hxkeqDscNegH/Ym3M28a+C
X-Received: by 10.194.187.41 with SMTP id fp9mr4909951wjc.58.1429790748549;
        Thu, 23 Apr 2015 05:05:48 -0700 (PDT)
Content-Type: multipart/alternative; boundary="Apple-Mail=_476B104D-8299-497A-AC95-291C0476B42D"
Message-Id: <3F51893C-E378-481B-8CB4-2AFA86015262@surevine.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Thu, 23 Apr 2015 13:05:46 +0100
From: Simon Waters <simon.waters@surevine.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Incorrect handling of self signed certificates in OpenFire XMPP Server
To: oss-security@lists.openwall.com

--Apple-Mail=_476B104D-8299-497A-AC95-291C0476B42D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Incorrect handling of self signed certificates in OpenFire XMPP Server


Affected software: OpenFire XMPP server
Affected versions: 3.9.3 and earlier
Vulnerabilities addressed: CVE-2014-3451, CVE-2015-2080

Openfire is a real time collaboration (RTC) server licensed under the Open =
Source Apache License. It uses the widely adopted open protocol for instant=
 messaging, XMPP (also called Jabber).=20


Vulnerability details

The OpenFire server would incorrectly accept self signed certificates poten=
tially allowing spoofing attacks.

This issue (CVE-2014-3451) is fixed in release 3.10 (OF-405).=20

We would like to thank Kim Alvefur for reporting this issue.


Notes on release

The 3.10 release of OpenFire also addresses a reflected XSS issue (OF-845),=
 and upgrades the Jetty library used (addressing CVE-2015-2080).



Release announcement (includes link to download and sha1 checksums)

https://community.igniterealtime.org/blogs/ignite/2015/04/22/openfire-3100-=
released <https://community.igniterealtime.org/blogs/ignite/2015/04/22/open=
fire-3100-released>

Simon Waters
phone  +448454681066
email  simon.waters@surevine.com <mailto:simon.waters@surevine.com>
skype  simon.waters.surevine <skype://simon.waters.surevine>

Participate | Collaborate | Innovate

Surevine Limited, registered in England and Wales with number 06726289. Mai=
ling Address : PO Box 1136, Guildford GU1 9ND
If you think you have received this message in error, please notify us.


--Apple-Mail=_476B104D-8299-497A-AC95-291C0476B42D--
