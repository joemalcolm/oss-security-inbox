X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Monday" "13" "April" "2015" "15:00:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150413190005.57AAF72E0BF@smtpvbsrv1.mitre.org>" "61" "[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" nil nil nil "4" "2015041319:00:05" "[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6" (number mark "        cve-assign@m Apr 13   61/2323  " thread-indent "\"[oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6\"\n") "<CAD3CaneMq33seETYz_2OkntNNBgLkas438ULApSOCbGzUxHkNw@mail.gmail.com>" ("<CAD3CaneMq33seETYz_2OkntNNBgLkas438ULApSOCbGzUxHkNw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3443 invoked by uid 550); 13 Apr 2015 19:00:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3422 invoked from network); 13 Apr 2015 19:00:17 -0000
In-Reply-To: <CAD3CaneMq33seETYz_2OkntNNBgLkas438ULApSOCbGzUxHkNw@mail.gmail.com>
Message-Id: <20150413190005.57AAF72E0BF@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 13 Apr 2015 15:00:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request / Advisory: Floating Social Bar (Wordpress plugin) 1.0.1 - 1.1.6
To: mattd@bugfuzz.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>>   1. Maybe the
>>      "-     add_action( 'wp_ajax_nopriv_fsb_save_order', array( $this, 'save_order' ) );"
>>
>>      code change means that wp_ajax_nopriv_fsb_save_order allowed
>>      bypassing intended access control, even if the attacker did not
>>      supply an XSS payload.

> Yes. It wasn't intended for non-administrators to be able to adjust
> the services by executing the action.

>>
>>   2. Maybe the patched code can help to prevent a CSRF attack against
>>      an authenticated action handler.

> Again, yes. Administrators could be forced to execute the action with
> an attacker's parameters via a CSRF attack. Nonces have been added to
> stop this.

Certainly the CSRF will have its own CVE ID, because it is independent
of whether (and why) wp_ajax_nopriv_fsb_save_order existed.

In this specific case, for the direct unauthenticated attacks, we feel
that there can be two CVE IDs for the two different problems with
different types of attacks, i.e., leaving the services in their
original order but including an XSS payload (CVE-2015-3299), and
moving the services to an arbitrary order but omitting an XSS payload.
These conceivably could have been (even though they weren't) fixed
independently:

  add an effective approach against XSS in the input data, but
  ignore the relationship between the new order values and the
  original order values

  versus

  ensure that the order values, when compared numerically, have no
  change from the original values -- but ignore trailing
  non-numeric data

We will send the additional CVE IDs soon unless there is any new
information.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVLBEIAAoJEKllVAevmvms36QH/jvFVxqbjNQMB3Wis1kX2RaI
ArW32jKwavBxrGEQ5O+OJEGf6tYS27lA9YPiNKp+8Jk5NfRmXgqNOsw+YuCNcV7J
arwVDeIOPRDVmvgANdaNjHQ+fl4xTUqBGClqa0T7ZsGTXjEhkaQIJ4CjYBAulp6J
qGKohKSOCJ9UOQmPWFTD0Pr1gOykfdsF9K5w+LkVcZ3EbS8Is6hnBuOAg3EbbtQp
PZX0Z6ZykonoXQ3sTDdoqV6w6k9qvYP0YrQkKrJvmcLcKjohGyAvcjsyjXh4gEtT
mepqdUI6oGe7b6X97e3WE4wlIcz0R8VZdvZIgmQRQHtTDBzK2eNruZUCsFcfTcE=
=DRJz
-----END PGP SIGNATURE-----
