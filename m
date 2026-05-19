Received: (qmail 6050 invoked by uid 550); 19 May 2026 02:45:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7933 invoked from network); 19 May 2026 02:01:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1779156080; bh=1uhKK02DmgqILHS6vBY93Jt5XFt8vTCOnRmK7pBACZs=;
	h=Date:From:To:Cc:Subject:From;
	b=SCYKQJO6l7kmwAdNvZ5DsSNo1RCZacP/U2ayoqlP3hGzGe5g8gygGx1A3me2Hdf8+
	 7H5WE0yGA72GaiAnMJn70eI+tFvM5M/9ZZZH8kUFpmnNF6jEZenYuhWVx3L77cQQye
	 UaTjFzytinvg1KN9zuJe8AZimu3TLf/TatCNbsSk=
X-Riseup-User-ID: CA8374C012C82A4ABED75284098E331A03AEE97211E926744609C66BC3BCE11C
Date: Mon, 18 May 2026 22:01:16 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Cc: adrelanos@whonix.org
Message-ID: <20260518220116.170677b2@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/nHzddNzDrAsvVw2l_tywX+.";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] On the issue of MIME handlers that execute arbitrary code (e.g.
 Wine)

--Sig_/nHzddNzDrAsvVw2l_tywX+.
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

This is not really a vulnerability report for a specific program, there
are at least five different programs involved here.

Tucked away in `man 1 xdg-mime` is the following advice:

    Security Note: Never set a handler that will blindly execute code
    or commands from the file being handled. Such behaviour will sooner
    than later lead to unintended code execution i.e. through a curious
    user trying to inspect a freshly downloaded file but running it by
    accident.

    Keeping opening and executing separate actions helps with people
    protecting themselves from malware, the default handler is an
    opener, not a runner.

tl;dr of the rest of this: Most open-source programs (whether on
accident or on purpose) seem to heed this advice. Some of them don't.
Those that don't are quite useful for escaping sandboxes.

First, a bit of background:

