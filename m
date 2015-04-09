X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1643" "Thursday" "9" "April" "2015" "17:50:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150409215021.8AF026C0056@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE Request for ceph-deploy world-readable keyring permissions" nil nil nil "4" "2015040921:50:21" "[oss-security] Re: CVE Request for ceph-deploy world-readable keyring permissions" (number mark "        cve-assign@m Apr  9   40/1643  " thread-indent "\"[oss-security] Re: CVE Request for ceph-deploy world-readable keyring permissions\"\n") "<55269CFA.1090406@suse.de>" ("<55269CFA.1090406@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21742 invoked by uid 550); 9 Apr 2015 21:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21724 invoked from network); 9 Apr 2015 21:50:33 -0000
In-Reply-To: <55269CFA.1090406@suse.de>
Message-Id: <20150409215021.8AF026C0056@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  9 Apr 2015 17:50:21 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for ceph-deploy world-readable keyring permissions
To: astieger@suse.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The 1.5.23 changelog states:
> "Fix an issue where keyring permissions were world readable"

> The problem was that the keyring file would be created with 644 mode. If
> ceph-deploy was run as a dedicated non-root admin user, the keys would
> be readable to all other (non-admin) users of the same group, thus
> leaking authentication credentials.

> https://github.com/ceph/ceph-deploy/pull/272
> https://github.com/ceph/ceph-deploy/commit/eee56770393bf19ed2dd5389226c6190c08dee3f
> https://bugzilla.suse.com/show_bug.cgi?id=920926

We were initially puzzled by "644 mode" in combination with "readable
to ... the same group." Possibly the unstated expectation is that user
home directories have 0750 permissions.

The security issue, in general, is that the file permissions are 644,
and the directory permissions (whatever they might be) do not
necessarily prevent read access to the file. Use CVE-2015-3010 for
this issue.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVJvOZAAoJEKllVAevmvmsuw4H/2r6kpfMcOt/xb6h4mMq0z7t
+4Odeiyj1PGn8pVS6pcrTBu2hu8f8YnQgWXWvpPJR4hpKx83JS2n/Dk6AfKkCs9V
TBz15JS6wqOy5Lke4r2Y2hOLXl/pItf683uh3YZr0s+w+hgjy3xuHpuTJ3FSO0lO
BKQL+smh5usT0Ks/tNCmcCnGrLD71z7GFaSnYXLVhv6UEuFNxQv/OmXCfJxeFm1O
gvXjUbSoYm7RgDGNJp40W4rmGmLu5RW4mxfVA0oZ1OOhX5E1/A0a3nu0shzMI+fU
rSd6yK7LufCkoMyOynHrS/EnljCo/nGZneOfyuWDF5FBAt12FZcWjR0Wi1eQfwc=
=HMxR
-----END PGP SIGNATURE-----
