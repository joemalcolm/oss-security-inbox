X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2380" "Wednesday" "27" "April" "2016" "17:58:00" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160427215800.7EB1B72E003@smtpvbsrv1.mitre.org>" "53" "[oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP" "^Cc:" nil nil "4" "2016042721:58:00" "[oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP" (number mark "U       cve-assign@m Apr 27   53/2380  " thread-indent "\"[oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP\"\n") "<20160426052013.GA4299@lorien.valinor.li>" ("<20160426052013.GA4299@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15424 invoked by uid 550); 27 Apr 2016 21:58:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15401 invoked from network); 27 Apr 2016 21:58:12 -0000
In-Reply-To: <20160426052013.GA4299@lorien.valinor.li>
Message-Id: <20160427215800.7EB1B72E003@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed, 27 Apr 2016 17:58:00 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://bugs.debian.org/818489

Can you describe how this crosses a privilege boundary?


>> When you send a SIGHUP to a vtun client process and it cannot connects
>> to the remote server, vtun try to reconnect without sleep between each attempt.
>> In result, the vtun process uses lot of CPU, and write to syslog without limit.

Is there an important way in which this differs from "The vtun client
is not installed. The attacker simply writes their own program to
reconnect without sleeping and make many syslog calls"?

For example: does vtun's resource consumption belong to the root
account in a common scenario, but SIGHUP is accepted from an
unprivileged user? Are different unprivileged users successfully
sending SIGHUP to one another's vtun client processes? Do you mean
that there's a potentially common attack pattern in which a
man-in-the-middle attacker intentionally blocks connections to the
remote server in order to trick the victim into sending a SIGHUP, and
(in some sense) this man-in-the-middle attacker is thereby able to
trigger the excessive resource consumption?

Sometimes there are CVE IDs for "a client application inadvertently
starts launching a network DoS attack" but this is typically only in
cases where someone can send forged packets to the client application
in order to start the attack.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXITVqAAoJEHb/MwWLVhi2NQwP/37KVYfIc7/Z173IQyaV7NEh
i5ZFzn36q56XXT80nuMIYGH/SuXffuhou4YEUXscYf7FBC4/TgQKP6sy1UMcjmQ0
CawCkWIk9PTA98GvddXknMg2KfDwbM3p0UxzxYpzDT/jUflaaB9HOSruCElv++gu
ZlE4CF7WMgg4tmKjk7pK5IyoDkMX9a9TjJAxbT0hISUwjhVMrZNQsXQh84fby2iZ
BNnmFbWb7igvNKkxF+s2RN+8OPKIo4K0NWii+a53HcM3pxisvP7ras20FSMBJv5H
lmwvYC7NFYSMRCByp9G197RpBrOhQSUQMLgKhojHSW8LDfag/OHYH1g/5HGghnzp
dul8/kn8DsmH2oC2GnE8QaNkzhozp9ustIvn4xaPIi676I+nIG16XlRYDNWNVICc
OyxMegvBFRu779jXUDaIWUF4g8T+nrGq5EuIQI03LxczCo0Vr4WAd+uzSVZ7icWq
M7Qgk99dH7bfXVDQCfP1sz60wohuT03oUjjQwcorABLJoGB9BnAzUiWt6e/g0BG8
6fv648XOxzZO7dC516B4nkq5JesIjbmlQzcbA+vzVwB/4iRqMs5QiNRNjrvHghuc
JooYBuSoiTDBJ6C77/O/M9AdTA2fGa5/COAHiEsV/CuHJS2T9eRQTyVfdKDlMRdE
IN85CZw1R11EdMmLzsj+
=huSO
-----END PGP SIGNATURE-----
