Received: (qmail 25891 invoked by uid 550); 26 Nov 2024 20:36:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11429 invoked from network); 26 Nov 2024 20:31:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1732653097;
	bh=hTyBueUeKUNewOxI3er7l48rbyYm0jmSeyOjQfQzQj0=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=UFc7CiZyIIY4IqSaek/HE2AZJ+PFtrP6CIAbpzb/wHGBeN3u2fLmg9NOff6chO73o
	 kTPW2mD8EOtj836eR53bTiZudU7BW2MKzHWg8w7g68hmD5+sDdy6Wzjs7Ed1qdiyYF
	 pKm4qn7EHGchl+tMlfevoElicBIZO5EOv1DUdoFUDuoqNu9DTj0+PsA2B9MmnW2zTd
	 iiVoW6rRRIz/i1oSC5zqixpHT+PJbAeJQg99ifiGtvQ3BJG56YN9oHA5XBuAWNbxcx
	 yxFEohPJAy5Ni/SVD7nmN46GQU95wwbvvrleBu7foaHHbDAHdgp5+rSLUJBqPBuMMQ
	 PPFdOvsPAwPuw==
Date: Tue, 26 Nov 2024 12:31:34 -0800
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <Z0YwJvy28dKYSQ-3@aeon>
References: <20241119162429.GA12472@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i1WJqR0t7JFAycRL"
Content-Disposition: inline
In-Reply-To: <20241119162429.GA12472@localhost.localdomain>
Subject: Re: [oss-security] Local Privilege Escalations in needrestart

