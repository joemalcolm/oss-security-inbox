Received: (qmail 5760 invoked by uid 550); 1 Dec 2025 14:59:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18278 invoked from network); 1 Dec 2025 14:48:30 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1764600388; bh=e4XXKOFBo8YY04elxWfcWG4QCLEeMmmkFuYgFIMLX+I=;
	h=From:Date:Subject:To:From;
	b=HtL1m5cCQODBIjojL2aOoR99OleL1EIOyXb4Aoa5ev2+EmIWgZMy9KVMYFMHenG3L
	 XNU68SyKDkcGZpUqjHe5hAs3Q1YokSxsGFJGroPC9awrJ9tscNmD0AA8IeeYdhQ/ei
	 Lx76S7JFu2SenOIcxsvOAi7EARoU105BRNmeSlLQs3NCnwywlvCEPAIa1d/Qb9R15z
	 +bC0cU55rQorBaU/Fa5ZoAZvAqtJ8NkNESMYqlKkm57FgCps3GE3kWC4JHL7W8HdDs
	 Y5nV01g49KWDXweOpH51SveHQ7kQ+fl+FwG8FEEZR1H8FX8B+gcl9gjIQIB2CemQOa
	 7rTQT1BSJvXMw==
X-Gm-Message-State: AOJu0Ywh8bfom0hHONClFy22KIj+/VX4edCXbHnqE0uuB83wy7XF19nX
	SEcrqaefWuStOWOr9AHtppcqcwNOPq2PZvuLWfmshf5hyScHXkCYhL7cG9FdXSfCrwbj2htzlns
	2/QKhADC1ZtXLt+yD8BxFuxyB1hpzlto=
X-Google-Smtp-Source: AGHT+IFmNhWKevyCZWzdLRjzmbMChmQ5IAqkc9gdaDTFzNyEe1ZTn8XHj5omb7glOpsofsHfv6AkJzsU1fMtGc2Rmgk=
X-Received: by 2002:a05:620a:29c5:b0:8b2:7679:4d0b with SMTP id
 af79cd13be357-8b33d269bd3mr5267776385a.54.1764600388094; Mon, 01 Dec 2025
 06:46:28 -0800 (PST)
MIME-Version: 1.0
From: Lukasz Lenart <lukaszlenart@apache.org>
Date: Mon, 1 Dec 2025 15:46:17 +0100
X-Gmail-Original-Message-ID: <CAMopvkP-=gOHFmF8ZHv4To1zBDtAGSJ26o5x-GX-otzr9iD=4g@mail.gmail.com>
X-Gm-Features: AWmQ_bmMBuCl1J0bM6fKx6FYcfg8_qYz8WkyPjkK9xCPxoMzaeWUORBnr6ZDEdA
Message-ID: <CAMopvkP-=gOHFmF8ZHv4To1zBDtAGSJ26o5x-GX-otzr9iD=4g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2025-64775: Apache Struts: File leak in multipart request
 processing causes disk exhaustion (DoS) - S2-068

Severity: important

Affected versions:

- Apache Struts (org.apache.struts:struts2-core) 2.0.0 through 6.7.0
- Apache Struts (org.apache.struts:struts2-core) 7.0.0 through 7.0.3

Description:

Denial of Service vulnerability in Apache Struts, file leak in
multipart request processing causes disk exhaustion.

This issue affects Apache Struts: from 2.0.0 through 6.7.0, from 7.0.0
through 7.0.3.

Users are recommended to upgrade to version 6.8.0 or 7.1.1, which
fixes the issue.

Credit:

Nicolas Fournier (reporter)

References:

https://cwiki.apache.org/confluence/display/WW/S2-068
https://struts.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-64775

On behalf of the Apache Struts project
=C5=81ukasz Lenart
