Received: (qmail 20355 invoked by uid 550); 20 May 2026 09:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5472 invoked from network); 20 May 2026 09:23:35 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779269004; cv=none;
        d=google.com; s=arc-20240605;
        b=bDjNZmU2hKKVfCU0oWiEXh5Xs1KupC/hMAdy5zn89nlusQciT3gZyE3Bvjq5xzy2+z
         78M1xP9LsHxkArp2jYFUJya+HE23MQf2gSvwLLoJWR87f9LKxprlgFkYwCLAVyOT4CLs
         V+d33W1XizXUNwLmYiIm7o2ioEjRybIAMqp4rmXBu/Vhbln4JdEJLGnJ086sV+/N/JGP
         tswANDYgh8JNRCtRCJgCX6k28wMPM6Q3tpSBduzsiVb9mw60O3XE7+zLHCyWHa46TaN2
         YMsZ9MXgVuvoGQiWIktaozIvNMRiWkbt5/Xjw9LZ/GEqGZMOXlpuQ4MNCmTv+tr2Rd1F
         hGhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:mime-version:from:openpgp
         :dkim-signature;
        bh=1SRVmUdZwmm37KfC3tc6F+9UfYl7CXz8EkGbGCseYvs=;
        fh=iGED158XSqudXCk+NmmoJvAGNuQ7A53VGu2I54F7bgA=;
        b=XXza7qvU0zB0IcavPhXb4tKAu/VwzoCHTx/rTBiHMr3/vAQKwMloBeOvjcZRRwxbSl
         9R9hm/JwPwUSMdCcpIQ403svK6XlugUTwB0oKNwMp1LWk5KdqWi94h84e77XNgnh8Fqj
         81j0I5ZOZQHpJILts+zNax2NHigduTBOMqL3jC4kQcsaXDC5yW3aamYQK0/JPhfSHUiV
         Ii1y2WdAO4aEunzYg3j/mAUCNM1NoYyfhxhL+7xTdbqY/CfJh+opSx/Z/VrVHfXOZ5wa
         uMzCiXINIkuAzTIrXfAs4f8oCQVjEFuJtvPHw7wIixb2Po4g+6Wcmys62Ll4mFJcR2FE
         LPKw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779269004; x=1779873804; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:mime-version:from:openpgp:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SRVmUdZwmm37KfC3tc6F+9UfYl7CXz8EkGbGCseYvs=;
        b=p05SmAbQxRIZmkRYgw3MoRiZl5pUkkcl2w4nFiUfXxaz/7J0kiDJsiCUG++9d4UjRu
         qylTJRkIVTXvzBf1M1b1YVZGLalg8kFzya7Pz5T1dT29rASWJZoMfI58mb2tpeGWXviB
         zKlawvqdc7xJ3CU6ORGmwMQJRPi1bnOYnBSXQu5Hic+hf+7AxRPgTbqp6dAlp8mnrsnR
         RxlxcFbPCaAf4kyiyljltzXs0hQ4XlgwvucwCNSDovxfpA1vX68u9X6YgL5jUczRiHig
         1UcaLaeErkxADx1EBuzwOvx/0KJs5AlFj9Lt9vyKo+D0XncKwy5kRskGBGBpy4kVPu/G
         MNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779269004; x=1779873804;
        h=cc:to:subject:message-id:date:mime-version:from:openpgp:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1SRVmUdZwmm37KfC3tc6F+9UfYl7CXz8EkGbGCseYvs=;
        b=jI7GoUWDMAceWB+N5rjZfOfqPcR7O01EOJ2E+0Hck8xtp9BeQDvbCC7RYqavsqtS33
         ulIBwFrN6iIDKadFZ0Dvumgeg9AQixtvLi6FpIoehtdqIudfujHI+Oc0zUhyDfGo/ITN
         pw3gRx7I+kc8Di40z+Z3OCDtfAT71maNbWiJZyJUlcZikR9nAs06kwZeI0Gz1fJJektr
         JnqsfP5Ha/IzSRXDVK0U1P/jZ7ljNWi0HuSvchVPM46GDLvcNg7B9Z/NkUxk9m8iNwh9
         KhVmuTNc0xxhw50Q0YM7K091g+Q2vlHU7bnRi4ms/YNN5MIlTr/shvYIHeLM1P0ew7YX
         pf7w==
