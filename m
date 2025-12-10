Received: (qmail 5124 invoked by uid 550); 10 Dec 2025 15:58:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1125 invoked from network); 10 Dec 2025 07:13:37 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1765350695; bh=KdW0NZmhHGmKv12oFqtPRwghjHy4ERYai3Eta3Na/Ss=;
	h=From:Date:Subject:To:From;
	b=ahLYvGA8AL4SmbT0LpZz/9ldCAm+k4HpDRmHhBlthhR3G5vbp9FiJ/WmgwjMNJWmS
	 rM1w14Jyj6tyeHXu6UlHdUGSbsbhTDewK+7SiZYYw62roDTSPmdqV+VFKqhvil3XA/
	 SnbWXrzmUXa/lk2iX97lXd2wQR4jsFBzI/fctuqgTkL0BzaFyNHqU4N/d6e+CbqwDg
	 8v01u/AMbWDL1/qOzZXyfoXlACqV3/QrJ8uZ0jO8rZpP2LiejDW0W5AUzlybCg8cF5
	 EgZmDFGIIJpVIqV2THsGCo0a0Oq9IDuPlr/eNKlYu8P7MG+Eo8lfpBtgar37ZASrjZ
	 hAu/1qC3RTW9A==
X-Gm-Message-State: AOJu0YyHivNsZHJ1VyR9e9zlTXPdT41+9bLCwjHYvwodjsoloJwySLOQ
	n0y02HFEs2HusyuFN7gOUM08TKGVPB/bIapB0JV0kujHmCZmtKgEoewUjflqrxMWmFbJBm/Rd0P
	7yPdwR0AdTOgepptgwASH1tRF3n7CnEM=
X-Google-Smtp-Source: AGHT+IGkFxatWTEQ49S5TteMkjQuYD6Hd8qXo1Ae/UfeAzhF4gzey4R2jpDXJTFL5JntuG2/EQllnkbqU51M0BGzlQY=
X-Received: by 2002:ac8:7f86:0:b0:4f1:ac31:45f0 with SMTP id
 d75a77b69052e-4f1b19d4c42mr18410141cf.30.1765350695235; Tue, 09 Dec 2025
 23:11:35 -0800 (PST)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Wed, 10 Dec 2025 08:11:24 +0100
X-Gmail-Original-Message-ID: <CAMopvkNA3BCPxeo5ndy9eRntyTf_B37pdTCd5ZgCqOOpZ=208Q@mail.gmail.com>
X-Gm-Features: AQt7F2p1UzRtvPOv1a_eIEcBwBTq6KOpFQ2m_MImuzFBf01jpxwWQ-VbjkO8iFE
Message-ID: <CAMopvkNA3BCPxeo5ndy9eRntyTf_B37pdTCd5ZgCqOOpZ=208Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2025-66675: Apache Struts: File leak in multipart request
 processing causes disk exhaustion (DoS) - version ranges fixed

Severity: important

Affected versions:
- Apache Struts (org.apache.struts:struts2-core) 2.0.0 through 6.7.*
- Apache Struts (org.apache.struts:struts2-core) 7.0.0 through 7.0.*

Description:
Denial of Service vulnerability in Apache Struts, file leak in
multipart request processing causes disk exhaustion.

This issue affects Apache Struts: from 2.0.0 through 6.7.4, from 7.0.0
through 7.0.3.
Users are recommended to upgrade to version 6.8.0 or 7.1.1, which
fixes the issue.

It's related to https://cve.org/CVERecord?id=3DCVE-2025-64775  - this
CVE addresses missing affected version 6.7.4

Credit:
Nicolas Fournier (reporter)

References:
https://cwiki.apache.org/confluence/display/WW/S2-068
https://cve.org/CVERecord?id=3DCVE-2025-64775
https://cve.org/CVERecord?id=3DCVE-2025-66675
https://struts.apache.org/


Kind regards
=C5=81ukasz
