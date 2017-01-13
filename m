X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4082" "Friday" "13" "January" "2017" "10:03:48" "-0500" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87mvevovcb.fsf@alice.fifthhorseman.net>" "109" "Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]" "^Cc:" nil nil "1" "2017011315:03:48" "[oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]" (number mark "        dkg@fifthhor Jan 13  109/4082  " thread-indent "\"Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]\"\n") "<3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>" ("<CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>" "<3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21510 invoked by uid 550); 13 Jan 2017 15:47:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23946 invoked from network); 13 Jan 2017 15:17:29 -0000
In-Reply-To: <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
References: <CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com> <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
Message-ID: <87mvevovcb.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Cc: oss-security@lists.openwall.com
Date: Fri, 13 Jan 2017 10:03:48 -0500
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]
To: Carlos Alberto Lopez Perez <clopez@igalia.com>, dawid@legalhackers.com

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri 2017-01-13 09:00:36 -0500, Carlos Alberto Lopez Perez wrote:
> On 13/01/17 10:35, Dawid Golunski wrote:
>> Attackers who have managed to replace the log file with a symlink would
>> have to wait for nginx daemon to re-open the log files.=20
>> For this to happen nginx service needs to be restarted, or the daemon ne=
eds
>> to receive a USR1 process signal.=20
>>=20
>> However, the USR1 is sent automatically on default installations of=20
>> Debian-based systems through logrotate script which calls do_rotate()=20
>> function as can be seen in the files quoted below:
>>=20
>>=20
>> --------[ /etc/logrotate.d/nginx ]--------
>>=20
>> /var/log/nginx/*.log {
>> 	daily
>> 	missingok
>> 	rotate 52
>> 	compress
>> 	delaycompress
>> 	notifempty
>> 	create 0640 www-data adm
>> 	sharedscripts
>> 	prerotate
>> 		if [ -d /etc/logrotate.d/httpd-prerotate ]; then \
>> 			run-parts /etc/logrotate.d/httpd-prerotate; \
>> 		fi \
>> 	endscript
>> 	postrotate
>> 		invoke-rc.d nginx rotate >/dev/null 2>&1
>> 	endscript
>> }
>>=20
>> ------------------------------------------
>
> This looks to me like an issue on the logrotate side rather than on the n=
ginx one..

I agree that this looks like a flaw in logrotate, but there may also be
flaws in nginx.  The only part of nginx that's being used is the
"rotate" subcommand of /etc/init.d/nginx , which just sends USR1 to the
running daemon.

the nginx master process is running still running as the root user
(presumably to do things like bind to ports 443 and 80), and that's the
process that gets USR1, so it could potentially be at risk here too.

> If I have:
>
> /var/log/nginx/error.log -> /etc/ld.so.preload
>
> Why does logrotate "create 0640 www-data adm" over /var/log/nginx/error.l=
og
> removes and creates /etc/ld.so.preload ??? That is shocking!
>
> It should do that on /var/log/nginx/error.log, by removing that symlink
> and creating a new empty standard file on /var/log/nginx/error.log !!
>
> Dont you agree??

I'm not sure whether this is the right thing to do -- perhaps the right
thing for logrotate to do is to notice that this is a weird case and
fail with an error.

This is more evidence that having an entirely separate daemon manage
logfiles (e.g. svlogd from the runit suite, or journald from systemd) is
a better system design than trying to teach every daemon how to manage
its own logfiles sanely.  If the main nginx daemon did not retain root
privs, then it *couldn't* mount the attack described here.

So the other question left is why nginx needs root privs in the first
place.  If the only reason is "privileged ports", that's a terrible
reason.  One amelioration would be to ship the binary with
CAP_NET_BIND_SERVICE and make it only executable by the www-data user.

Another approach would be to use socket activation, where the service
supervisor opens the privileged ports and hands them off to the running
child process which has no special privileges at all.

This would result in less code for the daemon: no socket opening, no
logfile management; and less ways that it could break.

   --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOCdgUepHf6PklTkyFJitxsGSMjcFAlh47FUACgkQFJitxsGS
MjfTLxAAiFhGKm9+4tC5x4DeO8UxS+oYOiZ6eumFWVXrNX49bUOc8ytNvjCXtZXL
MPBsxeyWzZ2rirKTmGKn/IJmPz/POG2B2Plh4fe5MdVBZmBskHS0YEhdB2MhC/VE
iPY7Pyp4w8NJXKwLrBgaa1gEUguWpifIU25GoeocCeyITqE3+c3p4pUH/D2NrvnQ
fAnkv1nm1dilgeme8CqquqEXCIRAmbx3Eemc5fGKGJqh1IPen1riFHldmeG2wGz2
RimeJ5AH/UenfJasmhXl8+L9+UVQKPiYqWknklrEFFo0pEzYXTHKhAEA7tLIhMG/
Mbz6ynIMv3FfWoKWpchIWWszY8S+al9iZQRt3dCWv6o+8/1uRIRwVaMAyMhDdMwG
8hZjnRkY3o8LOt/Pb+utbYxurAeQexjLrmDkUI3N7cjvEELHX6m+hePvRFyOaC04
EL1aYhABC/fffTLTXRtUFS/j2MWWVBYbdaGxE0dc24uUaU9Xn9h0tHbMlggofyer
Pz1JhFW6+JiQdvQDzpABlHcYW0ySbC545NRFT3tNBWBn/a91KIIEq5bdfoEh2Swv
AEB+jnkORMKthFepsMUyaredx6VbCgqCl12NsVf7wifrX0zK4shP+s0fOeB5mikB
6/vdGhZZ7FIjBj7iX7j95GwU7xKWyK+ccXZhGhtwTH0K8AbP2pw=
=PyNu
-----END PGP SIGNATURE-----
--=-=-=--
