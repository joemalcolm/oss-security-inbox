X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["977" "Wednesday" "15" "March" "2017" "18:12:52" "+0100" "Ludovic =?utf-8?B?Q291cnTDqHM=?=" "ludo@gnu.org" "<87wpbq5uqz.fsf@gnu.org>" "31" "[oss-security] Dealing with CVEs that apply to unspecified package versions" "^Cc:" nil nil "3" "2017031517:12:52" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "        ludo@gnu.org Mar 15   31/977   " thread-indent "\"[oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13667 invoked by uid 550); 15 Mar 2017 17:43:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13684 invoked from network); 15 Mar 2017 17:13:14 -0000
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: 25 =?utf-8?Q?Vent=C3=B4se?= an 225 de la =?utf-8?Q?R?=
 =?utf-8?Q?=C3=A9volution?=
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-unknown-linux-gnu
Message-ID: <87wpbq5uqz.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-detected-operating-system: by eggs.gnu.org: GNU/Linux 2.2.x-3.x [generic]
X-Received-From: 2001:4830:134:3::e
Cc: Leo Famulari <leo@famulari.name>
Date: Wed, 15 Mar 2017 18:12:52 +0100
From: ludo@gnu.org (Ludovic =?utf-8?Q?Court=C3=A8s?=)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Dealing with CVEs that apply to unspecified package versions
To: oss-security@lists.openwall.com

Hello,

Some CVE entries do not specify the version of the package(s) they apply
to.  For instance, the software list for CVE-2016-10165 contains
=E2=80=9Ccpe:/a:littlecms:little_cms_color_engine=E2=80=9D, which theoretic=
ally means
that it applies to any version of lcms.

The problem is automated tools cannot exploit such entries in practice
because they cannot tell which package versions are affected.

While tuning our CVE tracking tool in GNU=C2=A0Guix, we found that such
entries are not uncommon:

  https://lists.gnu.org/archive/html/guix-devel/2017-03/msg00335.html

What are the possibilities to address this issue?

I can think of two actions that could perhaps be taken:

  1. The software behind the CVE form could force submitters to specify
     version numbers.

  2. For recent entries (say, 2 years old at most), a bot could email
     the original submitters kindly asking them to provide the missing
     version info.

Thoughts?

Thanks,
Ludo=E2=80=99.
