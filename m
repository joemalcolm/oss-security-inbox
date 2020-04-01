X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["977" "Wednesday" "1" "April" "2020" "12:19:01" "-0700" "Jonathan Wei" "jonwei@apache.org" nil "31" nil "^Date:" nil nil "4" nil nil (number mark "U       jonwei@apach Apr  1   31/977   " thread-indent "\"[oss-security] [CVE-2020-1958]: Apache Druid LDAP injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1958]: Apache Druid LDAP injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32755 invoked by uid 550); 1 Apr 2020 19:34:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28504 invoked from network); 1 Apr 2020 19:19:29 -0000
X-Gm-Message-State: AGi0PubJuaT0epd7Vu3yT3jaUktIBG6wEo2g3EmH6Ml+kBpSBHvMGlRN
	JCnXFb0t+ZG6SQeTmGRnWfPvcvc0jgBEw5ek2WU=
X-Google-Smtp-Source: APiQypKPGB7tP2KH785jsGRKNBy/4jBafZfT9yZcNAjnuR6EAS6s6D2z3iebkILCYpOZkG2kSF8lnrCBt78h1dVAjos=
X-Received: by 2002:a2e:3e1a:: with SMTP id l26mr4388248lja.15.1585768752760;
 Wed, 01 Apr 2020 12:19:12 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAHKghTNBe6x=Hn=pf2pVxqovHCfa=_d6EFQKMGmb__X5fsn_kg@mail.gmail.com>
Message-ID: <CAHKghTNBe6x=Hn=pf2pVxqovHCfa=_d6EFQKMGmb__X5fsn_kg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000003457a205a23f8f33"
Date: Wed, 1 Apr 2020 12:19:01 -0700
From: Jonathan Wei <jonwei@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2020-1958]: Apache Druid LDAP injection vulnerability
To: oss-security@lists.openwall.com

--0000000000003457a205a23f8f33
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: High

Vendor:
The Apache Software Foundation

Versions Affected:
Druid 0.17.0

Description:
When LDAP authentication is enabled:
- Callers of Druid APIs with a valid set of LDAP credentials can bypass the
`credentialsValidator.userSearch` filter barrier that determines if a valid
LDAP user is allowed to authenticate with Druid. They are still subject to
role-based authorization checks, if configured.
- Callers of Druid APIs can retrieve any LDAP attribute values of users
that exist on the LDAP server, so long as that information is visible to
the Druid server. This information disclosure does not require the caller
itself to be a valid LDAP user.

Mitigation:
- Users of Druid 0.17.0 that use LDAP authentication should upgrade to
Druid 0.17.1.

Credit:
This issue was discovered by Grzegorz Go=C5=82awski.

--0000000000003457a205a23f8f33--
