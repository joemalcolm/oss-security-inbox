X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1970" "Thursday" "21" "May" "2015" "11:31:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150521153131.E2ACF132E85C@smtpvbsrv1.mitre.org>" "52" "[oss-security] Re: CVE request for vhost/scsi possible memory corruption." nil nil nil "5" "2015052115:31:31" "[oss-security] Re: CVE request for vhost/scsi possible memory corruption." (number mark "        cve-assign@m May 21   52/1970  " thread-indent "\"[oss-security] Re: CVE request for vhost/scsi possible memory corruption.\"\n") "<866799444.15964228.1431530205711.JavaMail.zimbra@redhat.com>" ("<866799444.15964228.1431530205711.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10059 invoked by uid 550); 21 May 2015 15:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10041 invoked from network); 21 May 2015 15:31:43 -0000
In-Reply-To: <866799444.15964228.1431530205711.JavaMail.zimbra@redhat.com>
Message-Id: <20150521153131.E2ACF132E85C@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 21 May 2015 11:31:31 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request for vhost/scsi possible memory corruption.
To: wmealing@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=59c816c1f24df0204e01851431d3bab3eb76719c
> 
> -- vhost/scsi: potential memory corruption
> This code in vhost_scsi_make_tpg() is confusing because we limit "tpgt"
> to UINT_MAX but the data type of "tpg->tport_tpgt" and that is a u16.
> 
> I looked at the context and it turns out that in
> vhost_scsi_set_endpoint(), "tpg->tport_tpgt" is used as an offset into
> the vs_tpg[] array which has VHOST_SCSI_MAX_TARGET (256) elements so
> anything higher than 255 then it is invalid.  I have made that the limit
> now.
> 
> In vhost_scsi_send_evt() we mask away values higher than 255, but now
> that the limit has changed, we don't need the mask.
> --
> The first check that slips past is here:
> 
> -- drivers/vhost/scsi.c - vhost_scsi_make_tpg()
> 
>  if (vs->vs_tpg && vs->vs_tpg[tpg->tport_tpgt])
> 
> My theory is that the possible memory corruption happens later:
> 
> -- drivers/vhost/scsi.c - vhost_scsi_make_tpg()
> 
>   // sets this null pointer, to "tpg" value.
>   vs_tpg[tpg->tport_tpgt] = tpg;
> 
> When vs_tpg[tpg->tport_tpgt] = 0

Nobody else has offered an alternative theory or shown that it is
unexploitable, so probably a CVE ID is reasonable. Use CVE-2015-4036.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVXfnpAAoJEKllVAevmvmsJSkH+wQyE2BCazl50a+4lscyN/S/
mLdpNddqLuaCPEWOwFcp8UX2M/d5Uyj4zl42bsfFOy0HA6zBmUAzjeg9Ea3b8gQp
ix4guXREeWkmaw+IT5uyG8dCSujMSTzvdDKvXoCh2jcyvdSXXb4xcHIlsmppgn8M
8hVRXoAuEt8yrbtjzXA99pB6gYJeKTOsZFPx0Fwy2aeCO/tCVUoZF+KlUGxokvWL
wRhl9JBdKxmqzMgZcuDUdgZ9s9TGpFIChVOKvDHdw52pL8eXMEqzD1JV2NbQGG3C
Xa/LmM2wCE/eqnYT7QSlzEjh2e1titJkNUc+wVNj4Refj/k1HXCCQdVZNOWnbh8=
=voYF
-----END PGP SIGNATURE-----
