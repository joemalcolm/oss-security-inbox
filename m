X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5185" "Wednesday" "11" "December" "2019" "10:33:45" "-0600" "Gage Hugo" "gagehugo@gmail.com" nil "113" nil nil nil nil "12" nil nil (number mark "U       gagehugo@gma Dec 11  113/5185  " thread-indent "\"[oss-security] [OSSA-2019-006] Keystone: Credentials API allows listing and retrieving of all users credentials (CVE-2019-19687)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2019-006] Keystone: Credentials API allows listing and retrieving of all users credentials (CVE-2019-19687)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16274 invoked by uid 550); 11 Dec 2019 16:53:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28054 invoked from network); 11 Dec 2019 16:34:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GciKDZ5/6axXWnMEg2Sagoz6XmhJourec7kuHu8Mxz8=;
        b=YQmRaaKbx0Bz2YFNdYo/ABxXSKT9tbQIxTa+t1QzKmJXx6YwySWDoxNfT1BFtrjzOe
         Sjh0qnm0L5BUEF9652fcIdr8qn++rADwjbgeCEOv92ab4TXtaw7QX3WB0mixp7Qcdryq
         nyJg9mQFfwFSGcPXojaTSb25XfitCY7DS85byoe81HmSNc0CmMrVIoCLMwJbfng0UKtm
         f4SImiWHRQY3ACApmfS6kyLvIsMSf/AYcZAWs0bhVK+NWXYd8HIZv8aFoQBOno0cgs75
         BxzbTcfHFHZxyqZUjUEJKnUX8Bmo06dbUnHZci0yfUOusAe7IOt6XGTH/ddxOrLqBFm5
         IkJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GciKDZ5/6axXWnMEg2Sagoz6XmhJourec7kuHu8Mxz8=;
        b=ikFvOPLXV/30w9wMaJ6GGstiXuEQM6ZVj0CBCYfxs/Gao8AySs5Bj4UrCu85sKX0lT
         gcMBsepMgxgf2srSXFX/7JOQ33uxDxMgInH/GkzhjvRG4iArYRh/PxpirhN9ZJOb/0/V
         /XEyPooTtJj2yuMVxWcoby+33PLtq8hJPh4FjA0spsF542ofUdVsfbUNmv6ZYCQTS4CL
         kZJRPJ9XYOYrnO0OLsG10r/D5V3HBZ/rbRENjzyDdP5vzsoCDBJrULerOt7zMCaemqZu
         Wz0lHOOr1upUbRIawmpqKjqOX4X0+/rXgchQOxGDNdFkCjhkPv8o9VexHU9zud3o2pF5
         J1Xw==
X-Gm-Message-State: APjAAAUo60tUFq7ZpGK1xLHARbFDwloPp/yT6CzApSBS48lpwJSHn9WW
	vLw6TcNSgCdJt0KnW+AgeaTven33RWzGc8+KCxGN2wK3
X-Google-Smtp-Source: APXvYqzINYsczpt5zOxPWSeUWQcoKeywAj0c8QHMfcbAVFjgs414S6hmdfBWpbkYDhp+fTyL9EWQEHcdSHPP1E2xkb8=
X-Received: by 2002:a25:a143:: with SMTP id z61mr532265ybh.367.1576082036465;
 Wed, 11 Dec 2019 08:33:56 -0800 (PST)
MIME-Version: 1.0
From: Gage Hugo <gagehugo@gmail.com>
Date: Wed, 11 Dec 2019 10:33:45 -0600
Message-ID: <CAE4Awf8Sifdqyy_oXTBVieKLLQW66UXMvGkE1VZpuUmOA+98qQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000ebc165059970312f"
Subject: [oss-security] [OSSA-2019-006] Keystone: Credentials API allows listing and retrieving of all
 users credentials (CVE-2019-19687)

--000000000000ebc165059970312f
Content-Type: multipart/alternative; boundary="000000000000ebc161059970312d"

--000000000000ebc161059970312d
Content-Type: text/plain; charset="UTF-8"

=====================================================================================
OSSA-2019-006: Credentials API allows listing and retrieving of all users
credentials
=====================================================================================

:Date: December 09, 2019
:CVE: CVE-2019-19687


Affects
~~~~~~~
- Keystone: ==15.0.0, ==16.0.0


Description
~~~~~~~~~~~
Daniel Preussker reported a vulnerability in Keystone's list
credentials API. Any user with a role on a project is able to list any
credentials with the /v3/credentials API when [oslo_policy]
enforce_scope is false. Users with a role on a project are able to
view any other users credentials, which could leak sign-on information
for Time-based One Time Passwords (TOTP) or othewise. Deployments
running keystone with [oslo_policy] enforce_scope set to false are
affected. There will be a slight performance impact for the list
credentials API once this issue is fixed.


Patches
~~~~~~~
- https://review.opendev.org/697731 (Stein)
- https://review.opendev.org/697611 (Train)
- https://review.opendev.org/697355 (Ussuri)