X-Gm-Message-State: AOJu0YxM3nkX8OmZxzlitmK0mv/FYZOt3MS4k9aICboeneS2zumuEn+s
	XU6Exdlj2vpPz1BxStRPxUem+W8X/xZFQnliqbZSo+HT5wC7RqS+qWRmOZ2MbUh6ntRlq3cHdkb
	NQfIrpoK3M66IkyvllgQsyTIoXBICLzqiLNtv
X-Gm-Gg: Acq92OEE4V2P9eytJ942lW5qyClSu+vZ/NSkqlIxNkA4ToE4oSuHS2MVxH8crjbQquK
	R29+rHC1trXpMNEO9Lx4e5FSmyHrXQ06q/AgdqNKvUF6FgS5xosdiiq9wtd19MzuqmQ5lgvqCUU
	QQ3cwnpefP+ZHcrf5XudGpdUxOYVtQWKbkbuhT3aWt/1ua5GCmPfEWirsxzbZgkvgqrDTaUz5GL
	6S4dOXCd786kIivEAIRH8bSgYegoAOHyxKPQAVyj4dZis+d8vnDp7OwmKuBZnNIDPgn4QbL/Ody
	VyQw
X-Received: by 2002:a05:690c:9e:b0:7bb:ced:fef9 with SMTP id
 00721157ae682-7c948513ce6mr211082427b3.13.1779269004348; Wed, 20 May 2026
 02:23:24 -0700 (PDT)
Openpgp: id=9FEF112DCE19A0DC7E882CB81BB24997A8535F6F
From: Andrew Tridgell <tridge60@gmail.com>
MIME-Version: 1.0
Date: Wed, 20 May 2026 05:23:22 -0400
X-Gm-Features: AVHnY4LgP3-ThxNnsZEXkhLSkxrGoTHnAYCFj3pGfwUYXVleQuZ7ym-j8yfGuiY
Message-ID: <CAAbv5GYGGW9uiLVxGei5UHi1m=dUjmJF3NH5VYiqsG-ViWAPSA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "rsync.project" <rsync.project@gmail.com>
Content-Type: multipart/mixed; boundary="000000000000f77c0b06523c587e"
Subject: [oss-security] rsync 3.4.3 released: six CVEs (CVE-2026-29518, CVE-2026-43617,
 CVE-2026-43618, CVE-2026-43619, CVE-2026-43620, CVE-2026-45232)

--000000000000f77c0b06523c587e
Content-Type: text/plain; charset="UTF-8"

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

rsync 3.4.3 has been released and fixes six CVEs.  All six were
assigned by VulnCheck as CNA.  Affected versions are 3.4.2 and
earlier in every case; users should upgrade to 3.4.3.

Tarball, signatures and NEWS:
    https://rsync.samba.org/ftp/rsync/src/
    https://download.samba.org/pub/rsync/NEWS.html
Tag and per-CVE patches:
    https://github.com/RsyncProject/rsync/releases/tag/v3.4.3
Security advisories (with patch references):
    https://github.com/RsyncProject/rsync/security/advisories

Summary
=======

Three of the six (CVE-2026-29518, CVE-2026-43617, CVE-2026-43619)
require a non-default daemon configuration to reach: the first and
third need "use chroot = no" set for a module, the second needs
"daemon chroot = ..." set in rsyncd.conf.  Two (CVE-2026-43618,
CVE-2026-43620) are reachable from a normal pull or a normal
authenticated daemon connection.  The sixth (CVE-2026-45232) is
reachable only when RSYNC_PROXY is set and the proxy (or a MITM
in front of it) returns a pathological response.