People have to run arbitrary code (apps). Arbitrary code is scary, so
there are a number of ways on Linux to keep that code from doing
anything it "shouldn't" do (AppArmor confinement, Flatpak sandboxing,
Snap sandboxing, Firejail, etc.). On the other hand, apps often have to
talk to other apps in order to do their job right (for instance, a file
manager needs to open your office suite when you double-click a
document, and many apps may need to open your file manager to show
what's in a folder). Sandboxing apps generally breaks them because it
prevents them from talking to other apps. The way this has been worked
around so far is to:

* Make apps do most/all of their non-internal IPC over D-Bus.
* Standardize a bunch of system service interfaces so that applications
  have established ways to do things like open documents and file
  managers.
* Allow the sandboxed apps access to D-Bus.

Of course, this completely undermines sandboxing since you can use
D-Bus to do all sorts of fun things, like tell systemd to LD_PRELOAD a
malicious library into any user service that is started or restarted.
To fix *that*, there are mechanisms that restrict what sandboxed code
can do with D-Bus, allowing them to call particular D-Bus methods but
not others. xdg-dbus-proxy and AppArmor D-Bus mediation are two
examples. For these mechanisms to work, whatever provides standard
system services on D-Bus *must* do so in a way that doesn't allow
arbitrary code exeuction. As you probably have already guessed, not all
system service implementations meet this criteria.

There are two particular D-Bus interfaces I researched a few months
ago, before writing this. One is
org.freedesktop.FileManager1.ShowFolders [1], the other is
org.freedesktop.portal.OpenURI.OpenFile [2]. With the help of a couple
of file managers, xdg-desktop-portal-gtk, and Wine, I've been able to
escape Flatpak sandboxing and AppArmor confinement using both of these
interfaces.

Of these two, org.freedesktop.portal.OpenURI.OpenFile is probably more
problematic. This is because access to the OpenURI portal seems to be
implicitly allowed by Flatpak. (I have not verified this by reading
code, but I built a flatpak from source that was only given Wayland
access, and it was somehow able to access this portal anyway.) The
OpenFile call allows applications to open arbitrary files *outside* of
the sandbox that called the method. (This is a relatively sensible
thing to do; it's unreasonable to expect a browser flatpak to bundle a
video player, so if you download a video and then try to open it, your
browser needs to be able to tell your system "find a video player and
open this with it." It's then up to the portal implementation to launch
the player, either outside of any sandbox or in a different sandbox.)
=46rom my experiments, xdg-desktop-portal-gtk seems to pop up an "Open
With" dialog if you try to open a file and have two or more handlers
for the same MIME type installed. If you don't have at least two
handlers, the one handler you do have gets run without prompting.

If all applications followed the xdg-mime manpage's advice to never
execute code when opening a file, this wouldn't be that big of a
problem. This is where Wine comes in; it ships a desktop file that
registers Wine as a MIME handler for 'application/x-ms-dos-executable',
'application/x-msi', and 'application/x-bat'. [3] These handlers result
in the command 'wine start /unix FILE-NAME' being run, which of course
loads the executable code from the opened file into memory and starts
running it. That means, if you are unlucky enough to have an
unsandboxed copy of Wine as your only MIME handler for EXE files, any
flatpak on your system can break out of the sandbox by writing an EXE
file somewhere, then opening it with
org.freedesktop.portal.OpenURI.OpenFile. This issue has been reported
to Wine a short while ago [4]; I didn't report the issue privately
since I couldn't find a security contact for Wine and was encouraged to
make a public bug report when I asked for a security contact on IRC
some time back. (I was also given an email where I could privately
contact someone, but I no longer have it, and I was somewhat
discouraged from using it when I initially asked.)=20

org.freedesktop.FileManager1.ShowFolders is less of a problem, but also
somewhat interesting. According to the specification, it "assumes that
the specified URIs are folders; the file manager is supposed to show a
window with the contents of each folder." What I think the spec meant
to say is that the call only takes paths to folders as input, but
unfortunately the wording is vague here. At least file manager
(PCManFM-Qt) assumes that all of the arguments *are* folders without
verifying this. It then passes these arguments through code that does
the equivalent of running `xdg-open` on each argument, since if it's a
folder, opening it with its default handler will open the file manager.
Of course, there's nothing preventing me from passing a "folder" URI of
file:///path/to/malware.exe, which will run the program. A very similar
issue existed in KDE's Dolphin file manager, but that was a bug, not a
design decision. The issue was assigned CVE-2026-41525 and is fixed in
Dolphin >=3D 25.12.3. [5]

Obviously, I think Wine should probably stop registering itself as an
EXE file handler. Unfortunately, I was able to find another program
with an unsafe handler registered just while writing this email (which
I intend on reporting privately once I've sent this). So while it seems
like these kind of handlers aren't super common, they aren't that hard
to find if you dig around for a while.

I couldn't quickly find a CWE that covered this particular issue except
for CWE-441 (confused deputy problem). I don't know if this warrants a
new CWE, and my CWE searching skills kind of stink, so maybe there is
something for this already. In any event, if you maintain an app (or
a package for an app) that interpretes or executes code, please check
if it registers MIME handlers that blindly executes code, and remove
those handlers if so. There are more ways for those handlers to go
wrong than just users double-clicking the wrong thing.

A couple tangential notes about what Kicksecure [6] (a
security-hardened Debian derivative I contribute to) has been doing to
mitigate this:

* We currently ship a D-Bus "shim" that owns the
  org.freedesktop.FileManager1 name on the D-Bus session bus. [7] [8]
  This shim checks each directory URI to ensure it points at a real
  directory, then pops up a window asking the user if they really want
  to open directories with the default file manager, showing them the
  path to each directory. This is technically vulnerable to TOCTOU
  issues (an attacker could swap out a directory with an executable
  file after it is displayed to the user), but since the directory
  checks are done both before and after the user clicks "Open", it is
  impossible (to my awareness) for the attacker to know when to swap
  out the file. The shim also warns loudly if it detects that something
  was swapped out before opening it. The chances of success at this
  attack are small enough and the consequences of failure large enough
  that an attacker likely won't find it useful.
* We're working on a sandboxing system (really a glorified
  systemd-nspawn frontend) that allows each sandbox to be
  self-sufficient enough to not *need* access to the host's D-Bus
  daemon. [9] That should prevent any possible way to leverage D-Bus as
  a sandbox escape mechanism.

--
Aaron

[1] https://www.freedesktop.org/wiki/Specifications/file-manager-interface/
[2] https://flatpak.github.io/xdg-desktop-portal/docs/doc-org.freedesktop.p=
ortal.OpenURI.html
[3] https://gitlab.winehq.org/wine/wine/-/blob/master/loader/wine.desktop?r=
ef_type=3Dheads
[4] https://bugs.winehq.org/show_bug.cgi?id=3D59767
[5] https://kde.org/info/security/advisory-20260427-2.txt
[6] https://www.kicksecure.com/
[7] https://github.com/Kicksecure/security-misc/blob/master/usr/src/securit=
y-misc/fm-shim-backend.c%23security-misc-shared
[8] https://github.com/Kicksecure/security-misc/blob/master/usr/lib/python3=
/dist-packages/fm_shim_frontend/fm_shim_frontend.py%23security-misc-shared
[9] https://github.com/ArrayBolt3/sandbox-manager-dist

--Sig_/nHzddNzDrAsvVw2l_tywX+.
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCagvEbAAKCRA5rdye4jrr
CL3AAP9FgYmaAuz2khgJxZKF8LPMdx4QHxqDvzNjYV2q4WXz9QEA/jJwCn1VEma5
eBROCL8yq959zjQgfysgxaC/vVgTXAM=
=ZMx8
-----END PGP SIGNATURE-----

--Sig_/nHzddNzDrAsvVw2l_tywX+.--