Credits
~~~~~~~
- Daniel Preussker (CVE-2019-19687)


References
~~~~~~~~~~
- https://bugs.launchpad.net/keystone/+bug/1855080
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-19687

--000000000000ebc161059970312d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>OSSA-2019-006: Credenti=
als API allows listing and retrieving of all users credentials<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br><br>:Date: December 09, 2019<br>:CVE: CVE-2019-196=
87<br><br><br>Affects<br>~~~~~~~<br>- Keystone: =3D=3D15.0.0, =3D=3D16.0.0<=
br><br><br>Description<br>~~~~~~~~~~~<br>Daniel Preussker reported a vulner=
ability in Keystone&#39;s list<br>credentials API. Any user with a role on =
a project is able to list any<br>credentials with the /v3/credentials API w=
hen [oslo_policy]<br>enforce_scope is false. Users with a role on a project=
 are able to<br>view any other users credentials, which could leak sign-on =
information<br>for Time-based One Time Passwords (TOTP) or othewise. Deploy=
ments<br>running keystone with [oslo_policy] enforce_scope set to false are=
<br>affected. There will be a slight performance impact for the list<br>cre=
dentials API once this issue is fixed.<br><br><br>Patches<br>~~~~~~~<br>- <=
a href=3D"https://review.opendev.org/697731">https://review.opendev.org/697=
731</a> (Stein)<br>- <a href=3D"https://review.opendev.org/697611">https://=
review.opendev.org/697611</a> (Train)<br>- <a href=3D"https://review.opende=
v.org/697355">https://review.opendev.org/697355</a> (Ussuri)<br><br><br>Cre=
dits<br>~~~~~~~<br>- Daniel Preussker (CVE-2019-19687)<br><br><br>Reference=
s<br>~~~~~~~~~~<br>- <a href=3D"https://bugs.launchpad.net/keystone/+bug/18=
55080">https://bugs.launchpad.net/keystone/+bug/1855080</a><br>- <a href=3D=
"http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-19687">http://cve=
.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-19687</a><br></div>

--000000000000ebc161059970312d--

--000000000000ebc165059970312f
Content-Type: text/plain; charset="US-ASCII"; name="signature.asc"
Content-Disposition: attachment; filename="signature.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_k41iiif80>
X-Attachment-Id: f_k41iiif80

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KCmlRSXpCQUFCQ2dBZEZp
RUVXYTEyNWNMSEl1djZla29mNTZqOUszYit2UkVGQWwzeEdlVUFDZ2tRNTZq
OUszYisKdlJHSUZ3LzhDTm5MMmFEcU9pKzdBY0NINWFsa25Wb1dKUzVEZC9F
eW1RVkRJMDd2YmU0eW5lZ2h3Y1F3RXM2UwpCVVIyNSt4QjV1a2pQSmR4c0lM
VHJtNFViaEVNUFV6amdUN1BRTjcxUTEvZ2U4WFkxWUlSekJ3TW5qWW0wblFy
CnNZUkJsOEwxT1EzQ1FzQXRuSCtoQi9xTUNreGxRZVh0T01pQmN6My8xQjJx
Y0gvQXJ1WHRKeGhWRDlzd0pIZXcKZk9uNVdOZE9EbERQS0NtbHMweEs2Y3Na
WDRSQmNzWGMwNGFQcjNmU3VPSXpjd05aMjYwc3IrOE1mZVRyM21pMwpTTzR0
MnVZUWdRbWhnYVBudk0zdHlNRmErcnkrbUZ2cTZNRmlnUFVocCtBa2QwZVlh
c0hhM3JnNi9JL0xRTzBaCkltV0NTQW5qbnRXaWdieWhRaExyeElJRWRveHUv
dmdUVkNjaVBXdGd3TWZ4RE9MdzFqaGoza0J6ZGViM1M1cEEKeW95WTErSDhu
WGF6ZTJVUU9mYk0xRkh5TzJjVGtPanl6VmRickY1Ymc4dk5sNGhhTDVlZ3U2
VVZEMDE4SDVwYwp2b0p3Y3J4Z0pVb2JPK2tUenVPcGpXemxIZXFScnlMWERo
SDE5MWNWS29VQklnSXBpMEtFYnlCT0lBd01OY2lVCnZrdk5xUkRpOXJHZmFN
K1FXVVdnZjEyRzJGUm5rcW1GcWJubExZNmhwejV1aW51ZUVWbjdpVEMyTG5m
QkErVW0KR1gwcXNXdjRMM2RRWGY5cnRUZENOcEd2dzduc0JHY3FZcVV3OUM3
cGlBVktmR0RaNkxCaXVRYnNlVytPTkxDSwo3dnE3ckx5SnE5SkNqd0lXcjUz
ZDhsTHAwaExUclYvYkg1aGNJQ3VzRVkzV2ZIK2NKWnM9Cj1wVWtsCi0tLS0t
RU5EIFBHUCBTSUdOQVRVUkUtLS0tLQo=

--000000000000ebc165059970312f--
