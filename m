Received: (qmail 18333 invoked by uid 550); 12 Apr 2022 16:00:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1706 invoked from network); 12 Apr 2022 15:15:30 -0000
Content-Type: text/plain; charset=utf-8
From: Yasser Zamani <yasserzamani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ab7e33c7-9941-fe45-90dd-3217e0f82ed0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Apr 2022 15:15:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-31805: Apache Struts: Forced OGNL evaluation, when
 evaluated on raw not validated user input in tag attributes, may lead to
 RCE. 

Description:

The fix issued for CVE-2020-17530 was incomplete. So from Apache Struts 2.0=
.0 to 2.5.29, still some of the tag=E2=80=99s attributes could perform a do=
uble evaluation if a developer applied forced OGNL evaluation by using the =
%{...} syntax. Using forced OGNL evaluation on untrusted user input can lea=
d to a Remote Code Execution and security degradation.

Mitigation:

Avoid using forced OGNL evaluation on untrusted user input, and/or upgrade =
to Struts 2.5.30 which checks if expression evaluation won=E2=80=99t lead t=
o the double evaluation.

Please read our Security Bulletin S2-062 for more details.

Credit:

Apache Struts would like to thank Chris McCown for reporting this issue!

References:

https://cwiki.apache.org/confluence/display/WW/S2-062