CVE-2026-29518 -- CVSS v4.0 7.3 (HIGH)
TOCTOU symlink race in daemon mode without chroot, allowing local
privilege escalation.  A daemon configured with "use chroot = no"
was exposed to a time-of-check / time-of-use race on parent path
components: a local attacker with write access to a module could
replace a parent directory component with a symlink between the
receiver's check and its open(), redirecting reads (basis-file
disclosure) and writes (file overwrite) outside the module.  The
default "use chroot = yes" is not exposed.  secure_relative_open(),
introduced in 3.4.0 for CVE-2024-12086, was previously unused in
the daemon-no-chroot case; the fix enables it there and reroutes
the sender's read path through it.
Reported by Nullx3D (Batuhan Sancak), Damien Neil, and Michael
Stapelberg.

CVE-2026-43617 -- CVSS v3.1 4.8 (MEDIUM)
Hostname/ACL bypass on a daemon configured with "daemon chroot = /X"
when the chroot tree lacks DNS resolution support.  The reverse-DNS
lookup of the connecting client was performed *after* the daemon
chroot had been entered; if /X did not contain libc resolver
fixtures (/etc/resolv.conf, /etc/nsswitch.conf, /etc/hosts, NSS
service modules) the lookup failed and the hostname was recorded
as "UNKNOWN", causing hostname-based "hosts deny" rules to silently
fail open.  IP-based ACLs are unaffected.  The per-module "use
chroot" setting is unrelated.  The fix performs the lookup before
entering the daemon chroot.
Reported by MegaManSec.

CVE-2026-43618 -- CVSS v3.1 8.1 (HIGH)
Integer overflow in the compressed-token decoder enabling remote
memory disclosure to an authenticated daemon peer.  The receiver
accumulated a 32-bit signed counter without overflow checking; a
malicious sender could trigger an overflow that, with careful
manipulation, leaked process memory contents -- environment
variables, passwords, heap and library pointers -- significantly
weakening ASLR.  The fix bounds the counter and adds wire-input
validation in several adjacent places.
Workaround for older releases: "refuse options = compress" in
rsyncd.conf.
Reported by Omar Elsayed.

CVE-2026-43619 -- CVSS v3.1 6.3 (MEDIUM)
Symlink races on path-based system calls in "use chroot = no"
daemon mode, generalising CVE-2026-29518.  Earlier symlink-race
fixes covered the receiver's open() call but missed the same race
class on every other path-based syscall: chmod, lchown, utimes,
rename, unlink, mkdir, symlink, mknod, link, rmdir and lstat.  The
fix routes each through a parent dirfd opened under kernel-enforced
RESOLVE_BENEATH-equivalent confinement (openat2 on Linux 5.6+,
O_RESOLVE_BENEATH on FreeBSD 13+ and macOS 15+, per-component
O_NOFOLLOW walk elsewhere).  Default "use chroot = yes" is not
exposed.
Reported by Andrew Tridgell as a follow-on audit of CVE-2026-29518.

CVE-2026-43620 -- CVSS v3.1 6.5 (MEDIUM)
Out-of-bounds read in the receiver's recv_files() enabling remote
denial-of-service of any client pulling from a malicious server
(incomplete fix of commit 797e17f).  The earlier parent_ndx<0
guard added to send_files() was not applied to the visually
identical block in recv_files().  A malicious server can drive
any connecting client into a deterministic SIGSEGV by setting
CF_INC_RECURSE in the compatibility flags and sending a crafted
file list and transfer record.  inc_recurse is the protocol-30+
default, so no special options are required on the victim.
Workaround for older releases: "--no-inc-recursive" on the client.
Reported by Pratham Gupta.

CVE-2026-45232 -- CVSS v3.1 3.1 (LOW)
Off-by-one out-of-bounds stack write in the rsync client's HTTP
CONNECT proxy handler (establish_proxy_connection() in socket.c).
After issuing the CONNECT request, rsync read the proxy's first
response line one byte at a time into a 1024-byte stack buffer with
the bound "cp < &buffer[sizeof buffer - 1]".  If the proxy (or a
MITM in front of it) returned 1023+ bytes on that first line
without a newline terminator, cp exited the loop pointing at a
buffer slot the loop never wrote, leaving *cp holding stale stack
data from the earlier snprintf() of the outgoing CONNECT request.
The post-loop logic then wrote a single \0 one byte past the end
of the buffer on the stack.  Reach is client-side only, and only
when RSYNC_PROXY is set so rsync tunnels an rsync:// connection
through an HTTP CONNECT proxy.  The written byte is always \0 and
the offset is fixed by the buffer size, not attacker-chosen, so
this is not an arbitrary-write primitive: practical impact is
corruption of one adjacent stack byte and a possible later crash
or misbehaviour.  The fix detects the "buffer filled without
finding \n" case by position and refuses the response with
"proxy response line too long".
Reported by Aisle Research via Michal Ruprich (rsync-3.4.1-2.el10
QE).

