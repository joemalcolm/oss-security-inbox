X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1209" "Wednesday" "28" "December" "2016" "11:47:11" "+0000" "Oleksandr Rudyy" "orudyy@gmail.com" "<CAP3WMuR0Fztm3EMKT_-4+7Avo25Mf2TrYsXEqi9LOFzPAm0hJQ@mail.gmail.com>" "42" "[oss-security] [CVE-2016-8741] Apache Qpid Broker for Java - Information Leakage" nil nil nil "12" "2016122811:47:11" "[oss-security] [CVE-2016-8741] Apache Qpid Broker for Java - Information Leakage" (number mark "U       orudyy@gmail Dec 28   42/1209  " thread-indent "\"[oss-security] [CVE-2016-8741] Apache Qpid Broker for Java - Information Leakage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28646 invoked by uid 550); 28 Dec 2016 14:03:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1751 invoked from network); 28 Dec 2016 11:47:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=GJxZmlUXjofd6xeIQcyBcIBFlpfkjwWmF69GT5hRObo=;
        b=EQ8UpbqFsqzvAZ8YzNR/6rgWWzI2Zujx5CeoaIrnHPKgtiSDZfUKAvFtNTDhr1Af1V
         Ju9mnQm0EFVj1d5o4O/TkOJgpnOqwFyaxm4caW+rahlpqIn6KDE5TEwFCWQyPOtWKVK2
         p1mVhIPZp/PDJ1cKpXeoPEze3GigUFC/K+Zp3yNq2OpxG5AfXWYsPsTZ5rA3gnIVmOLD
         gVWot6iHe0klG2XftVrvlt4ZLRSgJr+8cIkAxATGMEV/I4rUHUOhQUBIWDNt3J1sDdD3
         PyFHEOqJCXq+z2kjXyq+mPX13wK17sjjj02TdB2yBy8UIybEOBrSI0I3mmlXSW5D/E6D
         Ot2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GJxZmlUXjofd6xeIQcyBcIBFlpfkjwWmF69GT5hRObo=;
        b=J8Mnh8JLPrRga4Gnt1n9Mr22IDz4IzVgh1iZToRzqvA/lqjGyENmdg7H0oaTUM6fWP
         w8QLtuyyXHpif6uaespxSaYFnIJ+OdQlLopFJPrCgzsthohEwgGtTHheYKldJJAi0TJg
         MLPViixZj1gNb/PlGsKrNGcxjlPXWa1tBT3zGZyWpGjmf9AIX2eO3X3xuxQXVUqJOF1C
         oJuccjKoms8GdkqSUxsFfwF9GUQrPX9SmiubC5iQsSQyn/wGE3W7e97GofaqYzqFgJwK
         d3GmDWls9pLMWRN6hejQlEqwQz368cVGFtm1WEnbA0cG7KyzDS/vmoTIG3PIlOlLwurl
         0bJA==
X-Gm-Message-State: AIkVDXJKu+K0uX+opaE5/Wa0+xW1HQXRylQBLAL2pPFhAlF3In3XiNV6xTYdgb8c20KgpzEUT81AGXgE0irynw==
X-Received: by 10.55.102.196 with SMTP id a187mr24195473qkc.168.1482925632022;
 Wed, 28 Dec 2016 03:47:12 -0800 (PST)
MIME-Version: 1.0
From: Oleksandr Rudyy <orudyy@gmail.com>
Date: Wed, 28 Dec 2016 11:47:11 +0000
Message-ID: <CAP3WMuR0Fztm3EMKT_-4+7Avo25Mf2TrYsXEqi9LOFzPAm0hJQ@mail.gmail.com>
To: "users@qpid.apache.org" <users@qpid.apache.org>, "dev@qpid.apache.org" <dev@qpid.apache.org>, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=94eb2c055938866df50544b687cb
Subject: [oss-security] [CVE-2016-8741] Apache Qpid Broker for Java - Information Leakage

--94eb2c055938866df50544b687cb
Content-Type: text/plain; charset=UTF-8

[CVE-2016-8741] Apache Qpid Broker for Java - Information Leakage

Vendor: The Apache Software Foundation

Versions Affected: Apache Qpid Broker for Java versions 6.0.1,
                   6.0.2, 6.0.3, 6.0.4, 6.0.5, and 6.1.0

Description:

The Qpid Broker for Java can be configured to use different so
called AuthenticationProviders to handle user authentication.

Among the choices are the SCRAM-SHA-1 and SCRAM-SHA-256
AuthenticationProvider types.

It was discovered that these AuthenticationProviders prematurely
terminate the SCRAM SASL negotiation if the provided user name
does not exist thus allowing remote attacker to determine the
existence of user accounts.

The Vulnerability does not apply to AuthenticationProviders other
than SCRAM-SHA-1 and SCRAM-SHA-256.

Resolution:

Users should upgrade the Qpid Broker for Java to version 6.0.6,
6.1.1, or later (recommended).

Mitigation:

If upgrading is not possible, the vulnerability can be mitigated
by using an AuthenticationProvider other than SCRAM-SHA-1 and
SCRAM-SHA-256.

References:

https://issues.apache.org/jira/browse/QPID-7599

--94eb2c055938866df50544b687cb--
