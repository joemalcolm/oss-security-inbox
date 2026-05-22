Received: (qmail 5326 invoked by uid 550); 22 May 2026 19:38:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15391 invoked from network); 22 May 2026 11:11:54 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1779448299; bh=k1OjWhJoC8SK9IF3Tt+139QfM1+dEO1N43C1488ysA8=;
	h=Reply-To:From:Date:Subject:To:From;
	b=NSJLtF0mmTUUY0Uidw2Z2W0wfD5AUqhNfZpzAEWHHlaJQ2/1iL10C2D/rYwBHJ/Fn
	 E4p5yPRzno90fpfRO7J4E877XjMbXilEmHGuS9X6e8CDguWFTqZPZLDUgTYhES8KXT
	 bnQIWrunW/m2aXFHTDsoCG2/fiSEk6Jzm23ULAFA6DbXqVDcRgPj6D3Ftry3VqVXmM
	 aBVl+P/S1zR+v4wy9VofVirYWfeB9jsemsuRcJSuYVCEp+qEJAyo/z336dJAgLjrj8
	 J+O2d9rj+yT8L3JgMrRACHghzymamROKXJFnulGgK7lRE5ftf2moJ4P7D/GyVkeSdB
	 CVB2NdiY1hbHg==
X-Gm-Message-State: AOJu0YxTgqPesbro1XUaudLhSv7hD/TCNr5W8sLAEuT+jE9RrFPpZhUA
	WsCyBqaT1ufxaw2//fwk5N664RJg7AAp4hN15TAIDtwumOTpsuE7anIQLp/nz2Xuk9Ur2y4yTWy
	lR92j5AjyB1TdNPWQYwMnmo4QSogjf8k=
X-Received: by 2002:a17:902:d4c4:b0:2b2:4d78:eec2 with SMTP id
 d9443c01a7336-2beb0711965mr30992765ad.18.1779448298744; Fri, 22 May 2026
 04:11:38 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 22 May 2026 12:11:27 +0100
X-Gmail-Original-Message-ID: <CAB8XdGAm2KKAgc7YTZbXTZruV+yyrLsS0YCx33A7kp5SozwCHg@mail.gmail.com>
X-Gm-Features: AVHnY4JCEDYQn6v6Q9hAd8W4xu44A1WvkP-_YHofAWP9IYiWsg_i9EuDFJrxVe4
Message-ID: <CAB8XdGAm2KKAgc7YTZbXTZruV+yyrLsS0YCx33A7kp5SozwCHg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2026-44618: Apache CXF: XXE vulnerability in WS-Transfer functionality

Severity: important

Affected versions:

- Apache CXF (org.apache.cxf:cxf-rt-ws-transfer) 4.2.0 before 4.2.1
- Apache CXF (org.apache.cxf:cxf-rt-ws-transfer) 4.0.0 before 4.1.6
- Apache CXF (org.apache.cxf:cxf-rt-ws-transfer) before 3.6.11

Description:

Insecure XML parser configuration in Apache CXF's WS-Transfer module
may allow attackers to perform XXE attacks.
Users are recommended to upgrade to versions 4.2.1, 4.1.6 or 3.6.11,
which fix this issue.

Credit:

Credit to IcySun (icysun@qq.com), =E5=B9=BF=E4=B8=9C=E4=B8=9C=E6=96=B9=E6=
=80=9D=E7=BB=B4=E7=A7=91=E6=8A=80=E6=9C=89=E9=99=90=E5=85=AC=E5=8F=B8 (find=
er)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-44618
