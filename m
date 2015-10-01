X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1505" "Thursday" "1" "October" "2015" "16:58:51" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151001205851.2DC476C0094@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE Request: Unauthorized access to IPC objects with SysV shm" nil nil nil "10" "2015100120:58:51" "[oss-security] Re: CVE Request: Unauthorized access to IPC objects with SysV shm" (number mark "        cve-assign@m Oct  1   39/1505  " thread-indent "\"[oss-security] Re: CVE Request: Unauthorized access to IPC objects with SysV shm\"\n") "<CA+8ESAygaJUpjTzx7Stti=hgiGNb=dA67S5S7-_0YSxjETfawA@mail.gmail.com>" ("<CA+8ESAygaJUpjTzx7Stti=hgiGNb=dA67S5S7-_0YSxjETfawA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32467 invoked by uid 550); 1 Oct 2015 20:59:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32435 invoked from network); 1 Oct 2015 20:59:03 -0000
In-Reply-To: <CA+8ESAygaJUpjTzx7Stti=hgiGNb=dA67S5S7-_0YSxjETfawA@mail.gmail.com>
Message-Id: <20151001205851.2DC476C0094@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, keescook@chromium.org
Date: Thu,  1 Oct 2015 16:58:51 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Unauthorized access to IPC objects with SysV shm
To: julien@cr0.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> ipc_addid installs new ipc object with idr_alloc, from this point on
> it is accessible to other threads. At this point the object contains
> unitialized garbage. Then it fills in uid, etc:
> 
> new->cuid = new->uid = euid;
> new->gid = new->cgid = egid;
> new->seq = ids->seq++;
> 
> While this happens another thread can get access to the object and do
> uid check on the unitialized garbage, which can give falsely give
> accesses

Use CVE-2015-7613.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWDZ4iAAoJEL54rhJi8gl5hkYQAMoU1mZjjTUlq/ck9SYn90XL
ouAOm6oMb01EMri/Kn0HLq6B8n/R27vc+ytALytg41B/QYIU8xFeCYTPIfy4+Zg6
RxhLtkQlKuO94m7eBtc83NjLy4Xb1lTfFG1cZGyX3/IYZdNactX9qpurP5KUfDGD
FXsrfan6539SiF6+2LqRPEIFpYQIQOhVMIVGtoqb0kiIii4MEWT3NZv1sL+Wwt4E
Nv7WF2gew+jUpMahssiAy608zThbI8W26trFpTVR7wLOnu9KThajugYCwKskfDqX
2T/YD4dc10M/kyP4li+OwRV8yQOjb8gRuO6VUaCXLEIwLoTTgz+xQrj4mCH1IJRT
Ft9mpLMa8XGSLeJNT8qtlKid91EEW1tRo/dF1bA7ybKQgahyvH6uiE5j8TifL8RK
YLU9XU3OOMdtqvuoKlh12qEb5D0h4hBUM6S0lzdNVbUP28DXYeyH47qB6Kt86HOp
jkBEFtzUP6VzVXUM8TjGSsiR4WsyOuNtV0MkI5LGiOzPb4Dd/nrPdzdsG4XWm2tA
Ri/V912iWQhYXbh7zkT2eLGQtR1NYjJahvrE5pN9hI/4xRqerEVNyMIgp7y6UF25
bX6lgjKREqbSElUtBvnSQJmegxt+FaergwgaHfnxESYIDSee9u9+zovPl8gpyJaA
q4qC9UqKZDK7tsCErOVo
=/fAD
-----END PGP SIGNATURE-----
