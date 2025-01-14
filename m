Received: (qmail 14110 invoked by uid 550); 14 Jan 2025 18:04:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3311 invoked from network); 14 Jan 2025 18:02:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1736877760; x=1737482560;
	i=johannes.schindelin@gmx.de;
	bh=VNSFZJg6dXUf6axSWmdyO+NQD2wWnaFb8meC54YxwuU=;
	h=X-UI-Sender-Class:Date:From:To:cc:Subject:Message-ID:
	 MIME-Version:Content-Type:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=LGnYKFDfYY3q7316SPosCHzy7TCjnC3RSAdwYuhBWgGUGNjChHoTZSw5pSod8oUa
	 6gWCvlnYdFUDfLkQUMeBzPDnuGAa1M/nkSH6U/o+uEi9x0LT2WapSMRoqIXTzuFow
	 A78F17e2BQcwcU5GH5IdjJEY8MTS28Ga2bSrT49lH2TSQwwUzizHht+yzKKdCpEKA
	 DgXc/18iu9EN10LSIMHvaWCBEOPC6vwEose4q3QRITay+7qc4d1HueJ53nCr7Z0ID
	 D/qd0DoPKkTKuWEdvziQzVY37u2VuMRCQeOMcKA/zYhIMhx6KezF9ywkbnAnN0YF4
	 rhKtZ8pCMWTVKcmFBg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Date: Tue, 14 Jan 2025 19:02:40 +0100 (CET)
From: Johannes Schindelin <Johannes.Schindelin@gmx.de>
To: oss-security@lists.openwall.com
cc: git-security@googlegroups.com, Junio C Hamano <gitster@pobox.com>
Message-ID: <a1fe6b3c-a51b-01e4-a65a-2a416fdcc1e7@gmx.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323328-1580906092-1736857704=:24843"
Content-ID: <93b2729d-1673-7fb8-71ea-f41605f5fbab@gitforwindows.org>
X-Provags-ID: V03:K1:ACsYsckJ8uWbDl5SFXlavXXnBikfxTn7KfwR74osAuMn3U9qkoE
 8skCCPAEtRWuPoloYaZgNJOVK4YtXo0Vtqc509Iso2iXZqmQ7DWxZGVEFf/mUgzQXBwY+dd
 lgEmAB8dGwISvU62KX33bsqEa4wAVZ+nBlTqq+9lrjWF8M2FIg1bjJ/xYLNGv7iKKrzBQV2
 TAPluNZHxUIeb7LVgUl4Q==
UI-OutboundReport: notjunk:1;M01:P0:UQle+M1Aiac=;u5R7Zcq/o22e0sJ3IjmiEeNOkyO
 11ZUB+zTFfJOwgHhCj9tNU/9lehV8xTtshX18sj3tblm2o+DMq8tEl5Uing7KQZsrPzxJWRq0
 V3ppD1o/min/UuoKi7i2amJWkhEw0l4DC71VO0Zs3j5Fs//+2mf1hKMQmg2qLDLerzt81u6ww
 0/myFx3nF0bek1fXNwxrGIDrRU4k2sKCUOVlrJFdPXoNS5McPeVyyeiBywHXWjSQ2sB9bOoTF
 30tap9QtGtSlWCEJYagLnfCIihURE7y023Dy+piBsPGx+Uf7VhtDkZXUamfhRUYk4pwnt854W
 0wwFWKdKYbnX61MxeBh7qda4j1GQ/5KCStuXi5jtBXdwIfmkhuOIUtbJ3tEUPiK9NsqTmmcUx
 xCdrgb9t8vegJLTDbZ9hQD6+f3EFAj+wbhj4INguQjmj8vs1CdflVPrd/PhuOPmtw1ZluXoTd
 Kt6tQqbq66NSXK4Tfkv++p8p5mzZTVKpUqKIZcfDTys0pNEHKohD0aRZ+HFe43LR1UPow2pno
 UZjQxZ5BRc+1zTOKafRObqphNzk3ovb4Yw2bymFFACdiYvC/BWGNGMTSVUz0/hyXNe3tZLllA
 CL6ceZKLRbW+e2LkUKoalTw0Nl30F0dpaU22JOZiK0894fmqPxVysh38LlfN2XaEuqIprGnd5
 OJ74FSQ/SHzusbSUEBZzJsOla2mE8hoEoesZeFfA2oq8wXINEssmUksEAvttGyDjS/73NsjOI
 HxnE2KS/hJTT4vhlEDFYP7Or129sN7lzotU1OBVnfIiaswPlVyudUGohtESmhnUf212+feOLS
 ER5Ii++RGOptZSfmE2UCGyDwLiZCZm0GzSz/3/H2PU4ENNgeIPeZen5r4gi9zIVHHsOnJ1PEp
 41FsEZGKi0ENm2men+DsrSUgdP1tg87LDJMWmvhZ5qFKbwgOrraWYwJUJCycz6J3Awiy9DX9R
 jt6gPYTNDZElO+tJRthYpRmfOuD+yzjxOud2DlMe5wuM+sfI7ep5Fv8xeEu28u5powIKDFJ3Z
 t3Szf2M/4Jsks5hTKO46dCXib7ArwooGuF6c0WTtfu84XjVKtdpmoegJc2EMl0gATj908FpFQ
 tbelYJ3JPG9CpT9XerxJW/0HHKfAj77p/Mr0wfIAtc5CX1cLt3H1lKoIERjBLU49W+wfJkKdU
 =
Subject: [oss-security] git: 2 vulnerabilities fixed

--8323328-1580906092-1736857704=:24843
Content-Type: text/plain; CHARSET=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-ID: <5025edbf-01ae-a6ce-a113-7f0190ce4a23@gitforwindows.org>

Team,

The Git project released new security bug-fix versions today, January
14th, 2025: v2.48.1, v2.47.1, v2.46.3, v2.45.3, v2.44.3, v2.43.6, v2.42.4,
v2.41.3, and v2.40.4.

The addressed issues are:

    - CVE-2024-50349:

      Printing unsanitized URLs when asking for credentials makes the user
      susceptible to crafted URLs (e.g. in recursive clones). These URLs
      can mislead the user into typing in passwords for trusted sites that
      would then be sent to untrusted sites instead.

      A potential scenario of how this can be exploited is a recursive
      clone where one of the submodules prompts for a password, pretending
      to ask for a different host than the password will be sent to.

    - CVE-2024-52006:

      Git may pass on Carriage Returns via the credential protocol to
      credential helpers which use line-reading functions that interpret
      Carriage Returns as line endings, even though this is not what was
      intended (but Git=E2=80=99s documentation did not clarify that "newli=
ne"
      meant "Line Feed character").

      This affected the popular .NET-based Git Credential Manager, which
      has been updated accordingly in coordination with the Git project.

Ciao,
Johannes

--8323328-1580906092-1736857704=:24843--