Defence-in-depth
================

In addition to the six CVE fixes, 3.4.3 adds defence-in-depth
hardening on several adjacent paths: bounded wire-supplied counts
and lengths in flist/io/acls/xattrs, a guard against length
underflow in cumulative snprintf() callers, a parent block-index
bounds check on the receiver, a NULL check in read_delay_line(),
a lower ceiling on MAX_WIRE_DEL_STAT to avoid signed-int overflow
in the read_del_stats() accumulator, rejection of hyphen-prefixed
remote-shell hostnames (defence-in-depth against argv-injection
in tooling that forwards untrusted input into the hostspec
position; reported by Aisle Research via Michal Ruprich), and a
NULL-check on localtime_r() in timestring() to keep a malicious
server from crashing the client by advertising a file with an
out-of-range modtime.

Many thanks to the external researchers who reported these issues.

- --
Andrew Tridgell
The Rsync Project
rsync.project@gmail.com
https://rsync.samba.org/
-----BEGIN PGP SIGNATURE-----
Version: FlowCrypt Email Encryption 8.5.13
Comment: Seamlessly send and receive encrypted email

wsG5BAEBCgBtBYJqDX2JCRAbskmXqFNfb0UUAAAAAAAcACBzYWx0QG5vdGF0
aW9ucy5vcGVucGdwanMub3JnNbH8uc+4dCg8xp+j5Wp0q4n/PwTSSCanj3Ji
0g76fB4WIQSf7xEtzhmg3H6ILLgbskmXqFNfbwAAZ4AP/iGAP8Z4MH/qeyJr
5wgJDyZGnkaJGMtzQM/FEvfcaHkm/M5yd6r7EqQkzugHydi4vSwdE9YcTi1c
yhAc6hIdCAsYjY6Ij7TPzA4TXspaT3Ia0G5DpFZVHmiCUWSCAwCfm6cH129D
5T5A+5n30sPU/0DzbFrfewIRuVg8aTqs++Uv38KlZUX6YLkAsRCvhh/gDypQ
ErC0Zng4J9pg1OEwEjMn6xqbKYJZ/2FI2GvBQBn9i+LjeEX5ahA9uTOCOThh
79JdKMT1VeLfZ4SjXpgRfViAkuSIDZqB7wMNGlJNel71rGWLjH2g5KFYkkzY
n4pHKYk0352wve0trHiEgIvucfddpov4ff/GeDTZseqWaYqKlQZ+tJl1AyKt
aa+LmrXNzA4Hhv8//rE71c7t5QKdBmDi77xhEFEgh4Nq1NKVfZI+EqqhIEEx
i262leHm9JClrSMcJ3A2LXtJu2pYNOKh9sOvxHxHyNN9ZaDStsb004l3n5Rr
lsOLQL6gumy7FtKHynZuif+Fgw6VjDnuyAhAOSs1J20nccyVtnBikiKsV+b+
piM7tEEQKzPXcoZWy6gBoHYEU1nr83DQvI4dsYUKWClgKqdXkPBo1qLhCzza
Fo5BtQWvg+GeH+/rdgMzo+BLNCK0Xyt54M1LQsE23uV4QWOEchrN+ygNDMXh
mhAqfOg9
=Z7LE
-----END PGP SIGNATURE-----

