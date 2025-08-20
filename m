Received: (qmail 32066 invoked by uid 550); 20 Aug 2025 19:46:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32022 invoked from network); 20 Aug 2025 19:46:25 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1755719145; bh=UcBkcDdJY651atYqlVBVrdoLRr3EDswCJ801BfNFN9M=;
	h=Reply-To:From:Date:Subject:To:From;
	b=qNoRqHOFMzT5371ZVR+0MhJegMy//QLuDoLzl+GSWyIjcYuh6DR4eJUpm1jHrlZv2
	 sgZcKwXBdojh96GqE6eVUHKnG86rYZkn4m8ocgQScnJeQ8nCxPDdkd3FncjT0p9HZO
	 AgPvHHLOe/WgrQiapLCo6v1qBJ0YGAEeSnvS6b64TnfNk52ZmOwC74xnyuJyfeSTQG
	 Wr7yD4sVtNt8zcsrhcHK4eo86tlrxE8SY+4vEOK85vbRvsSR79JX9wANr0Ej0rhYQF
	 TWmaFEXKGizGUmURtM6qvFsqgukxCNV54vpILKAV9cKe3AR2t6rKU6iYOlS91vZV9z
	 Yra8CRD/H49fQ==
X-Gm-Message-State: AOJu0Yyy+ABCF46DV3VO1tew9Me4Vje5TMEdYk1E3IarKmW2KhPgJ23C
	YBzng4SGb3XfeVKgmVmkT497uBEFjlU86onk8FO5UkzpvbzNDe78D6j+pff/IDsPmQHX6I/fzZn
	ReoGaHhh/mdrzzn0tLOJOxLjXwn/ow40=
X-Google-Smtp-Source: AGHT+IFUeZB+ra78UN1FVjwGqoJmi1mHI09QV0Qv0PQ9ag5jzYJ7EBdbowtWhMnCY13bYfK3a6ffP/mXyBpvKpc5GPY=
X-Received: by 2002:a05:6870:aa08:b0:30b:90f4:ca08 with SMTP id
 586e51a60fabf-311229856f3mr2230714fac.22.1755719145010; Wed, 20 Aug 2025
 12:45:45 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allison <tallison@apache.org>
Date: Wed, 20 Aug 2025 15:45:33 -0400
X-Gmail-Original-Message-ID: <CAC1dCwVM3rxqS=KQf3=kWScQE5=NQ5ZvRH=srcF72JZROMb4hA@mail.gmail.com>
X-Gm-Features: Ac12FXwWY_Nfl6BZ6HmvIk63WN218OaFQTuaQhAF0h-6gDIS56SK82q9vDfhWmM
Message-ID: <CAC1dCwVM3rxqS=KQf3=kWScQE5=NQ5ZvRH=srcF72JZROMb4hA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-54988: Apache Tika PDF parser module: XXE vulnerability in
 PDFParser's handling of XFA

Severity: critical

Affected versions:

- Apache Tika PDF parser module
(org.apache.tika:tika-parser-pdf-module) 1.13 through 3.2.1

Description:

Critical XXE in Apache Tika (tika-parser-pdf-module) in Apache Tika
1.13 through and including 3.2.1 on all platforms allows an attacker
to carry out XML External Entity injection via a crafted XFA file
inside of a PDF. An attacker may be able to read sensitive data or
trigger malicious requests to internal resources or third-party
servers. Note that the tika-parser-pdf-module is used as a dependency
in several Tika packages including at least:
tika-parsers-standard-modules, tika-parsers-standard-package,
tika-app, tika-grpc and tika-server-standard.

Users are recommended to upgrade to version 3.2.2, which fixes this issue.

Credit:

Paras Jain and Yakov Shafranovich of Amazon. (reporter)

References:

https://tika.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-54988
