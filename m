X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["796" "Monday" "10" "July" "2017" "11:25:37" "-0700" "Sailesh Mukil" "sailesh@apache.org" "<CA+LM4Mtfo75gm=L8D2Qjre2eTbbCqJG6b4F7Tia+6gBi8V4nQg@mail.gmail.com>" "25" "[oss-security] CVE-2017-5640 Apache Impala (incubating) Information Disclosure" "^Date:" nil nil "7" "2017071018:25:37" "[oss-security] CVE-2017-5640 Apache Impala (incubating) Information Disclosure" (number mark "        sailesh@apac Jul 10   25/796   " thread-indent "\"[oss-security] CVE-2017-5640 Apache Impala (incubating) Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24420 invoked by uid 550); 10 Jul 2017 18:29:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22437 invoked from network); 10 Jul 2017 18:25:51 -0000
X-Gm-Message-State: AIVw1133aq85OxAI2I5xUJk66LMFi9SOX73dKZ3vK26P12MGbspHlbJP
	6EPXshYrK9N9lq+Vc3o4KqGMCLA+VA==
X-Received: by 10.55.104.195 with SMTP id d186mr6222351qkc.176.1499711138132;
 Mon, 10 Jul 2017 11:25:38 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CA+LM4Mtfo75gm=L8D2Qjre2eTbbCqJG6b4F7Tia+6gBi8V4nQg@mail.gmail.com>
Message-ID: <CA+LM4Mtfo75gm=L8D2Qjre2eTbbCqJG6b4F7Tia+6gBi8V4nQg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Jul 2017 11:25:37 -0700
From: Sailesh Mukil <sailesh@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-5640 Apache Impala (incubating) Information Disclosure
To: oss-security@lists.openwall.com

CVE-2017-5640 Apache Impala (incubating) Information Disclosure

Severity: High

Versions Affected:
Apache Impala (incubating) 2.7.0 to 2.8.0

Description:
It was noticed that a malicious process impersonating an Impala daemon
could cause Impala daemons to skip authentication checks when Kerberos
is enabled (but TLS is not). If the malicious server responds with
=E2=80=98COMPLETE=E2=80=99 before the SASL handshake has completed, the cli=
ent will
consider the handshake as completed even though no exchange of
credentials has happened.

Mitigation:
Users of the affected versions should apply the following mitigation:
Upgrade to Apache Impala (incubating) 2.9.0

Credit:
This issue was identified by the Cloudera Security team.

References:
https://issues.apache.org/jira/browse/IMPALA-5005
