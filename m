X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1496" "Thursday" "5" "May" "2016" "17:59:43" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160505215943.1BD3972E002@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear" nil nil nil "5" "2016050521:59:43" "[oss-security] Re: CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear" (number mark "U       cve-assign@m May  5   36/1496  " thread-indent "\"[oss-security] Re: CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear\"\n") "<20160505133201.GA12142@eldamar.local>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32022 invoked by uid 550); 5 May 2016 21:59:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32001 invoked from network); 5 May 2016 21:59:55 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160505133201.GA12142@eldamar.local>
Message-Id: <20160505215943.1BD3972E002@smtpvbsrv1.mitre.org>
Date: Thu,  5 May 2016 17:59:43 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: OpenAFS: OPENAFS-SA-2016-002 - various client functionality leak stack data onto the wire in the clear

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://www.openafs.org/pages/security/OPENAFS-SA-2016-002.txt

> Several structures used as RPC arguments contain a mask field that
> indicates which other fields should be processed by the server. In
> some cases, fields not not indicated in the mask were transmitted over
> the network without being written to, exposing the previous contents
> of that memory. Both kernel stack and userspace stack data can be
> leaked.

Use CVE-2016-4536.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXK8F+AAoJEHb/MwWLVhi2FPwP/jGfRJCE7dylxZoUxSekgILk
Q/eRTyo1/UYSEB1/TohhY9ESNntbPmVKn1tXGrcjP7199IV1B6HV4w0umCl/bf9A
WZFelcXoSs0Jjjd7ddeKGMg4eCd0c4smTjJosIB7p8idvf7lY9dSGgnUXFh57AAG
g5Kj7kzZCRlkRdZTSXnHxcsaFfcBe8rSUG2WPiY/mHbH+LD17pyG9krYdmdEE9oJ
cYms9nSMeCxn2Ibh1lJXv7qRMM4WhvelWAA4ti59Ier6bnRY92cnSLFUmtuShZj+
f9M5MI6FbnDL/sawzCY855ywwOhcVddsHSdiQAYsBoPStMhMqutCxu7aLl3BEbEr
UkaY2uoeY3uSwgU5u1ap4CGGMEqwyVWSS34lD+0Bj9l5QfzCLw0HXQmPcJbKLQLb
dMi+/gdBtL8B8PgBtj2v8QCjfJRhoqVTIFnMsl9ssSITypJ1s35lpVzXkvsdMeNc
7UH09028O7fsMXRtRQpL+9D+xOz1PadkFE96hm9n5vKnCDM0UVp7hbBMzldqpHZu
l9No2d2oc33flPVcgLW6W4nOtvz4zvh7o4qjPdY6QloAjTFiazL8oNlmJQ90F3s6
wB7XeWsMkUHaYaNpVxldGdbQjZFMokjYU7jupWgWZgAuLbGQa+7zNRnGn3fIU6pE
vt58CYD8DBZezU9vLwF3
=cQap
-----END PGP SIGNATURE-----
