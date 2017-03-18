X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1561" "Saturday" "18" "March" "2017" "18:36:50" "+1100" "Brian May" "brian@linuxpenguins.xyz" "<878to3f33h.fsf@prune.linuxpenguins.xyz>" "32" "Re: [oss-security] Dealing with CVEs that apply to unspecified package versions" nil nil nil "3" "2017031807:36:50" "[oss-security] Dealing with CVEs that apply to unspecified package versions" (number mark "U       brian@linuxp Mar 18   32/1561  " thread-indent "\"Re: [oss-security] Dealing with CVEs that apply to unspecified package versions\"\n") "<87wpbq5uqz.fsf@gnu.org>" ("<87wpbq5uqz.fsf@gnu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21816 invoked by uid 550); 18 Mar 2017 07:37:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21795 invoked from network); 18 Mar 2017 07:37:10 -0000
X-Virus-Scanned: amavisd-new at kolabnow.com
From: Brian May <brian@linuxpenguins.xyz>
To: oss-security@lists.openwall.com
In-Reply-To: <87wpbq5uqz.fsf@gnu.org>
References: <87wpbq5uqz.fsf@gnu.org>
Date: Sat, 18 Mar 2017 18:36:50 +1100
Message-ID: <878to3f33h.fsf@prune.linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Dealing with CVEs that apply to unspecified package versions

Ludovic Court=C3=A8s <ludo@gnu.org> writes:

> Some CVE entries do not specify the version of the package(s) they apply
> to.  For instance, the software list for CVE-2016-10165 contains
> =E2=80=9Ccpe:/a:littlecms:little_cms_color_engine=E2=80=9D, which theoret=
ically means
> that it applies to any version of lcms.
>
> The problem is automated tools cannot exploit such entries in practice
> because they cannot tell which package versions are affected.

I am not sure the software version helps that much. It can lead to
incorrect decision. For example, for security flaw B upstream might say
versions before Y.Y.Y are not applicable - lets say version X.X.X <
Y.Y.Y and as such as OK, because the do not contain the vulnerable
code. In fact, somebody could check the code and mark this security flaw
as not applicable.

Meanwhile, somebody else gets around to adding another (earlier)
security patch for A to Y.Y.Y. This security adds the vulnerable code
for B. Anybody making a quick inspection would not notice now that Y.Y.Y
patched for A is now vulnerable to B. In fact B was already marked as
not vulnerable, so there may not even be need to look at it again (not
sure how to solve this problem).

While a "fixed in version" is useful, a pointer to a commit that fixed
the problem would be even better - and means less speculation on which
commit actually fixes the issue. In fact some upstreams won't even
answer bug reports asking if security issues has been fixed or not.
--=20
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
