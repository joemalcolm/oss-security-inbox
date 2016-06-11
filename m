X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1235" "Saturday" "11" "June" "2016" "09:50:17" "+0200" "Tobias Stoeckmann" "tobias@stoeckmann.org" "<20160611075017.GA268@pepper.home.stoeckmann.org>" "37" "[oss-security] CVE Request for Denial of Service in pacman 5.0.1" nil nil nil "6" "2016061107:50:17" "[oss-security] CVE Request for Denial of Service in pacman 5.0.1" (number mark "U       tobias@stoec Jun 11   37/1235  " thread-indent "\"[oss-security] CVE Request for Denial of Service in pacman 5.0.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23873 invoked by uid 550); 11 Jun 2016 07:50:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23855 invoked from network); 11 Jun 2016 07:50:29 -0000
Date: Sat, 11 Jun 2016 09:50:17 +0200
From: Tobias Stoeckmann <tobias@stoeckmann.org>
To: oss-security@lists.openwall.com
Message-ID: <20160611075017.GA268@pepper.home.stoeckmann.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Provags-ID: V03:K0:9DRUF6sZbFnZvEMRFzvzbV4WJJQuU7iozxKzP5JpSnVq2ChUQCO
 +XZh/1H6tLCIJd9Hbw6PI6HVMsLB8M7zBRWlBeV5XyF/Kkx5DjsdlRKAgDJSQlDnBeMItXP
 4Gl+j/Mo4TCHHvbpi1edvstXYpvfNd6MdSA0p25d7Od87KJwitqvxSq91m24Wv5LQGv5FPn
 FyIVWloUZNIFa+lHOW+JQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:2uWYwmc9Nks=:L3ftxGY+unY5r7dSbZx/3A
 WrpO23Dhrmn6ZXL9YAix6H4JH5RDFU0G7F+oqYCaRr2ptlrT9E8bxOB1qQYIkUSI9myS/kquD
 bSMmQKlfzzq3fsDGWWipJuctuOBepGBtXb9hy9gthKWtK/xzfcrQzffwqDm0bpQBMkbUeWYbh
 7VlLv9KJe+dNGVowjrhMgVco9k8AdYKkgXjnK6k2zQhvVUlTSk2iTkA6UwKKQTqXTyWjVs3sL
 yR38Gxi1JAt+qIScCbKTx4rUFTzgbE8q9Pd3bMNylwxnyGQSz/fEH2QWUHEUo5/1VbSREc6E2
 ZVNyuN2G5qAMGGf1EIMR042N03s25ejJTo0TYwHUu1yv1WycVyYDELbMFH0Bj8WWGZQFV/Lj6
 kudq4OvNtzZEKCfWRidc2bBq+rB+M7IvCWNM3n+GfgaREdF5TABjuiUepPbt/9O/rBmeFvipw
 yPmTd5x/mgX4y1mSSgshV0X6teuQgElH+U1hh7vG2JZlTI0xkqCPC9jcImgfFifIQbs8NeEIV
 DufE48/iWSlFr9HMt1Zls5qVZbUtihjRBfFXIU+2Tdk5gYnaEL2LGr2piIDr2ndzVlLF3MVXV
 Q7K69Va3EpmZChue3QthRgkU+B0gX71jaE8EnMTgN2LR3cHLI1g/Zl+HZ47u9Ah6ErF11ruAC
 r4pMYbjVbH04OGjo/mEtJ6witeovo94j2g1A5jj44SrYS+cDPclKWLdSMET/l54zmADk=
Subject: [oss-security] CVE Request for Denial of Service in pacman 5.0.1

The package manager of Arch Linux, pacman, is vulnerable to a denial of
service attack based on signature files. This issue is located in libalpm
and therefore affects any other frontend of it, too.

A malicious signature file can trigger an out of bondary read on 32 and
64 bit systems, but also leads to an endless loop on 32 bit system.

While an endless loop on itself is no security issue per-se, such a
crafted file might trick the end-user to disable signature verification
to get his updates installed. This, on the other hand, would open up
possibilities for malicious packages to be installed.

Therefore, this DoS can be considered a stepping stone towards a system
attack.

Proof of concept (signature verification must be enabled):

$ uname -m
i686
$ PKG=package-1.0.tar.xz
$ touch $PKG
$ echo "iQEcBAABCAAGBQJXTxJiAAr/////+wA=" | base64 -d - > $PKG.sig
$ sudo pacman -U $PKG
_

The out of boundary access can be used to send 8 bytes inside the
address space of a root-running program to a keyserver, as long as the
byte in front of them is 0x10.

This issue with a patch has been reported upstream. [1]

Can you assign a CVE-ID for this?


--T.

[1] https://lists.archlinux.org/pipermail/pacman-dev/2016-June/021148.html
