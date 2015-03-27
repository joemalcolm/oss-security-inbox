X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3712" "Friday" "27" "March" "2015" "14:16:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150327181641.0B66134E00D@smtpvbsrv1.mitre.org>" "92" "[oss-security] Re: CVE request: denial of service in Quassel" nil nil nil "3" "2015032718:16:41" "[oss-security] Re: CVE request: denial of service in Quassel" (number mark "        cve-assign@m Mar 27   92/3712  " thread-indent "\"[oss-security] Re: CVE request: denial of service in Quassel\"\n") "<550C495D.9030204@reactos.org>" ("<550C495D.9030204@reactos.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26447 invoked by uid 550); 27 Mar 2015 18:16:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26425 invoked from network); 27 Mar 2015 18:16:52 -0000
In-Reply-To: <550C495D.9030204@reactos.org>
Message-Id: <20150327181641.0B66134E00D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 27 Mar 2015 14:16:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: denial of service in Quassel
To: pierre@reactos.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The following commit fixed a denial of service in quassel:
> https://github.com/quassel/quassel/commit/b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8

> It allows a connected client to cause a core crash by sending a CTCP
> request which would be too long and multibyte.

We're not sure how many CVE IDs would be best.
b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8 seems to describe two items
in terms of bugs and two other items in terms of (somewhat unrelated)
solutions.

In order of likelihood of CVEs, we have:

1
> The second is
> the core crash caused by sending an overlength CTCP query ("/me")
> containing only multibyte characters. This bug was caused by the
> old CTCP splitter using the byte index from lastParamOverrun() as
> a character index for a QString.

This seems to be, very roughly, an issue of incorrectly determining a
data-structure length by using a wrong-sized data type for counting.
It happens to be about multibyte characters but that's of secondary
importance. This will almost certainly have a unique CVE ID, but we
will see if there are any comments stating that it occurs for exactly
the same reason as the "garbage characters" issue below.


2
> Unlike what it replaces, the new splitting code is not recursive
> and cannot cause stack overflows.

If an attacker sends a crafted message and this leads to excessive
stack consumption in an IRC client, making the client crash or hang,
then that is relevant for a CVE. (We are expecting that it is a
"normal" IRC client that supports independent sessions with messages
from different channels or different persons.) However,
b5e38970ffd55e2dd9f706ce75af9a8d7730b1b8 doesn't actually state that
the client would ever crash or hang.


3
> The first is garbage characters caused
> by accidentally splitting the string in the middle of a multibyte
> character. Since the new code splits at a character level instead
> of a byte level, this will no longer be an issue.

This one seems to be inherently about multibyte characters because
it's an issue of string display (or string interpretation) if whole
characters aren't preserved. However, it doesn't seem to be announced
as a security issue. Although someone might be sending
security-critical messages over IRC and would not want those messages
to be misinterpreted, that's generally too much of a leap to have a
CVE. If nobody else has other analysis, we will probably treat this as
a non-security bug.


4
> if it is unable
> to split a string, it will give up gracefully and not crash the
> core or cause a thread to run away.

As far as we can tell, this is about:

  // If the QTBF fails to find a split point in Grapheme mode, we give up.
  // This should never happen, but it should be handled anyway.
  qWarning() << "Unexpected failure to split message!";
  return msgsToSend;

in the patched code. If nobody else has other analysis, we will
probably treat this as a defense-in-depth measure that doesn't address
any known vulnerability, and therefore has no CVE.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVFZ3gAAoJEKllVAevmvmsWEMH/3xM4kfqaLgXrF3iZrUXjegK
nMWFIb3BmdWaqDuOjVN5EoTCCEkBKBeyLLwx6WJwW04ZoACVjacoCikDOntTTKkG
E4MyVfLmkREDk3M5myoR2mFf/OxLyTo9bAKrd0nrM4/XGc6hBt4W8G5K1nvYhQzv
rCiQdvz0lYzz4baMWFztMMzso057NAa2g7GuHAXMaHfhOrBWzuEE3bXN2Opw8XTn
muXAvneBi9VhFSJM74+hCzHhBN11M7KhdB+jgOUSftnnsgdX8smUImu7lQMcJGiI
FsU1yUOZWpiyJ06HXfWQ3Kg5y16/1YbkwjvBgAUXX18Not8lpKFcYCYNtLymP/g=
=2UPe
-----END PGP SIGNATURE-----
