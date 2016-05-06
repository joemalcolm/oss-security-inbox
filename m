X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1587" "Thursday" "5" "May" "2016" "22:40:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160506024039.D27F78BC1B1@smtpvmsrv1.mitre.org>" "43" "[oss-security] Re: CVE request - samsumg android phone TvoutService_C binder service DoS" nil nil nil "5" "2016050602:40:39" "[oss-security] Re: CVE request - samsumg android phone TvoutService_C binder service DoS" (number mark "U       cve-assign@m May  5   43/1587  " thread-indent "\"[oss-security] Re: CVE request - samsumg android phone TvoutService_C binder service DoS\"\n") "<1afe70a0.13380.154810ba449.Coremail.pengdawei521@163.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9725 invoked by uid 550); 6 May 2016 02:40:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9703 invoked from network); 6 May 2016 02:40:51 -0000
From: cve-assign@mitre.org
To: pengdawei521@163.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1afe70a0.13380.154810ba449.Coremail.pengdawei521@163.com>
Message-Id: <20160506024039.D27F78BC1B1@smtpvmsrv1.mitre.org>
Date: Thu,  5 May 2016 22:40:39 -0400 (EDT)
Subject: [oss-security] Re: CVE request - samsumg android phone TvoutService_C binder service DoS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When a app send a evil data to com. TvoutService_C service by service
> command (Android system command) , can cause to TvoutService_C service
> crash.

> adb shell;

> service call TvoutService_C 22 i32 1090056453 i32 1428574234 i32
> 836766018 i32 779588542

> Fix:
> http://security.samsungmobile.com/smrupdate.html#SMR-FEB-2016
> SVE-2016-5134: TvoutService_C service DoS

>> A vulnerability without appropriate exception handling allows
>> attackers to make a system crash easily through such as a DoS attack.

Use CVE-2016-4547.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLAAhAAoJEHb/MwWLVhi2qBsQAKkQv8L6AdrgxVNJGTdN5nLI
kiR1mtMcKmUb4IBnjH3D2O7TlDTzMf57bnyfIIVB/qeae9nZRZEwqTgBrXBq4ouu
/o77fWmcuxa4F5uF8O9cG7zFoTljoLF4kUD0WhSA5lFn0BUqig2vWia4trKIdflT
4C3QhVVwvLeR4kZiwiMwn8sA44NnXZMhCfOHdqxNRaXZNdVDiAPn9uxQhOhME6fy
z4uwSJoc+CckCPY3HviYy65FJ4lRESU2sK9vfuXm41x1sBtXJSg/IUkwO6x7aJBs
t0+9rE0xOXacscEP/WMhwuquBUGvK6HglmXMogW7kL6WLAc2BetrckPbWqu71K2J
O4N6iqJ3tv+fgVC1ATW2KjmjotABavZ/rR5I9uCN5J7fLTi6u9G5Dy5oJwZTY7wq
fIHwk9Ku8l89jt8h5yr+X+ab6UcBOuzIU8Qh3m8ssY66tbge+ZAzcVDhHBrjW7XA
EstiyR5GKkxGS0g/oyd7GbH+2FBlUTMETu2KQh2xQNt0v8tjT4exLeMgqtgk1plz
q4ToF7uB32prXLFFkrX5ooS9RkEL4oSuKqr9n7c9rdofr2jy5Ob8PO6VJAuZ2MOZ
LfgvDQWOHZlmBTFwqCSQnaou5FT+yTLXWIHOuR0n0r0ZDTNsGmsPd2dv85x1/gHJ
V1JOoJChFUcX4gdluv83
=tNLr
-----END PGP SIGNATURE-----
