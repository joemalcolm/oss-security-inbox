X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2378" "Sunday" "22" "March" "2015" "13:42:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150322174207.F18F16C001C@smtpvmsrv1.mitre.org>" "55" "[oss-security] Re: Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree" nil nil nil "3" "2015032217:42:07" "[oss-security] Re: Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree" (number mark "        cve-assign@m Mar 22   55/2378  " thread-indent "\"[oss-security] Re: Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree\"\n") "<20150321092624.GA10087@eldamar.local>" ("<20150321092624.GA10087@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16225 invoked by uid 550); 22 Mar 2015 17:42:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16207 invoked from network); 22 Mar 2015 17:42:20 -0000
In-Reply-To: <20150321092624.GA10087@eldamar.local>
Message-Id: <20150322174207.F18F16C001C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, jelmer@debian.org
Date: Sun, 22 Mar 2015 13:42:07 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Possible CVE Request: dulwich: does not prevent to write files in commits with invalid paths to working tree
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Does the scope of CVE-2014-9390 also include these bits
> from the above:

> dulwich happily clones a repository which contains commit with invalid
> paths, say .git/hooks/pre-commit, and thus allowing execution of code
> on subsequent commits.

No, the scope of CVE-2014-9390 does not include that. Use
CVE-2014-9706 for this vulnerability in dulwich.

The scope of CVE-2014-9390 is currently undefined, in part because
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-9390
intentionally doesn't have any related information. Usage of
CVE-2014-9390 is, very roughly, concerned with "The string .git/ for a
directory name has always been considered Very Special. Therefore,
other strings with equivalence relationships to .git/ must also be
considered Very Special."

The root cause of the problem in dulwich seems to be "The string .git/
for a directory name was not considered Very Special." This is
completely distinct conceptually, and is a much simpler case for CVE
coverage.

There are two types of concerns with CVE-2014-9390. First,
CVE-2014-9390 can only apply to omitted equivalence-relationship
handling in source code that is, or is directly copied from, "Git
before 1.8.5.6, 1.9.x before 1.9.5, 2.0.x before 2.0.5, 2.1.x before
2.1.4, and 2.2.x before 2.2.1" source code. It is not possible to have
a CVE for a cross-implementation vulnerability class of this
equivalence-relationship handling. Second, usage of CVE-2014-9390
seems to span multiple types of problems, possibly including all of:

  http://cwe.mitre.org/data/definitions/178.html
  http://cwe.mitre.org/data/definitions/180.html
  http://cwe.mitre.org/data/definitions/182.html

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVDv4oAAoJEKllVAevmvmsH7EH/3hpPNXiEwIlDR24GR1NuYfi
74PTVtFPPWDajblRV+RTMbZbxp2MdtUR2AmvYYUF5YyqTAOiGm0tWB6EVARhXCMu
QBzYu/9MMUTw2cajei33bFpTfQ+M0XeYBK6Mx7hw86j4zMT2gWSzN05CDcXyaFtC
y02TbwLTGv4CShWlN3ArMaBRYhBRxtF51VnbMvYeygZokdIdNAO9VULshgbBLijc
ZMs4yH9wje9Lctz/x5T2nKEW24pm8pHQAs7v8WwWtSnQ0FfTo5vjdu+iT4zpaOSB
MYmFxjBy4T4YaWQaO/XUP+IUue1lkuwY9olTYCpTVxhD6wAY86MTSDro1QNugFk=
=sxen
-----END PGP SIGNATURE-----
