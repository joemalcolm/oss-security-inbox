X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1179" "Tuesday" "30" "June" "2015" "12:13:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150630161321.00B338BC074@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: CVE request: Stack overflow in redcarpet's header_anchor" nil nil nil "6" "2015063016:13:21" "[oss-security] Re: CVE request: Stack overflow in redcarpet's header_anchor" (number mark "        cve-assign@m Jun 30   32/1179  " thread-indent "\"[oss-security] Re: CVE request: Stack overflow in redcarpet's header_anchor\"\n") "<1E5ABE12-1C64-492D-AEA4-FAC8EE1B2151@me.com>" ("<1E5ABE12-1C64-492D-AEA4-FAC8EE1B2151@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5861 invoked by uid 550); 30 Jun 2015 16:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5839 invoked from network); 30 Jun 2015 16:13:33 -0000
In-Reply-To: <1E5ABE12-1C64-492D-AEA4-FAC8EE1B2151@me.com>
Message-Id: <20150630161321.00B338BC074@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 30 Jun 2015 12:13:21 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Stack overflow in redcarpet's header_anchor
To: gcanalesb@me.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/vmg/redcarpet/commit/2cee777c1e5babe8a1e2683d31ea75cc4afe55fb
> 
> https://github.com/vmg/redcarpet/blob/master/CHANGELOG.md

>> Version 3.3.2
>> Fix a potential security issue in the HTML renderer (Thanks to Giancarlo Canales for the heads up)

> header_anchor uses variable length arrays (VLA) without any range checking.
> 
> This is conducive to a stack overflow, followed by the potential for arbitrary code execution.

Use CVE-2015-5147.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVkr+UAAoJEKllVAevmvmsKc4H/jUqANIqSni+uQgMUWROh0+5
csi/VXwpj+lGpXEBbzQkKlRgjRXJtVB47H2+cghcNL24Zgs/oW1ffNAqMxjqziOB
Rp9w76dhEecf+54lncJFvygM+ulvcbYw/cMIPHEzJ/mV+NS2/VVJrWcJqO8PcVug
isTP/ue2HToUf2JUQdbLuccjQBkfRRw7Hb2KJ2VquYM0edrQhQsGsilb4hYGpVRF
vxY8eVdrS7bObImNMK58EBGJJBBU9xm+fC9utbAnTYOCYtC6JxQr6XnJsm4s7rMH
VdQBpoz0dobQ+KewE18dTLZ6dXc88MQOZlaBJRXh5YNzfaqA/9d4u5Vtkk7o2S4=
=/17B
-----END PGP SIGNATURE-----
