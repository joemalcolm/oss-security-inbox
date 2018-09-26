X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3771" "Wednesday" "26" "September" "2018" "22:56:04" "+0300" "Alexander Gerus" "agerus@gridgain.com" "<EBCD031F-3A4D-4A3F-9E3E-ACC7A6C6A624@gridgain.com>" "91" "[oss-security] Apache Ignite: CVE-2018-8018, CVE-2018-1273, CVE-2018-1274: Notification on available mitigation" nil nil nil "9" "2018092619:56:04" "[oss-security] Apache Ignite: CVE-2018-8018, CVE-2018-1273, CVE-2018-1274: Notification on available mitigation" (number mark "U       agerus@gridg Sep 26   91/3771  " thread-indent "\"[oss-security] Apache Ignite: CVE-2018-8018, CVE-2018-1273, CVE-2018-1274: Notification on available mitigation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19586 invoked by uid 550); 26 Sep 2018 21:23:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11481 invoked from network); 26 Sep 2018 19:56:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gridgain-com.20150623.gappssmtp.com; s=20150623;
        h=from:mime-version:subject:message-id:date:to;
        bh=TtX7eDqVI3ZhxGvVXcfd3XcIPAEBkCHu0g6v6Ye0Mns=;
        b=bXHkJ8ocbE7RIuijf06jptR2vFpHEAZOK/Cf+Hx3aPI4sv9Cfm0CbNvjg2nN08oY6q
         pGGPAaAFdF5e9UnKsQ7b/0E+o0G1eceEkBqWBzv5Y5ZJrcpHdORjoVP8It1KhKOCeVPu
         Sn7chT0PK4GE+ju4qih/00FgDL9T4egEWlIyl8ZfhQnovnm6ucJT+TUPV9RZV2Zzpc4A
         pH2egWnV8cJkkiUdEJA8PT2vattrSXJ9FGAYP13efHKHFZhCBYEv05A8fSH57CA96lHH
         z5xPQm4mrm8zBz4jHXYxxMUSQQLmox/anQ6o7U4hi9xzylzIO2PVxYwGr9MCo3HO7ZPH
         OEFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=TtX7eDqVI3ZhxGvVXcfd3XcIPAEBkCHu0g6v6Ye0Mns=;
        b=k61zOQv91l0B1fFjEQKfgBgQlZyjy/Ig/ORveVFfuKJXPWZJUgxGsAp9R+wyz8UGRf
         9iP68WHF7oMODLSDVygBW9IFWXxMB3DWiNrfCs0Wf4tquQ8VLB/w/IKdZUULrcgIbJIy
         PJoDpTUomYW2ZQVrYQloZrshdgroAD87bVaaP9+s3VKqzNzZ5yM4Y6JUAPcxBlCkP780
         ugmJt/9qtu0EYQB37gRdpQtYNpjgoU6VrU7AYrCl/GX8bkan+uHNjcaVsuKUiH1SX5eP
         e34aQ3o9Y+EmVmOmfMqEdQ43XJOI0hLyQ2QNXa1qbXpyFUQ9yt6NC3mgVL5Nh14MwjOc
         VAMg==
X-Gm-Message-State: ABuFfoibhfCnOqpCKzMOeH5ZAU5kxII/EiTWX6L03GYP1Iio/ta7BOA2
	BKJQz57qEA644jY9IDGRfcRbmkOyVcE=
X-Google-Smtp-Source: ACcGV61/quAG0B2V/rnYseOufqYytv+5cB/KaWUQfBexlzsY/7UJ4LWHmRvtHwqdCwSkzjf5xvrBXA==
X-Received: by 2002:a19:e307:: with SMTP id a7-v6mr5127344lfh.125.1537991765749;
        Wed, 26 Sep 2018 12:56:05 -0700 (PDT)
