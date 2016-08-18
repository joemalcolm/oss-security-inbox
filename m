X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1768" "Thursday" "18" "August" "2016" "17:13:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818211312.5589DABCA54@smtpvmsrv1.mitre.org>" "40" "[oss-security] Re: CVE request - slock, all versions NULL pointer dereference" nil nil nil "8" "2016081821:13:12" "[oss-security] Re: CVE request - slock, all versions NULL pointer dereference" (number mark "U       cve-assign@m Aug 18   40/1768  " thread-indent "\"[oss-security] Re: CVE request - slock, all versions NULL pointer dereference\"\n") "<20160818184456.GA16393@sinister.codevat.com>" ("<20160818184456.GA16393@sinister.codevat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13484 invoked by uid 550); 18 Aug 2016 21:13:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13466 invoked from network); 18 Aug 2016 21:13:24 -0000
From: cve-assign@mitre.org
To: eric.pruitt@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160818184456.GA16393@sinister.codevat.com>
Message-Id: <20160818211312.5589DABCA54@smtpvmsrv1.mitre.org>
Date: Thu, 18 Aug 2016 17:13:12 -0400 (EDT)
Subject: [oss-security] Re: CVE request - slock, all versions NULL pointer dereference

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The screen locking application slock (http://tools.suckless.org/slock/)
> calls crypt(3) and uses the return value for strcmp(3) without checking
> to see if the return value of crypt(3) was a NULL pointer. If the hash
> returned by (getspnam()->sp_pwdp) is invalid, crypt(3) will return NULL
> and set errno to EINVAL. This will cause slock to segfault which then
> leaves the machine unprotected. A couple of common scenarios where this
> might happen are:
> 
> - a machine using NSS for authentication; on the machine I discovered
>   this bug, (getspnam()->sp_pwdp) returns "*".
> - the user's account has been disabled for one reason or another; maybe
>   account expiry or password expiry.

Use CVE-2016-6866.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtiRVAAoJEHb/MwWLVhi2sacP+gMeIHHCDQ9cy+JpK1eCnSCS
sazQCwgyDrGdrT9a842vGgkenEmHfeIwJHlpsMsmB4SBhRjUkWSMDKwh/VYyIFAI
U3bIi2B3jqG70onrQJnHPYisz/shOdyv5m4GxTCFVn17i0R4iJ9h3yO7coFG2QMT
GxMlm+QkxvUiTz4hEKI6pt7Cpca/5819cqs7fJr368zP1KB54b0dIRNFzFYMOyqk
Q6M9SvJICMz5j5rrxYFijhfTrB8AiuU0XNgwZs/sJhRXy8xdf1n+m5C60eDLG+o4
Qx2KzHhlDScl680OQNi77MCSHq8Ffb5bEWZDsxujqcN3p4JDGMTBKAJ2vWfDajog
7Ugaqz4ddnj2EY8+ZL6jPzxq1HqBbUmwCCCwvoeltF6etclaGB4Hps6p7ffB3zQy
rXsAUC659T/xPURObeHB+krNEadz/lcx1/ucA7+DXmtBmd/oHDYsbwU91M/z+oCQ
6K/CIT2ZTKbUPDP8mdQfpgPsURRXc+oMl8AsUf9OBlnNPn1MGeGfbNOUZz8tJnuT
coI//OylyihxjQaOK36vxTu4WtMtvH+bR6tH39TSTxyyKiOFG4xavWCJpshUwDa0
tx9QK6RbbWLfIm+PaSkiFqpsZ+oy25DI2FmUPe47u8qStCAVm5TSnOi3/YuPfTMr
osR1b1FAQ/zhY7kYhD1n
=HbWC
-----END PGP SIGNATURE-----
