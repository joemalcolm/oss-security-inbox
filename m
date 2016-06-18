X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1437" "Saturday" "18" "June" "2016" "15:52:24" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160618195224.BFA2A33201D@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: Simple Machines Forums - PHP Object Injection" "^Cc:" nil nil "6" "2016061819:52:24" "[oss-security] Re: Simple Machines Forums - PHP Object Injection" (number mark "U       cve-assign@m Jun 18   37/1437  " thread-indent "\"[oss-security] Re: Simple Machines Forums - PHP Object Injection\"\n") "<CAKws9z0qx_7spQTw9Z3vrV1hRa8so=G-1T7eegnLuMzTp0H59Q@mail.gmail.com>" ("<CAKws9z0qx_7spQTw9Z3vrV1hRa8so=G-1T7eegnLuMzTp0H59Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32528 invoked by uid 550); 18 Jun 2016 19:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32473 invoked from network); 18 Jun 2016 19:52:37 -0000
In-Reply-To: <CAKws9z0qx_7spQTw9Z3vrV1hRa8so=G-1T7eegnLuMzTp0H59Q@mail.gmail.com>
Message-Id: <20160618195224.BFA2A33201D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 18 Jun 2016 15:52:24 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Simple Machines Forums - PHP Object Injection
To: scott@paragonie.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The first one appears to have been fixed in the release-2.1 branch, but the
> other one still exists.

> https://github.com/SimpleMachines/SMF2.1/blob/404fd5347951652624dfb72304ee38fcab98378f/Sources/Packages.php#L863-L873

Use CVE-2016-5726.


> https://github.com/SimpleMachines/SMF2.1/blob/19ee85ff8761b792ea3e9ed630a947f45f93ee68/Sources/LogInOut.php#L125-L129

Use CVE-2016-5727.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXZaYTAAoJEHb/MwWLVhi2/+YP+wc2CtBwbz9Qs67YW8t1UXuS
wxH2Dw7r3VLuGmD5UJAZBYt4+7kGd8FdMijD4ZNT3EdfraEkD45u8sXmbx0P0y7E
qX178dTVoi3h7sJHlTOa5agRmGqS1uLbzWWxXSolAU8X6/FFO/7/cTOJBCVW0z02
R1GNIVuf8mJA0mgGZ3DDJy0RV/dnco3VO4LoRKy2uQHnz3XHWaKnZkrmkBmt+eGK
ZevSmz4OVVf6B/w8rx4BcAajdlGWS89epGZSeAPnZeTPeixQE7E6uOhRaGPif0h4
0JP4GsDbKNUjod7DnVEKkDV0bHxc2Z+SEQyBihahtvdSxwe2W0N5ZdMejHbw2f8f
kN+0EYIGbOdPJYAP0c35PKLyfhlDrUwF/iPNx2k+tTls1T8qX//gb8PuZoF0k2Ro
zO9MYrZTlM819fN1Y4oqpUsB1dhDgcPstQx8ptqI6KDVJP61KUgRv/ADga9cLulo
nYPDfcqd+swJUZxRnUgeJuwmsYDF8BZTUQJmR48wTiBCQEqrQN4PSyD11RZLcJUv
lUrKhv6zINxknlNMPyb72NMIcSfW1iMwc0SiuYNElY+pSliBrPyZ0jC8+Bhpt0QL
eFvKwmGRTnoWp6Ly7iK2nI8uwp5zS0bCKrjw7ZpVmh97vslA2iA+7yxohqNV7po5
mGc8to+TR4jrcCoFZy2E
=SRzi
-----END PGP SIGNATURE-----
