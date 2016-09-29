X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1690" "Thursday" "29" "September" "2016" "06:36:43" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160929103643.3204E332002@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: kdesu vulnerability: need CVE" "^Cc:" nil nil "9" "2016092910:36:43" "[oss-security] Re: kdesu vulnerability: need CVE" (number mark "        cve-assign@m Sep 29   42/1690  " thread-indent "\"[oss-security] Re: kdesu vulnerability: need CVE\"\n") "<122945095.MCtYvXDq6T@xps>" ("<122945095.MCtYvXDq6T@xps>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1749 invoked by uid 550); 29 Sep 2016 10:36:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1730 invoked from network); 29 Sep 2016 10:36:55 -0000
In-Reply-To: <122945095.MCtYvXDq6T@xps>
Message-Id: <20160929103643.3204E332002@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 29 Sep 2016 06:36:43 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: kdesu vulnerability: need CVE
To: aacid@kde.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The problem is that you could sneak an unicode string terminator in the kdesu invocation
> and the label showing which command will be executed ended there but we did execute the whole thing,
> that is,
> 
>    echo Hi@; whoami > /tmp/filebyroot
> 
> If @ is the unicode string terminator would only tell the user kdesu would execute "echo Hi"
> but would create the /tmp/filebyroot file as root
> 
> The fix is already available at
> https://github.com/KDE/kde-cli-tools/commit/5eda179a099ba68a20dc21dc0da63e85a565a171

>> Make sure people are not trying to sneak invisible characters on the kdesu label
>> kdesu.cpp

Use CVE-2016-7787.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX7O5eAAoJEHb/MwWLVhi2ZJYP/3z7JAGJAtY4YkSyMy97A+q/
B5s3hRzWrvpZesyNf80sCuY0PvTnoMiS80nOWYlYVyERbr/1hVh7YQ+GLzpEs/ud
KPhYqhPVNO/tC9ELW1LkAwaYKI4zJXf7yZFIgsuCZI1tgriRf+ehS40eg3tBnCoF
d03nbntQH5ADVZH+KxnnaKMZFfBRQDcMBP7XTcrfXCN5czju13TEWTYKPtL1s4rm
UlyeDQzJ9n+ou6NpNo9HfY+4QILw6mOHrxGl/SczeFgdCCJBwLvXiMAQXi8lLe0z
TmB7eCT1E8Bm7gpGQJUlcoD1PCBRHq1k6hCiTRLupkmYXHGjwWzJRMKqnnG5Stej
0/W5jLd7NQwm003RLwePVWvDw6TVbdZY6tJIMXqkYXc+Qqxx71TtY6/P4U/97Va3
8O8vovP1Xxbui1Xx9dUTU+F/XiG4kjV21XsN+5gAlWFA22v0gGKEvdY4uze5kNH6
dwxj2xTdJKEHIr8cPQeBOBxd46sIChmQWywO9uMMfwUoDS3xHkyq3WkCoI5YalnO
Dx8l5erpytJA8or3hKld0BIk2MTpJI/0zdyl0JqXuleIBjtlAFRMuyclg4n6S9Ek
VXRNWAslPgl+mPquZnyKxCKHfvpgk7ZT5qbU4iqOAv1CabODk+024XrdhHDzCTOQ
/T8u7gshajO1VsGhTTey
=Zeft
-----END PGP SIGNATURE-----
