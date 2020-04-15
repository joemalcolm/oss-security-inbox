X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6404" "Wednesday" "15" "April" "2020" "20:59:44" "+0200" "Solar Designer" "solar@openwall.com" "<20200415185944.GA18943@openwall.com>" "176" "[oss-security] CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server" "^Date:" nil nil "4" "2020041518:59:44" "[oss-security] CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server" (number mark "        solar@openwa Apr 15  176/6404  " thread-indent "\"[oss-security] CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15582 invoked by uid 550); 15 Apr 2020 19:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15453 invoked from network); 15 Apr 2020 18:59:54 -0000
Message-ID: <20200415185944.GA18943@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Date: Wed, 15 Apr 2020 20:59:44 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-5260: Git: malicious URLs may cause Git to present stored credentials to the wrong server
To: oss-security@lists.openwall.com

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Taylor Blau brought this to the distros list a week ago (thanks!), but
unfortunately failed to follow the distros list policy (despite of being
specifically informed of that requirement by distros list members,
twice) to post the information to oss-security on the public disclosure
date/time.  So as list admin, after a delay of more than a day, I am
taking over and do this (being unhappy that I have to do it for others).

Quoting Taylor's original notification to distros:

---
The addressed issue is:

 * CVE-2020-5260:
   With a crafted URL that contains a newline in it, the credential
   helper machinery can be fooled to give credential information for a
   wrong host.  The attack has been made impossible by forbidding a
   newline character in any value passed via the credential protocol.

Credit for finding the vulnerability goes to Felix Wilhelm of Google
Project Zero.
---

I've attached Taylor's original message (sans its large attachment) to
this posting.

Git security releases were made and a security advisory published
yesterday:

https://github.com/git/git/security/advisories/GHSA-qm7j-c969-7j4q

I've also attached a text export from the above URL to this posting.

(We also have a policy in here that most essential content must be
included in the posting itself rather than only linked to, so that the
posting remains valuable even when the external resources are gone.)

Alexander

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="distros-ttaylorr-20200407.txt"

From: Taylor Blau <ttaylorr at github.com>
Date: Tue, 7 Apr 2020 11:22:01 -0600

Team,

The Git project will release new versions on Tuesday, April 14th, 2020,
at or around 11:00am PDT (6:00pm UTC). Attached is a Git bundle which
you can fetch into a clone of 'https://github.com/git/git' via:

  $ git fetch /path/to/git_cve_2020_5260.bundle 'refs/tags/*:refs/tags/*'

containing the tags for versions v2.26.1, v2.25.3, v2.24.2, v2.23.2,
v2.22.3, v2.21.2, v2.20.3, v2.19.4, v2.18.3, and v2.17.4.

You can verify with `git tag -v <tag>` that the versions were signed by
the Git maintainer, using the same GPG key as v2.26.0.

Please use these tags to prepare `git` packages for your various
distributions, using the appropriate tagged versions.

In the case that you need to backport this fix to earlier versions,
please cherry-pick 9a6bbee800 (credential: avoid writing values with
newlines, 2020-03-11). The additional patches are nice-to-have, but are
not strictly necessary. The test case in 't0300-credentials.sh' can help
verify the cherry-pick's correctness.

The addressed issue is:

 * CVE-2020-5260:
   With a crafted URL that contains a newline in it, the credential
   helper machinery can be fooled to give credential information for a
   wrong host.  The attack has been made impossible by forbidding a
   newline character in any value passed via the credential protocol.

Credit for finding the vulnerability goes to Felix Wilhelm of Google
Project Zero.

Thanks,
Taylor

--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="GHSA-qm7j-c969-7j4q.txt"

 malicious URLs may cause Git to present stored credentials to the wrong server

   peff published GHSA-qm7j-c969-7j4q Apr 14, 2020

   Severity
           high

   Packages
           Git

   Affected versions
           <= 2.17.3, 2.18.2, 2.19.3, 2.20.2, 2.21.1, 2.22.2, 2.23.1, 2.24.1,
           2.25.2, 2.26.0

   Patched versions
           2.17.4, 2.18.3, 2.19.4, 2.20.3, 2.21.2, 2.22.3, 2.23.2, 2.24.2,
           2.25.3, 2.26.1

   CVE identifier
           CVE-2020-5260

  Impact

   Git uses external "credential helper" programs to store and retrieve
   passwords or other credentials from secure storage provided by the
   operating system. Specially-crafted URLs that contain an encoded newline
   can inject unintended values into the credential helper protocol stream,
   causing the credential helper to retrieve the password for one server
   (e.g., good.example.com) for an HTTP request being made to another server
   (e.g., evil.example.com), resulting in credentials for the former being
   sent to the latter. There are no restrictions on the relationship between
   the two, meaning that an attacker can craft a URL that will present stored
   credentials for any host to a host of their choosing.

   The vulnerability can be triggered by feeding a malicious URL to git
   clone. However, the affected URLs look rather suspicious; the likely
   vector would be through systems which automatically clone URLs not visible
   to the user, such as Git submodules, or package systems built around Git.

  Patches

   The problem has been patched in the versions published on April 14th,
   2020, going back to v2.17.x. Anyone wishing to backport the change further
   can do so by applying commit 9a6bbee (the full release includes extra
   checks for git fsck, but that commit is sufficient to protect clients
   against the vulnerability).

  Workarounds

   The most complete workaround is to disable credential helpers altogether:

 git config --unset credential.helper
 git config --global --unset credential.helper
 git config --system --unset credential.helper

   An alternative is to avoid malicious URLs:

     * examine the hostname and username portion of URLs fed to git clone for
       the presence of encoded newlines (%0a) or evidence of
       credential-protocol injections (e.g., host=github.com)

     * avoid using submodules with untrusted repositories (don't use clone
       --recurse-submodules; use git submodule update only after examining
       the URLs found in .gitmodules)

     * avoid tools which may run git clone on untrusted URLs under the hood

  Credits

   This vulnerability was found by Felix Wilhelm of Google Project Zero and
   fixed by Jeff King of GitHub.

  References

     * release announcement
     * commits introducing fix

   Visible links
   . https://github.com/git/git/security/advisories/GHSA-qm7j-c969-7j4q#start-of-content
   . https://github.com/git/git/commit/9a6bbee8006c24b46a85d29e7b38cfa79e9ab21b
   . https://lore.kernel.org/git/xmqqy2qy7xn8.fsf@gitster.c.googlers.com/
   . https://github.com/git/git/compare/v2.17.3...v2.17.4

--ibTvN161/egqYuK8--