From: Alexander Gerus <agerus@gridgain.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_E2649290-4263-4C3F-8012-17F3524FACE0"
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Message-Id: <EBCD031F-3A4D-4A3F-9E3E-ACC7A6C6A624@gridgain.com>
Date: Wed, 26 Sep 2018 22:56:04 +0300
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.9.1)
Subject: [oss-security] Apache Ignite: CVE-2018-8018, CVE-2018-1273, CVE-2018-1274:
 Notification on available mitigation

--Apple-Mail=_E2649290-4263-4C3F-8012-17F3524FACE0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

[CVE-2018-8018] Possible Execution of Arbitrary Code via Apache Ignite Grid=
ClientJdkMarshaller
Severity: Important
Vendor: GridGain Systems
Versions Affected:
GridGain Professional Edition 2.4.7 or earlier
GridGain Ultimate and Enterprise Editions 8.4.7 or earlier
Impact:
An attacker can execute arbitrary code on Ignite nodes via GridClientJdkMar=
shaller deserialization endpoint in the case when Ignite classpath contains=
 arbitrary vulnerable classes.=20

Description:
Apache Ignite serialization mechanism does not have a list of classes allow=
ed for serialization/deserialization, which makes it possible to run arbitr=
ary code when 3-rd party vulnerable classes are present in Ignite classpath=
. The vulnerability can be exploited if the one sends a specially prepared =
form of a serialized object to GridClientJdkMarshaller deserialization endp=
oint.=20

Mitigation:
All GridGain versions: make sure there are no vulnerable classes among your=
 custom code used in GridGain.=20
Ignite Professional Edition 2.4.7 or earlier users: upgrade to Ignite 2.4.8=
 or later version
Ignite Ultimate and Enterprise Editions 8.4.7 or earlier users: upgrade to =
Ignite 8.4.8 or later version
After version upgrade use IGNITE_MARSHALLER_WHITELIST and/or IGNITE_MARSHAL=
LER_BLACKLIST system properties to define classes allowed for deserializati=
on. Refer to documentation for more details:=20
https://apacheignite.readme.io/docs/securing-data-deserialization <https://=
apacheignite.readme.io/docs/securing-data-deserialization>
Credit:
The vulnerability was discovered by Man Yue Mo of lgtm.com
Reference:
http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-8018 <http://cve.m=
itre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-8018>

[CVE-2018-1273] [CVE-2018-1274] Apache Ignite impacted by security vulnerab=
ility in Spring Data Commons
Severity: Important
Vendor: GridGain Systems
Versions Affected:
GridGain Professional Edition 2.4.7 or earlier
GridGain Ultimate and Enterprise Editions 8.4.7 or earlier

Impact:
	An unauthenticated remote malicious user (or attacker) can issue requests =
against Spring Data REST or Spring Data=20

Description:
	Apache Ignite utilizes Spring Data Common library for some of its componen=
ts. The vulnerability affects Apache Ignite users who us Spring Data REST f=
or access an Ignite cluster via HTTP and Spring Data. Spring Data Commons, =
versions prior to 1.13 to 1.13.10, 2.0 to 2.0.5, and older unsupported vers=
ions, contain a property binder vulnerability caused by improper neutraliza=
tion of special elements. An unauthenticated remote malicious user (or atta=
cker) can supply specially crafted request parameters against=20
	Spring Data REST backed HTTP resources or using Spring Data=E2=80=99s proj=
ection-based request payload binding hat can lead to a remote code executio=
n attack.

Mitigation:
Ignite Professional Edition 2.4.7 or earlier users: upgrade to Ignite 2.4.8=
 or later version
Ignite Ultimate and Enterprise Editions 8.4.7 or earlier users: upgrade to =
Ignite 8.4.8 or later version
Credit:
Harendra Rai of NCR Corporation discovered the impact of the existing vulne=
rability on Apache Ignite.=20
Reference:
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-1273 <https://cve=
.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-1273>
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-1274 <https://cve=
.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2018-1274>

--
Alexander Gerus, On behalf of GridGain team.
E agerus@gridgain.com
gridgain.com
Powered by Apache=C2=AE Ignite=E2=84=A2




--Apple-Mail=_E2649290-4263-4C3F-8012-17F3524FACE0--
