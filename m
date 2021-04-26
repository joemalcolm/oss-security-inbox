X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5212" "Monday" "26" "April" "2021" "15:21:16" "+0200" "Matthias Gerstner" "mgerstner@suse.de" nil "139" "[oss-security] virtualbox: CVE-2021-2264: vboxautostart-service.sh allows injection of parameters in 'su' invocation" nil nil nil "4" nil nil (number mark "U       mgerstner@su Apr 26  139/5212  " thread-indent "\"[oss-security] virtualbox: CVE-2021-2264: vboxautostart-service.sh allows injection of parameters in 'su' invocation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] virtualbox: CVE-2021-2264: vboxautostart-service.sh allows injection of parameters in 'su' invocation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15845 invoked by uid 550); 26 Apr 2021 13:21:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15827 invoked from network); 26 Apr 2021 13:21:30 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 26 Apr 2021 15:21:16 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YIa+TGj3iH9HuCtU@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vLlDkjvdwMJWIvv6"
Content-Disposition: inline
Subject: [oss-security] virtualbox: CVE-2021-2264: vboxautostart-service.sh allows injection
 of parameters in 'su' invocation

--vLlDkjvdwMJWIvv6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

I recently discovered an issue in the script "vboxautostart-service.sh"
which is distributed by Oracle as part of their virtualbox RPMs [1]. By
default this script is not used but it can be enabled by an
Administrator according to the manual [2].

In the context of the autostart feature a directory "$VBOXAUTOSTART_DB"
(by default /etc/vbox) is used. Local users in the system are granted
write access to this directory. Users are supposed to create files of
the form "<username>.start" to configure autostarting of their
respective virtualbox VMs.

The version of the script in virtualbox release 6.1.18 (and older
releases) runs as root and uses the following bash for loop in its
`start()` function:

```
    for user in `ls $VBOXAUTOSTART_DB/*.start`
    do
        start_daemon `basename $user | sed -ne "s/\(.*\).start/\1/p"` $bina=
ry $PARAMS > /dev/null 2>&1
    done

    [...]

    start_daemon() {
        usr=3D"$1"
        shift
        su - $usr -c "$*"
    }
```

Since by design unprivileged users need to have write access to this
directory, an unprivileged user can create arbitrarily named new files
in it that will be processed by the for loop above.

If a user creates a file like "$VBOXAUTOSTART_DB/--evil.start", then the
for loop will pass "--evil" as parameter to `start_daemon()`, resulting
in the command line flag `--evil` being passed to the `su` utility. A
reproducer for the openSUSE virtualbox package, which uses an older but
similarly vulnerable autostart script, looks like this:

    # emulate a malicious user that is a member of the vboxusers group
    root# su -g vboxusers nobody
    nobody$ cd /etc/vbox
    # try to inject a parameter to 'su'
    nobody$ touch -- '-s myshell.start'
    nobody$ exit
    # execute the autostart script
    root# /usr/lib/virtualbox/vboxautostart.sh start
    vboxautostart.sh: Starting VirtualBox VMs configured for autostart.
    vboxautostart.sh: Starting VMs for user -s myshell.
    # execution fails, because we cannot embed '/' characters in
    # filenames
    su: failed to execute  myshell: No such file or directory

Luckily this is not a full local root exploit. Two aspects are reponsible f=
or
this:

- filenames cannot contain '/' characters, therefore we cannot specify
  any valid executable beyond the CWD (usually "/") of the autosart.sh scri=
pt.
- the $user argument is passed before the `-c /usr/lib/virtualbox/VBoxAutos=
tart`
  parameter. And the command line parsing logic of 'su' lets the final
  `-c` parameter win, i.e. the attacker cannot influence the command that i=
s run.

Still a local attacker can specify arbitrary other parameters to `su` this =
way
e.g. the `--group=3Dmygroup` parameter. It could be a successful attack vec=
tor
when combined with other security issues.

Beyond this any member of the vboxusers group can influence the autostart
settings of other users, as long as the victim user is allowed to
autostart via /etc/vbox/autostart.cfg.

On a more generic level this design of /etc/vbox as "autostart DB"
allows any member of the vboxusers group to trigger a run of
/usr/lib/virtualbox/VBoxAutostart as any local user (by influencing the
$user value) or as root with any local group (by setting $user to
--group=3Dmygroup).

I privately reported this issue to Oracle Security on 2021-04-08. It has
been fixed via a critical patch update by upstream on 2021-04-20. The
fixed version of the script has stronger limitations on the accepatble
*.start filenames and also requires that the username present in the
file matches the owner of the file.

The openSUSE packages for virtualbox are about to receive updates [3].

[1]: https://www.virtualbox.org/wiki/Linux_Downloads
[2]: https://www.virtualbox.org/manual/ch09.html#autostart-linux
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1184542

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--vLlDkjvdwMJWIvv6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmCGvksACgkQFMQFyXGS
NVMkfBAAo8O7s9d03kMmhete+Pf7G0b6Wd+xGW1UH6DpHmAX2C2X0RhtC4jllBai
3mGKXR898s7+iObdenjQkvO76tMZBy5Lh5iVxp1DL5qZP7r+QA42WiRG71jxaM1T
NPPdZWzQA2DEJ6prNSmisyz1nl4BN/KeJZOW7kPgyQHvj1RkPfb4v1Dl/E08DDMe
Oa4ZcXGjLGxsGDrbVbIf3d9xBDrIoPMKnrmRrxQuaF5UB5WHhWuV/mBv76HxwoI6
wM/ntkfKRQtFMscrxiF3CkVy3PSGnHv9/hLI7PC4TgCyLZcnxs/UCIoC+iC4pRi/
vzxKPJ6sW9RTIDzZL1BOFAOe9iM+OLTbkLhVbYl5YLr1CSBiAD6DcqkSFlLn20DT
EofOov5sIrM2udHZKQ0pAHUB/vzLx6CKGg1ZcfkKLvngxot9i9J9m1Nof1+AgND4
8McWOQiNXQLOf0kdK967BYUoEeA6sK6wCabC0Ta3vTQWjQsyQNT7V23nU5lnLe5i
DHoGeD49Q6CjB7UL0NfJghvczR+jiDSPbbFCNIyWp3urqvjuD0wWha/YWHemrp76
ARr7SMC+EAFSrddTsxU24mGCZd0OwR/RAjyVNgtLFyRG0H1BwmwyxKH9ZfKRGhDw
obf+3AKUBP22z7tDDIvm4UiA3jbsf7jZEWMc/R9+ZeHUffH4mCY=
=bYPv
-----END PGP SIGNATURE-----

--vLlDkjvdwMJWIvv6--
