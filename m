X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4003" "Friday" "13" "January" "2017" "16:02:22" "+0100" "Thomas Deutschmann" "whissi@gentoo.org" "<d93729b8-0e0e-5d8c-8bf9-5de01ab62979@gentoo.org>" "121" "Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]" "^Date:" nil nil "1" "2017011315:02:22" "[oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]" (number mark "        whissi@gento Jan 13  121/4003  " thread-indent "\"Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root Privilege Escalation [CVE-2016-1247 UPDATE]\"\n") "<3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>" ("<CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>" "<3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25646 invoked by uid 550); 13 Jan 2017 15:47:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3205 invoked from network); 13 Jan 2017 15:02:49 -0000
References: <CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>
 <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
Message-ID: <d93729b8-0e0e-5d8c-8bf9-5de01ab62979@gentoo.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="nSkUNK2VMB8Emc2VheRBWThrw8rrnD4ap"
Date: Fri, 13 Jan 2017 16:02:22 +0100
From: Thomas Deutschmann <whissi@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root
 Privilege Escalation [CVE-2016-1247 UPDATE]
To: oss-security@lists.openwall.com

--nSkUNK2VMB8Emc2VheRBWThrw8rrnD4ap
Content-Type: multipart/mixed; boundary="pRtvWrW7RspAHgdpjfJ4rL60TGmikAWV6";
 protected-headers="v1"
From: Thomas Deutschmann <whissi@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <d93729b8-0e0e-5d8c-8bf9-5de01ab62979@gentoo.org>
Subject: Re: [oss-security] Nginx (Debian-based + Gentoo distros) - Root
 Privilege Escalation [CVE-2016-1247 UPDATE]
References: <CADSYzsvmN6=Zc_hn-bk9zZRUUgz-TVDvSR8scEAcr6Gxe5PsDQ@mail.gmail.com>
 <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>
In-Reply-To: <3212855a-34ce-b2dc-d6b1-1fbb40f7ce2e@igalia.com>

--pRtvWrW7RspAHgdpjfJ4rL60TGmikAWV6
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

Carlos Alberto Lopez Perez wrote:
>> --------[ /etc/logrotate.d/nginx ]--------
>>
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
>>
>> ------------------------------------------
>=20
> This looks to me like an issue on the logrotate side rather than on the n=
ginx one..
>=20
> If I have:
>=20
> /var/log/nginx/error.log -> /etc/ld.so.preload
>=20
> Why does logrotate "create 0640 www-data adm" over /var/log/nginx/error.l=
og
> removes and creates /etc/ld.so.preload ??? That is shocking!
>=20
> It should do that on /var/log/nginx/error.log, by removing that symlink
> and creating a new empty standard file on /var/log/nginx/error.log !!
>=20
> Dont you agree??

No, please read the advisory again.

Please notice that logrotate doesn't do some magic. The config tells
logrotate to do that (logrotate itself BTW ignores symlinked files since
v3.8.2 [1]).

It is important to understand that logrotate is only used in that
example to trigger nginx behavior. And attacker could also just wait for
the system administrator to do similar actions with nginx (just a
question of time).

So the real "problem" is that the nginx master process runs as root and
will change ACLs of existing files which allows an user to escalate
privileges if that user can create files nginx will touch.

See https://trac.nginx.org/nginx/ticket/376 for more details.

Now, given that multiple maintainers created the same problem, one could
argue that such a change in permissions is unexpected. Nevertheless it
is documented, so I don't blame upstream.


See also:
=3D=3D=3D=3D=3D=3D=3D=3D=3D
[1]
https://github.com/logrotate/logrotate/commit/9f19aba75079a61a913eb06748cf9=
aa83802c24c


--=20
Regards,
Thomas Deutschmann



--pRtvWrW7RspAHgdpjfJ4rL60TGmikAWV6--

--nSkUNK2VMB8Emc2VheRBWThrw8rrnD4ap
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0

iQJ8BAEBCgBmBQJYeOwCXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQzM0M1ODQ4MkM0MDIyOTJEMkUzQzVDMDY5
NzA5RjkwQzNDOTZGRkM4AAoJEJcJ+Qw8lv/I7xgP/0R/TBtvBYWOJx5w9HyO2/gI
7Fr5s8VCu5tyOtJ81+CvsyRrTrqtBFl7DMp7CIBxBfQgPErrDd5KwIEiDcI1shKw
Yt3T4cJb+2JkmXKqocyIgE/GsFwOl+5blibvKVmiMpdAgeYnPIzJG4s5KrJZwLpY
i0ZKrExIYiQ1xapvK38Nyr1uoEpy9tyi2aFBzxF0LRNvERb5roET4LqyZ54HTidj
75Ly6hEUpOKn5iO5E3EQrag9dm2FS8j9yLdGlcUp4bQ+p8MNXweVgzFSQDCbBa0l
CuJ6FJDj5V8pgbsAKmdRwK0UCC1nyGKoVdbazXgRyBokDCBdy5/sH4Sif64Sa34O
LL/RtjFOrGdC/bGW6sLqCv9OlZOlhiF4iNTNnyiiszgX1ZagJtfyCNQfyGakIQVs
Y+VleSg7K5GKaRf7l63CERe4D9i3bCLebxhZYseJMIdCVLO2sYJKnLt/wzomS26w
mEeCD+Jqelt3k93lURisW1/EMDwtgGAwzVk3dhQ7G4V+KG9nRGzDm5jA44UgaAca
RW+e6ODk9T09MSTH4H4mcin+1IrZ26L9tHJMt8+l7aw6IkV/E23UqcLP9CJx8I2+
3VQFp3gWuhJ0DC5cYhB42h7r81cehCTIaL4kajiVB/CnyH9UPeEq0NZbQ7FGle9n
FkWtn6ctAju1JWRvs2dE
=c/t/
-----END PGP SIGNATURE-----

--nSkUNK2VMB8Emc2VheRBWThrw8rrnD4ap--
