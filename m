X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1384" "Thursday" "29" "September" "2016" "11:50:28" "-0400" "Mike Kienenberger" "mkienenb@gmail.com" "<CAM1yOjZV28=4LFjZtYWPB5W6HXRzxVttU2eXaUzCfUyLakN4Zg@mail.gmail.com>" "49" "[oss-security] CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability" nil nil nil "9" "2016092915:50:28" "[oss-security] CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability" (number mark "U       mkienenb@gma Sep 29   49/1384  " thread-indent "\"[oss-security] CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32553 invoked by uid 550); 29 Sep 2016 16:09:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25630 invoked from network); 29 Sep 2016 15:51:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=8XppX2JZSFAr6Om4nw2auB0GodeKb5+eH/C67EfV+qM=;
        b=O0O0F8hCn0aV+Nf3Y+O3NO396qPks4NByPSmxxFFXQq8zltCLGswuvyLefnNmqeoIT
         it08Cod2g2fsYb+bS3I/pAfCfZaAlVflOoftlYQcWIxQmShsf8X6hp+J/8edJ9xkyHyv
         DUCATE/9MIBzrFQy+xGeuKfqr5bNQ0ZW2lG1Doz/F/pVtJuz9aYx66x0JBK0HSPJBMID
         VBCRQHIUg8DroD2OV7tYvhoPxBTGuidUDLvaaja3nVSqbUbPyoLHfuuePM+dfd9f2VME
         PejvDEvZLfBT/QjQ14O1p+s0uCFZEHVMOeHRGaKkexYqbxIkVC9adbGiOvmD7pyMTWIU
         DBvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=8XppX2JZSFAr6Om4nw2auB0GodeKb5+eH/C67EfV+qM=;
        b=TdIlgKmPTmtDnzMY+FlW4vAe2Zv4VYgT+VmxRcCpIxgXy9jnEefhBcmPYEDCGhwx2j
         F4TSrwWNGIO321zhWaeBkSRpTQzpfVH2P6+TC2XKOgCev0BHo7dvTcgUbYpbzYPTdHPQ
         LChP1FTToKNaCuCPhClVWGEWY2sxa+C3uDQk8VBGKe2Ci6ZNcMfNVpzbrAYPN+VeRctg
         1vbSJo71zWkH1pIyB4685QxdgzmIQvEwY/OWHEA0TXDDVCbSplpIML4qH8FlFkr6aVEO
         jfHwmW3N8EHg12FSWeFl+DZx83WAOdgmfatMkniqR64bG0mjF+/ThzphjgVdKwt7HKgT
         ks2g==
X-Gm-Message-State: AA6/9RnMJeEe34MiHWdnYqOzOLVsa45FZEuGW/zI/enM2fvr9LKDEmBpm9eUS9aIyr/5AmoZ7XQ4n+7oh6GqJg==
X-Received: by 10.202.52.213 with SMTP id b204mr2108226oia.156.1475164249383;
 Thu, 29 Sep 2016 08:50:49 -0700 (PDT)
MIME-Version: 1.0
From: Mike Kienenberger <mkienenb@gmail.com>
Date: Thu, 29 Sep 2016 11:50:28 -0400
Message-ID: <CAM1yOjZV28=4LFjZtYWPB5W6HXRzxVttU2eXaUzCfUyLakN4Zg@mail.gmail.com>
To: announce@myfaces.apache.org, MyFaces Development <dev@myfaces.apache.org>, 
	MyFaces Discussion <users@myfaces.apache.org>
Cc: "security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2016-5019: MyFaces Trinidad view state deserialization security vulnerability

CVE-2016-5019 Apache MyFaces Trinidad information disclosure vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Trinidad from 1.0.0 to 1.0.13
Trinidad from 1.2.1 to 1.2.14
Trinidad from 2.0.0 to 2.0.1
Trinidad from 2.1.0 to 2.1.1

Description:

Trinidad=E2=80=99s CoreResponseStateManager both reads and writes view state
strings using
ObjectInputStream/ObjectOutputStream directly.  By doing so, Trinidad
bypasses the
view state security features provided by the JSF implementations - ie. the =
view
state is not encrypted and is not MAC=E2=80=99ed.

Trinidad=E2=80=99s CoreResponseStateManager will blindly deserialize untrus=
ted
view state
strings, which makes Trinidad-based applications vulnerable to deserializat=
ion
attacks.

Mitigation:

All users of Apache Trinidad should upgrade to either 2.1.2, 2.0.2, or
1.2.15 and
enable view state encryption using org.apache.myfaces.USE_ENCRYPTION and re=
lated
web configuration parameters.
See http://wiki.apache.org/myfaces/Secure_Your_Application for details.

Upgrading all Commons Collections jars on the class path to 3.2.2/4.1
will prevent
certain well-known vectors of attack, but will not entirely resolve this is=
sue.

References:
https://issues.apache.org/jira/browse/TRINIDAD-2542

This issue was discovered by Teemu K=C3=A4=C3=A4ri=C3=A4inen and reported b=
y Andy Schwartz
