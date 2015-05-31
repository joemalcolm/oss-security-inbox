X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3222" "Sunday" "31" "May" "2015" "09:32:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150531133236.6ADCE6C003C@smtpvmsrv1.mitre.org>" "78" "[oss-security] Re: CVE request for attic : encrypted backups attack" nil nil nil "5" "2015053113:32:36" "[oss-security] Re: CVE request for attic : encrypted backups attack" (number mark "U       cve-assign@m May 31   78/3222  " thread-indent "\"[oss-security] Re: CVE request for attic : encrypted backups attack\"\n") "<556381AE.6030908@syscall.eu>" ("<556381AE.6030908@syscall.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9604 invoked by uid 550); 31 May 2015 13:32:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9586 invoked from network); 31 May 2015 13:32:48 -0000
From: cve-assign@mitre.org
To: ml-oss@syscall.eu
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <556381AE.6030908@syscall.eu>
Message-Id: <20150531133236.6ADCE6C003C@smtpvmsrv1.mitre.org>
Date: Sun, 31 May 2015 09:32:36 -0400 (EDT)
Subject: [oss-security] Re: CVE request for attic : encrypted backups attack

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> attic is a deduplicating backup program written in Python.
> It features encrypted remote backups.
> 
> Unfortunately :
> https://github.com/jborg/attic/issues/271
> allow an attacker able to modify a remote encrypted directory to cause the
> client to send unencrypted data on the next backup run.
> 
> It was fixed in this commit :
> https://github.com/jborg/attic/commit/78f9ad1faba7193ca7f0acccbc13b1ff6ebf9072

As far as we can tell, this means that the client determines whether
to send encrypted or unencrypted data by asking the server about the
value of the "manifest type byte" stored on the server.

The reported security problem is that the client user is not asked to
confirm that unencrypted data is acceptable. There are two cases
(either the repository has never been used, or the repository has
previously been used for encrypted data), but these are conceptually
the same. Use CVE-2015-4082.

A separate question is whether there is any remaining vulnerability.
The documentation says:

> https://github.com/jborg/attic/blob/master/docs/faq.rst
> 
> When backing up to remote servers, is data encrypted before leaving
> the local machine, or do I have to trust that the remote server isn't
> malicious?
> 
> Yes, everything is encrypted before leaving the local machine.

We also know that use of remote servers for unencrypted data is
intentional functionality, as long as the client user has previously
agreed to send unencrypted data to that server.

It seems that for this advertised functionality, normally, a client's
decision on whether to encrypt would be specified in the client's
configuration, on the client's command line, or in a client-side user
interface. Asking the server seems to be an unusual design decision.
(Conceivably, it is unusual enough to have its own CVE, but we are
not sure about that.) A potentially problematic case would be a user
who uses attic from many client machines, communicating with many
servers, and intentionally chooses to encrypt in some cases but not
all. The user goes to one client machine and types:

  ATTIC_PASSPHRASE="My secret passphrase" attic create storage::second my\ data

but has forgotten that the applicable server has always been set up
for unencrypted use. Maybe a safer alternative would be for a client
to always send encrypted data unless:

  A. an option such as --cleartext is on the command line

  or

  B. the client configuration specifies cleartext and the attic
     process does not have access to a passphrase

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVaw0GAAoJEKllVAevmvmsKtEH/31saU48vhkXpcmwXa7ogWNs
VU8yKdnLV018/66+/A4rGOLxm/5Pe9uY3kVmULiHqffeL54d0mCUeyH60LG64key
StyLBAv4b36Zvt8kD367H8THp53abYXQlfIk4N769y2i3DUtMfEkL2GRLPW4U5eF
FUxerVWqhBNUWIYk8haGsLbqgTvPzaj46incW6/ls0P4f102yzMjDE6gWdVJBraq
iBauI23JJiPC8ZzVVyY+z/xJ6sV6E5zZav8YjbN52yw+5lstGPgjUcJ7Vlcq4o/7
VTwpYzsxEkDPHeDsFpbq+xsRapZA/eRqddIKbpxfP+DkIltaXhV95QtMKcbWbpg=
=Eu6l
-----END PGP SIGNATURE-----