--000000000000f77c0b06523c587e
Content-Type: application/pgp-keys; name="0x1BB24997A8535F6F.asc"
Content-Disposition: attachment; filename="0x1BB24997A8535F6F.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_qkTuHwcxKxRFklWCUnRjBycHUPPnFz@flowcrypt>
X-Attachment-Id: f_qkTuHwcxKxRFklWCUnRjBycHUPPnFz@flowcrypt

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tDQpWZXJzaW9uOiBGbG93Q3J5cHQg
RW1haWwgRW5jcnlwdGlvbiA4LjUuMTMNCkNvbW1lbnQ6IFNlYW1sZXNzbHkgc2VuZCBhbmQgcmVj
ZWl2ZSBlbmNyeXB0ZWQgZW1haWwNCg0KeHNGTkJGbkZySW9CRUFDOHBoMmtHNUVCV1ZjampOUHNu
NW5ZU2t0UGprcWRKSlR1cFlmMW1yUVhxbWJjDQpXMkkwNllZRWRRNDhrcXY1RVhKSSs5aG04a0lP
aStWakQrSkw0T3BsVTFRWTRxemNsVFR6eEVaY2xKM1ENCmwvMmhqZnpYZWRuY21ZRmU3aXVrbEsz
eTljeWs1T2J6ZnlaZGljN0ZTL011OEcrZHAzdUxWeDgzWkNiVg0KRi9DbWRXalZTUzlpSUJCSTVO
L25mdkdzekFXZjhsckdBdndPanAxNk1IenJ1VzBESHd0TzJEZEZvU2xnDQpTZUxTQ1FKTE9LOEVR
VXBzcENvZkVsUWYxWWhUUXVndFI0aXkzRHlabGhSeXhtVUZQcENISTgzaEFYS0sNCkZiaHZzbThJ
Z1hVR0YyQVpZK1NMdnkxbWhlRStkTGs4Q016cmdIQjFzdTlhRFhDT0ovWnQ1M0dxbHVSYQ0KWVhy
b2kvdmJTMCtrb3FET3VrbjJVUGxhTUY1WFAyQVNKUVU2bVBtMW1ZMkYwckFlTVhhcHRlRzFleHFv
DQpTMnR0b1FuTVhVa25YVVFoMWQ3QVA0ME9LLzhrVmpYK0RhcE1PRnJqb0ZDY3dCeFdiYVRZN2o0
SnRqYXENCkJIVmRBTFJjenJ2NEF4UGhmWlJuZGhSQSt1cWc1RnBHdHN0YTQ3VTJUL1kzOE01cU5r
cEphSHNBT1NSbw0KclcvZWZnSTZTMGY2RS9CYUpoNkF5WHFSdkpOaHZXcEVmcFRmRmIvNHpsRno3
WjRXSXJtRkZIV2JHbTJODQpSOHJKT0NzMDJ6SDZuWDFTN1hDVFhJcEs2WXVKd2FtMzNXT3ZSMmky
VGdEZi94bHNpc2xUVlBtV2NxRU0NCnhMSDUvWURxVFFYelJ0anN1R2RqQ3ZsQXFOOXRPN2luZlho
bTdRQVJBUUFCelNWQmJtUnlaWGNnVkhKcA0KWkdkbGJHd2dQR0Z1WkhKbGQwQjBjbWxrWjJWc2JD
NXVaWFErd3NHT0JCTUJDZ0E0QWhzREFoNEJBaGVBDQpGaUVFbis4UkxjNFpvTngraUN5NEc3Skps
NmhUWDI4RkFtbjc1aVlGQ3drSUJ3SUdGUW9KQ0FzQ0JCWUMNCkF3RUFDZ2tRRzdKSmw2aFRYMi92
U0JBQW5KaE54akVseGpRbDI5ZkNoaTUyMS9QWGJpY2M1Z3EwZkQvMg0KbzBlcEVrOTJpek1aNjBV
d0ZXYnNZNkFza1hqeHZmMnhuSzI2VnI5dTAwQ0ZQdFBIWnd0amdhOTNNeWFPDQpMZmFWeWZ1b1cv
YllrYnJqSjlvK1RKalJIdnIyeG9oU1BiODE2UVMxVUMrN1V6WnlLMkU5QkFkbVVGbnUNCi9ER1c1
OEprcXQ3Z0g5Vm5aNWR6VnZ2YzdkcGVWR2tjNkszaXVpVElxcy9WOFhpSjAzUzFkVUEzSzNXbw0K
dHlFZkFkemJtK0p0L0lnRmthaWE4a1BQZXpiNkp6Q0tCaGFNODdVWmZGTjVRZU9ITTE3UVN6L2Mv
a0JYDQptSmhMSFd0bi9WbDVMZ0VtZTltRXZlNEI2NlJVNW5hTUQvdWxVbHJkVFVnRFlJQ0NkQ1A2
TDR1V1drZUENCk1vem9qVDZvRzRGRnMwYUZoQlNpbHlYcHNSbW1tUUM5R0xDZXVQam5nc3ZqN0Fm
NGh0MGVlK2hpMHVPTw0KdFB3YjhKUWlTeW9CMks1b0VIYkFhVEpMVWw2TGJOQitBQmZTcnNOdjZW
ckpTOFdjV2k5aVFBTlhMZFhiDQpid0tsZ0pkS0Vra0pRbU9ha2ppdWhoV3hjd3J5RWxmR3FnZXAv
S2V1aGtLcG8wTEJTZUQ4TmlwT3lIVWENCmNzeDRnUXVzajBPeERjRFhhZC96cTZNSzJVZHdIMzhh
KzB6WjRic2JFLyszbGhLWnQ2a3QySGJFeDMxaw0KSnFWc2xldVFWVHVwVTZLWFFCS1RQTDdZcUQ3
WExIamVLRlEzbE5YWU9kWFZmL3pWUHJ2cWkwb2pHWEE2DQpkSCs1NHlzWEd4M2ZIUlE2dWNjNTM2
TUQwdHlab0RlNVFPVForYjBBWUNMMlkrYkN3WGdFRXdFQ0FDSUYNCkFsbkZySW9DR3dNR0N3a0lC
d01DQmhVSUFna0tDd1FXQWdNQkFoNEJBaGVBQUFvSkVCdXlTWmVvVTE5dg0KNytnUC9SeWpOMzVQ
R3d5aEdBcFpOSG84cEJmcTcyMFJJMzlMTVo2UlhXbzJxWUlNR1FCVm5RbU1Ndi9oDQpsT2FUdkVp
Wi9MQjU4OU85Q3V1ZUdpV3IzV1ZrdzJONytjbng1YlNTMVJWNk9QRUJWOVpQYmNBRGpVcmwNCkNl
NjNnMFNTdmZFRC8vUldwd1FCOXNyeDVoK0F2c2hydEpJOGpGRi90YkV2SSs4dHdKbEJTSmJKczhL
Vw0KL3Q4dkIrOXlJTFNuNHRrTXkyeFdtMENVOElJWkR0dkFZSkxKRUNKQ0VxWm9wLzhyMisrajli
OEY2MkFtDQpyeExlU0lnSWNNTCtKT0g2VVhRbW51L3RRdVZaZjIvdVlNbW4raHpDdHZmYXdmTmJ6
RTVFUmlYTWN6SlMNCk0xYWRocjkxYjRLRmo0dmZpWGE5SnBITlNwQUFmZVNPOWVGeWx6VHNLMzVZ
K0xjVk8zeEllSzQwRk1JQg0KY294MHBGRm93ZjNza2xrME5qWUpKMWR2dVBNSDZkQVBYNXZmU1pR
SDd1RlFueElBN2ZZeVJwNlkyTndKDQpET3RKaHM4NDcxbmtZc3cvUHc2OU9wdHVuN2ZHME5YdXBL
U3JFWmFacTQ0QW9ZOFF2eW5NRXhaR29FWUMNCjJvVm5GRXlhNHBtcUJKUnljN1N5OVk3ZWFhY3N0
VGdWZzVLaGZFc1JQcFk5MzlMd21INlhQZjVZZ2lWTQ0KancyZHVHdHRLMDlOQXI3THY1MEN6blRK
Yk9sNHhZVnJhYzFtckYrVkIrZjZNNkxrZnZhZGpPUTIvdmRIDQpiTGZvOFBxbG9VSk11MjBrck9Y
RU5GcUJ0WHlBazhFdHdHY2dwM3MxbkhpaGpiUnc4U25wRVBBWnNJd2wNCnZUc3lOeEkyNlZEc1Np
Tm9ZM0ExUFZkVFEzN2Z6U1JCYm1SeVpYY2dWSEpwWkdkbGJHd2dQSFJ5YVdSbg0KWlRZd1FHZHRZ
V2xzTG1OdmJUN0N3WTRFRXdFS0FEZ1dJUVNmN3hFdHpobWczSDZJTExnYnNrbVhxRk5mDQpid1VD
YWZ2RUN3SWJBd1VMQ1FnSEFnWVZDZ2tJQ3dJRUZnSURBUUllQVFJWGdBQUtDUkFic2ttWHFGTmYN
CmI2NG9ELzlZLzJmT3VKU3dlbExodEhNSUh0U2txaEdIMStvc015NE9HUk5McmZhK3MyVXhucXM4
RjMyQw0KbnVMYmk0aDBBNEw5L3RXRWpHYkxDQ2JJTUJzTkp6Uml6NGp0bU9Id1NsNDBRRCt4V0Na
QWI1bmJPaWFwDQpVcWVGZDBsMER1RVhrS2FwVzAwV2Rma1F4MlNnekwzOEljT0oxZzdkeWt6eFY1
NmF3SFhRb3hwUThzdXINCncwZm1Bd25hYmt6WmJyNjJLRklCZzdOamtEL0MrTnA2a0tRUHM1a2dn
VkFLL3NZR3dqUDJGQ3BsYnhIQg0KbmU4UHh3ZDhKY3RzV1ZLZm80NWFDUzd4TUExWGdGeTlsL1BJ
ODc5aDdCNXRpbkhFYWo1S0dyZUFHeURyDQpHYVJabHNqY0NYblhXUGFIWmswTWNxVWZyL2s2cDN2
NG1nVFlJWUh1RExrU05LWWx4Mnd6Sld2WjJFSG8NCmlNUVNsTTNIR3RBYlRTekxHejY5SjR6V2E3
aFZLK2pmRUdvQklFektXRlp1UmdHUXVlS0M2ZDVoOHIzUw0KcXNDWHhEeWF5YjZQd1lSTVQ0WkRk
dVhGbG1teHhCQm1MUFpYWnJCbnJSWk5lKzlyWjRPcU4zMFhOb3MxDQpFc1VtaElzVEJTUStjRHBB
UUkyMXFFVzVoSXI5UmVIUml4MUZlZU92SHM5eWFScEs3QXNheE9va2ZEb2MNClhsS0VPT0R3UEti
eEIxOUpLY2JkMUI1anNQeFFseEk4MnBWRGNKWERPRHVwZHk0MUJ6OUtQNDUySm9EYg0KM2E4UHNG
d0p3d1JCOXhTa2s4V0JiRzNGU0gvR01zK0pHcDMyTzBMOTQraThnbm91c3J2Y0JaV0ZNLzFlDQp0
ZEh5cEJXYjJ1NXJUUk0wcGNlVllZR2ljZFFJejg3QlRRUlp4YXlLQVJBQW5sTzVSUExJQStRVDY2
T2gNCmk4ODM3RU5UN0RmNHB1S3JzdzVrZXVtR2h4TEdUMythZm5DejJOMm1VYzRGMDhPZnN4K2E3
TXVnLzFzTQ0KWXg5dXVVVVdiTXBuMk1Jc0V2Zm9IRThUL3FzaExQSkZCMEo5THVZbFJpdEtYekR1
SlZEbXloQTFHdjBCDQprbUxiTEZiOUo4TGtmMzVNRWdxUlNUWWlmbjkyNEtRbVB1RzFoeFk5THlE
VWRMSlVsRmFzbHZOSEY0UkENCi9iSUFRcE1lbjF3UGYvLzBESEVaTTBEUC9mVGRNanVZZzY4K2xu
U2YrR0w0Q0o0SHM2SERsWjNiUEVTag0KUnFLaW9LcE1ZbkxEV2JnTXM2WlUweWw2cFlTemJGY0ta
SExxNW1BbmF1MEk0M01xUUovQjA3MEtHUHZwDQorYkdPNGZzUWt4T1hZSEVCOXpUblhza2I4cGhi
UEgvaEhBbFN5RW1YUXJkTyt4YUxtZUovVjJ0bTRVMlINCkdEd3hIYVVETnptTGFKYnlENHpoZ2Rq
alduQVozY0Z2LzNsSVFmbURvQ0k5blRza1RUOEphT3NXb0xZRw0KMXdtYU5aTEJGTzdXQ1NpS2d4
RTdPUTFoU2VmR3BpRVVjZkpVSkl1andBWXFKMzluWm1zTGRndDlTR1AvDQp4ZlRuSEZySDV3cEJS
b1BrTjJnRkZtS0w5U0pwang5aFBVeklFNnZkMHZwN1RBU2xNd3htUTZQOENUbWsNCi9iUjhsUmF0
dlFmeVlVWXVXWVcrcTRlenNVaW9RdEpvaXRINUN2aE14RGI1dTV3Zm51Qi9kZWtzbTliNg0KMHUw
MUtjdWx5TCt1SzRBQnpjeFc2Rm9xSmEzbUtUb2F5ZWJ0bzZibUsxYzNyOUxyQjM4NFg5cUxJdTN6
DQpVUjlFUXk4QUVRRUFBY0xCZGdRWUFRb0FJQUliREJZaEJKL3ZFUzNPR2FEY2ZvZ3N1QnV5U1pl
b1UxOXYNCkJRSnArK1pVQUFvSkVCdXlTWmVvVTE5dkpYZ1AvUkJ4ZlE0emJYTkdYNklJVlI4eXBS
M3VITUd2aCtDQQ0KWjRGYlErczJWNWNZOXNlVXRWeWtZY2czZG9MVHR6amRPdFNuR051UHB2ZUI1
cWtzUjZKRjR5akpHdEcvDQoxQWw5a3hhUEFJbm5DL2xIQlBHVWhtVUlZQm55alQ0aGhLS0hSdHBM
QmFsNXhSelB1dDNoTnBoNC9rNjcNCk5pZW1udTYrSlRKa25ERWxVazF5QXhsZWpsNWZkR2FpMGV2
bkphUTVFTVZJRER2SzBsdDlGQUVrYlJXWg0KWlFjcERLUjNkTmg4YmNNeXlnbGwrMStpRHh5Si9t
MlRKcVEybjV5VmFmaEVna1ViaVcwK0sxR0tIZUtEDQpmbnhRYmVMVDZkajMwUVhiSG5ER044RGV3
aTg2ZjZISVlvWTNNSDV1aVBxSSs0cm5IWVMrSDdra2xOQk4NCk1UUXFnY1NqNWM4cXJIdEhhc21s
SkVUdjZUa3hKUFA2RHBoNWpNOGxFKzc4QWp2RW9uSTZZdkF0VUtaTA0KSFpUbUxWaVBkTHJQbFVU
YzMyMzNNQmFGdVRzZlpzUUpBQkRJOTNDYWFudHFBdlZBTWU5MjhxcmtGbTZiDQpJWXVHbUFhc3dI
eXdQbjJCcmdHTzQ4TmNIbjEvemlndW1nbEdabEI4R2d6TVNQZkdCcG84YjQ3RnJvcWINCkdQMlhR
Rm5mWjYzUFJPTjFDaS9ic0lrS3ZVc1dXclNKRXR5VDUraHBRYndtWmtCMmtKYXFNeWV2NHlXSA0K
bXhDK2ZXVWFzL01TYXJzOUMwVnFNenFqSmxUd3VFNHg3VWpka2FpYTQ2YjY4SnhTYmlndzRiaisv
TWFwDQp3YXc0dEUxWXdoVEtPV0xjd0dpczRlbEdpaVBHL2JhR1IyM3FNeEYwUlUrSzdYWkNuaVpV
DQo9Tzc4dg0KLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkgQkxPQ0stLS0tLQ0K

--000000000000f77c0b06523c587e--