--i1WJqR0t7JFAycRL
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The security fix for CVE-2024-48991, 6ce6136 (=E2=80=9Ccore: prevent race
condition on /proc/$PID/exec evaluation=E2=80=9D) [0], introduced a regress=
ion
which was subsequently fixed 42af5d3 ("core: fix regression of false
positives for processes running in chroot or mountns (#317)") [1].

Many thanks to Ivan Kurnosov and Salvatore Bonaccorso for their review.

[0] https://github.com/liske/needrestart/commit/6ce6136cccc307c6b8a0f8cae12=
f9a22ac2aad59
[1] https://github.com/liske/needrestart/commit/42af5d328901287a4f79d1f5861=
ac827a53fd56d

On Tue, Nov 19, 2024 at 04:25:15PM +0000, Qualys Security Advisory wrote:
>=20
> Qualys Security Advisory
>=20
> LPEs in needrestart (CVE-2024-48990, CVE-2024-48991, CVE-2024-48992,
> CVE-2024-10224, and CVE-2024-11003)
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Contents
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Summary
> Background
> CVE-2024-48990 (and CVE-2024-48992)
> CVE-2024-48991
> CVE-2024-10224 (and CVE-2024-11003)
> Mitigation
> Acknowledgments
> Timeline
>=20
>     I got bugs
>     I got bugs in my room
>     Bugs in my bed
>     Bugs in my ears
>     Their eggs in my head
>         -- Pearl Jam, "Bugs"
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Summary
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> needrestart (from https://github.com/liske/needrestart) is a Perl tool
> that is installed by default on Ubuntu Server since version 21.04. From
> https://discourse.ubuntu.com/t/needrestart-changes-in-ubuntu-24-04-servic=
e-restarts:
>=20
> ------------------------------------------------------------------------
>   What is needrestart, exactly?
>=20
>   needrestart is a tool that probes your system to see if either the
>   system itself or some of its services should be restarted. That last
>   part is the one of interest in this document. Notably, a service is
>   considered as needing to be restarted if one of its processes is using
>   a shared library whose initial file isn't on the system anymore (for
>   instance, if it has been overwritten by a new version as part of a
>   package update).
>=20
>   We ship this tool in our server images, and it is configured by
>   default to run at the end of APT transactions, e.g. when doing apt
>   install/upgrade/remove or during unattended-upgrades.
> ------------------------------------------------------------------------
>=20
> We discovered three fundamental vulnerabilities in needrestart (three
> LPEs, Local Privilege Escalations, from any unprivileged user to full
> root), which are exploitable without user interaction on Ubuntu Server
> (through unattended-upgrades):
>=20
> - CVE-2024-48990: local attackers can execute arbitrary code as root by
>   tricking needrestart into running the Python interpreter with an
>   attacker-controlled PYTHONPATH environment variable.
>=20
>   Last-minute update: an additional CVE, CVE-2024-48992, has been
>   assigned to needrestart because local attackers can also execute
>   arbitrary code as root by tricking needrestart into running the Ruby
>   interpreter with an attacker-controlled RUBYLIB environment variable.
>=20
> - CVE-2024-48991: local attackers can execute arbitrary code as root by
>   winning a race condition and tricking needrestart into running their
>   own, fake Python interpreter (instead of the system's real Python
>   interpreter).
>=20
> - CVE-2024-10224: local attackers can execute arbitrary shell commands
>   as root by tricking needrestart into open()ing a filename of the form
>   "commands|" (technically, this vulnerability is in Perl's ScanDeps
>   module, but it is unclear whether this module was ever meant to
>   operate on attacker-controlled files or not).
>=20
>   Last-minute update: in the end, an additional CVE, CVE-2024-11003, has
>   been assigned to needrestart for calling Perl's ScanDeps module with
>   attacker-controlled files.
>=20
> To the best of our knowledge, these vulnerabilities have existed since
> the introduction of interpreter support in needrestart 0.8 (April 2014).
> From https://github.com/liske/needrestart#interpreters:
>=20
> ------------------------------------------------------------------------
>   needrestart 0.8 brings an interpreter scanning feature. Interpreters
>   not only map binary (shared) objects but also use plaintext source
>   files. The interpreter detection tries to check for outdated source
>   files since they may contain security issues, too. This is only a
>   heuristic and might fail to detect all relevant source files. The
>   following interpreter scanners are shipped:
>=20
>   - NeedRestart::Interp::Java
>   - NeedRestart::Interp::Perl
>   - NeedRestart::Interp::Python
>   - NeedRestart::Interp::Ruby
> ------------------------------------------------------------------------
>=20
> We will not publish our exploits for now; however, please note that
> these vulnerabilities are trivially exploitable, and other researchers
> might publish working exploits shortly after this coordinated release.
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Background
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
>     And now the questions:
>     Do I kill them?
>     Become their friend?
>     Do I eat them?
>         -- Pearl Jam, "Bugs"
>=20
> While idly watching an "apt-get upgrade" of one of our Ubuntu Servers,
> we noticed a message that we had never noticed before: "Scanning
> processes..."
>=20
> We immediately wondered: What is printing this message? Is it scanning
> userland processes? As root? Even processes that do not belong to root?
>=20
> We quickly found out that this message is printed by needrestart, a tool
> that scans the userland for processes that need to be restarted after a
> package installation, upgrade, or removal. Naturally, needrestart scans
> all userland processes as root, including unprivileged user processes;
> i.e., possibly attacker-controlled processes.
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> CVE-2024-48990 (and CVE-2024-48992)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> To determine whether a Python process (a process that is running the
> Python interpreter) needs to be restarted, needrestart extracts the
> PYTHONPATH environment variable from this process's /proc/pid/environ
> (at line 193), sets this environment variable if it exists (at line
> 196), and executes Python ("$ptable->{exec}" at line 203) with a "-"
> argument to read a short, hard-coded script from stdin (at line 204):
>=20
> ------------------------------------------------------------------------
> 135 sub files {
> 136     my $self =3D shift;
> 137     my $pid =3D shift;
> 138     my $cache =3D shift;
> 139     my $ptable =3D nr_ptable_pid($pid);
> ...
> 193     my %e =3D nr_parse_env($pid);
> 194     local %ENV;
> 195     if(exists($e{PYTHONPATH})) {
> 196         $ENV{PYTHONPATH} =3D $e{PYTHONPATH};
> 197     }
> ...
> 203     my ($pyread, $pywrite) =3D nr_fork_pipe2($self->{debug}, $ptable-=
>{exec}, '-');
> 204     print $pywrite "import sys\nprint(sys.path)\n";
> 205     close($pywrite);
> ------------------------------------------------------------------------
>=20
> Unfortunately, if a Python process belongs to a local attacker, then
> needrestart executes Python (at line 203) with an attacker-controlled
> PYTHONPATH environment variable, which allows the attacker to execute
> arbitrary code as root (even though needrestart's hard-coded Python
> script at line 204 is not attacker-controlled at all). This is
> CVE-2024-48990.
>=20
> For example, in our exploit we run a simple Python process (which
> sleep()s forever) with a "PYTHONPATH=3D/home/jane" environment variable,
> and plant a shared library "importlib/__init__.so" in our /home/jane.
> As soon as needrestart executes Python with our PYTHONPATH environment
> variable (at line 203), our shared library is executed (by Python's
> initialization code) and creates a SUID-root shell in /home/jane.
>=20
> Note: needrestart's support code for the Ruby interpreter seems equally
> vulnerable, but we have not investigated this any further, because
> (unlike Python) Ruby is not installed by default on Ubuntu Server.
>=20
> Last-minute update: we have now confirmed that needrestart's support
> code for the Ruby interpreter is indeed vulnerable and exploitable,
> through an attacker-controlled RUBYLIB environment variable and an
> "enc/encdb.so" shared library. This is CVE-2024-48992.
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> CVE-2024-48991
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> To determine whether a process is indeed a Python process (a process
> that is running the Python interpreter, for example /usr/bin/python3),
> needrestart reads this process's /proc/pid/exe (at line 520), and then
> matches it against the regular expression at line 45:
>=20
> ------------------------------------------------------------------------
>  520         my $exe =3D nr_readlink($pid);
>  ...
>  606             $restart++ if(needrestart_interp_check($nrconf{verbosity=
} > 1, $pid, $exe, $nrconf{blacklist_interp}, $opt_t));
> ------------------------------------------------------------------------
> 166 sub needrestart_interp_check($$$$$) {
> 167     my $debug =3D shift;
> 168     my $pid =3D shift;
> 169     my $bin =3D shift;
> 170     my $blacklist =3D shift;
> 171     my $tolerance =3D shift;
> ...
> 176         if($interp->isa($pid, $bin)) {
> ------------------------------------------------------------------------
>  40 sub isa {
>  41     my $self =3D shift;
>  42     my $pid =3D shift;
>  43     my $bin =3D shift;
>  44=20
>  45     return 1 if($bin =3D~ m@^/usr/(local/)?bin/python([23][.\d]*)?$@);
>  46=20
>  47     return 0;
>  48 }
> ------------------------------------------------------------------------
>=20
> In fact, this code used to be vulnerable to CVE-2022-30688, a Local
> Privilege Escalation reported by Jakub Wilk: the regular expression at
> line 45 used to be unanchored (i.e., "/usr/(local/)?bin/python" instead
> of "^/usr/(local/)?bin/python([23][.\d]*)?$"), so local attackers could
> simply run their own, fake "/home/jane/usr/bin/python" (for example) and
> needrestart would later execute this fake Python interpreter as root (as
> if it were the system's real Python interpreter, at line 203).
>=20
> We tried to bypass the fixed, anchored regular expression at line 45,
> but we failed. However, we eventually realized that the filename that is
> checked at line 45 is not necessarily the same filename that is executed
> at line 203: the filename that is checked is read from /proc/pid/exe in
> the middle of needrestart's main loop (at line 520), but the filename
> that is executed ("$ptable->{exec}" at line 203) was first read from
> /proc/pid/exe long before needrestart entered its main loop.
>=20
> In other words, needrestart is vulnerable to a TOCTOU race condition
> (time-of-check, time-of-use). For example, our exploit /home/jane/race
> waits for needrestart to read our /proc/pid/exe for the first time (we
> use inotify to reliably win this race), and then quickly execve()s the
> system's real Python interpreter with a script that simply sleep()s for
> some time. As a result, needrestart does its checks on the real Python
> interpreter, but executes our own /home/jane/race instead, as root.
>=20
> Note: needrestart's support code for the Ruby interpreter seems equally
> vulnerable, but we have not investigated this any further.
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> CVE-2024-10224 (and CVE-2024-11003)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> After we had discovered CVE-2024-48990 and CVE-2024-48991 in
> needrestart's support code for the Python interpreter (and Ruby), we
> began to wonder whether the support code for the Perl interpreter might
> also be vulnerable to a Local Privilege Escalation.
>=20
> Unlike needrestart's support code for Python and Ruby, the support code
> for Perl does not execute the Perl interpreter itself: instead, it calls
> the scan_deps() function from Perl's ScanDeps module, which analyzes a
> Perl script by recursively reading its source files.
>=20
> We therefore grepped the ScanDeps module for one of the oldest pitfalls
> of the Perl programming language: the two-argument form of open(), which
> allows attackers to execute arbitrary shell commands if they control the
> name of the file to be open()ed (for example, "commands|"). For more
> information, please refer to rain.forest.puppy's 1999 Phrack article
> ("That pesky pipe" section) and the SEI CERT Perl Coding Standard:
>=20
>   https://phrack.org/issues/55/7.html#article
>   https://wiki.sei.cmu.edu/confluence/pages/viewpage.action?pageId=3D8889=
0543
>=20
> Incredibly, we found a match, at line 871 in ScanDeps.pm:
>=20
> ------------------------------------------------------------------------
>  868 sub scan_file{
>  869     my $file =3D shift;
>  870     my %found;
>  871     open my $fh, $file or die "Cannot open $file: $!";
> ------------------------------------------------------------------------
>=20
> In our exploit, we simply run a Perl script named "/home/jane/perl|"
> (which sleep()s forever), and as soon as needrestart calls scan_deps()
> to analyze our script, "/home/jane/perl|" is open()ed (at line 871), but
> because this filename ends with a "|" it is treated as a shell command,
> and our own "/home/jane/perl" is executed instead, as root.
>=20
> Last-minute update: while reviewing needrestart's patches for these
> vulnerabilities, we have discovered that Perl's ScanDeps module is also
> trivially exploitable through various calls to eval() ("string" eval()s,
> https://perldoc.perl.org/functions/eval). Consequently and impressively,
> in response to our advisory:
>=20
> - all of ScanDeps's vulnerable calls to open() and eval() have been
>   patched, thus fixing CVE-2024-10224;
>=20
> - needrestart's dependence on ScanDeps has been completely removed (it
>   uses a simple regex-based approach now), thus fixing CVE-2024-11003.
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Mitigation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> As already recommended by needrestart's advisory for CVE-2022-30688
> (from https://www.openwall.com/lists/oss-security/2022/05/17/9):
>=20
> ------------------------------------------------------------------------
> Disabling the interpreter heuristic in needrestart's config prevents
> this attack:
>=20
>  # Disable interpreter scanners.
>  $nrconf{interpscan} =3D 0;
> ------------------------------------------------------------------------
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Acknowledgments
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> We thank needrestart's maintainer (Thomas Liske), Module::ScanDeps's
> maintainers (Roderich Schupp in particular), the Ubuntu Security Team
> (Mark Esler in particular), and distros@openwall (Salvatore Bonaccorso
> from the Debian Security Team in particular) for their outstanding work;
> it has been a real pleasure to collaborate on this coordinated release.
>=20
> We also thank Adam Boileau (@metlstorm) and Rodrigo Branco (@bsdaemon)
> for their very kind words about our work; they mean the world to us:
>=20
>   https://risky.biz/RB755/
>   https://phrack.org/issues/71/2.html#article
>=20
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Timeline
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> 2024-10-04: We sent our advisory and exploits to the Ubuntu Security
> Team, and asked them if they could help us to coordinate this disclosure
> with the upstream projects and distros@openwall; they gladly accepted.
>=20
> 2024-10-08: The Ubuntu Security Team sent our advisory and exploits to
> needrestart's maintainer; we then started a very constructive exchange
> of patches and patch reviews.
>=20
> 2024-10-18: The Ubuntu Security Team opened GHSA-g597-359q-v529, a
> private GitHub repository to collaborate on this disclosure with
> Module::ScanDeps's maintainers.
>=20
> 2024-11-11: The Ubuntu Security Team sent our advisory and all of
> needrestart's and Module::ScanDeps's patches to distros@openwall.
>=20
> 2024-11-19: Coordinated Release Date (16:00 UTC).

--i1WJqR0t7JFAycRL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmdGMCMACgkQszvZgG6F
IMYSMg//T2tTGr+U8haAwpXrfHOGLtEfOx3VX2lajIP6tnFKg0HjIQHbIsjvgxiv
8KWep7plP0ue5mEd4negQOGo09qpe06VyzPskRNmnYJ/czS2+5eugVPLTdclEGUZ
UA2wefcQAbFeDMc1R9LBQqGuo2qTkB7vfCUjkANnIqDMDDX0nc0jagPGNb4TQ3jh
wPy4WPlBwMFkNXCe7eMsvdTs2FJ9b3b2dj66W+VPjFywh7qkY2KzOQHzkX71euBj
QM7yuWSXZH3AgfV01cb7xyzkd0/AcQaq4O1uXuc1yHGRvXubyFnIsbSFK6bdgRml
GmOMbMlaLYIPGMHnjafK8gUNJcaNELtvczktKA+mH13nAu1cW+U51xMg06pw3Z7z
HE5DuqGRlXZH3d8NvMSwjfg+zBHCQHFWqIiuEx9PxwMsAdNfazT5Z0tNt2hz70fs
tBumjbExQcXjIkTLWTXKjwpt/q3PUZ+okrALZrfdlCM/wmxlCfIsHsjRHdWmmcHZ
vHgl/vbnJbvdT0gSfOxRH2akNv1MorTH4FbeCrz7tAMt6ZlqN25QEqjc41Hu8n1J
bnI95stnIU/Q7B6T5K+mC0VzctsQ9jXIQKdPhAd0PensO5acQORHq8OMAZHB7FBN
1ShLBI0hyP6SoNDEP71vuPzGlfxCFr6r/517w5i5TdLiceCEgYo=
=npYn
-----END PGP SIGNATURE-----

--i1WJqR0t7JFAycRL--
