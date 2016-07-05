X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3049" "Tuesday" "5" "July" "2016" "18:41:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160705224122.7C5C242E012@smtpvbsrv1.mitre.org>" "75" "[oss-security] Re: Browsing and attaching images considered harmful in Linux" "^Cc:" nil nil "7" "2016070522:41:22" "[oss-security] Re: Browsing and attaching images considered harmful in Linux" (number mark "        cve-assign@m Jul  5   75/3049  " thread-indent "\"[oss-security] Re: Browsing and attaching images considered harmful in Linux\"\n") "<CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>" ("<CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17729 invoked by uid 550); 5 Jul 2016 22:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17685 invoked from network); 5 Jul 2016 22:41:34 -0000
In-Reply-To: <CACn5sdSFtHbu1d45rK4Hi8=Z+KirfOZ+g=gBT5LsCWcxgfnz-w@mail.gmail.com>
Message-Id: <20160705224122.7C5C242E012@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue,  5 Jul 2016 18:41:22 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Browsing and attaching images considered harmful in Linux
To: gustavo.grieco@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I would like to bring the attention of the oss-security list to the
> existence of many security issues in the gdk-pixbuf library and its
> dependencies causing a that attaching a corrupted image file in Linux
> has become a risky business. For instance, there is a read
> out-of-bounds in librsvg2 (a dependency of gdk-pixbuf used to render
> svg images), which can be easily triggered if you try to attach a svg
> in Firefox.

> librsvg2 (2.40.2-1 with debug symbols)

> 1. Download and unpack boom.tar.gz somewhere.
> 2. gdb --args /usr/lib/firefox/firefox
> 3. Execute "run" and try to attach (ctrl+o) the svg file inside boom
> directory in Firefox.
> 
> Result:
> 
> Program received signal SIGSEGV, Segmentation fault.

> 0x00007fffbb7a4c0d in rsvg_pattern_fix_fallback
> (pattern=pattern@entry=0x7ffffffea110) at rsvg-paint-server.c:645

> It is interesting to note that rcx looks controllable:
> 
> (gdb) x/i $rip
> => 0x7fffbb7a4c0d <rsvg_pattern_fix_fallback+333>:        testb  $0x4,0xe4(%rcx)
> (gdb) info registers
> ...
> rcx            0xe5e5e5e5e5e5e5e5        -1880844493789993499
> ...
> 
> Fortunately, this issue is already solved in the last revision of
> librsvg2 (AFAIK, this issue has no CVE, so please MITRE assign one if
> suitable). Nevertheless, I reported such vulnerability to Mozilla more
> than a month ago hoping that they will disable the svg support in the
> open/attach widget. After some discussion, it was marked as WONTFIX.
> While i understand why, i still feel it can be productive to discuss
> this here.
> 
> (the same trick can be used to crash Chrome/Chromium, since the code
> to open/attach an image is almost the same, so this is not a Firefox
> specific issue)

Use CVE-2016-6163 for this specific "read out-of-bounds in librsvg2 (a
dependency of gdk-pixbuf used to render svg images)."

(We cannot assign CVE IDs for the more general topic of "many security
issues in the gdk-pixbuf library and its dependencies" without
additional information.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXfDX+AAoJEHb/MwWLVhi2UEAP/1iLYtrHAOrC5eEye9BjJJS3
8aZCZiBarS2FJIUWDs/W7H/8KkKNluhZJuKTQcWFcbMKzhNVNXoi2jLqD9p7O1NO
c4/SDM8eSPLzSPHpk6m1ZU2N9WO/qA4xI4JW8Aq6AkeCSQMjsSbSraU/xXwhRHj0
Ho4JCtlBi7YgDfzt1fOApf4lW9/0A0bVk877JdkOozXIq1nn5qHsiplqkHhw6QpN
1Yo32YH6QMHP5ZLMrhtUorZ9BaGbFIHrrowOD9TGS35sEjO9rXmo4H+auuHQRbup
kkPBiU8EoEy23+lxIN8twdRMpICDAAqSFr4ZmVjCywZ7I2cGAh0wzO4rwPA268aj
9esSjut6wxZmpejy1YvJgrgkj0SYWn5jH5Obc8QYZoEBlT3l5DtDYRjN4JUsWm9n
ben8vr+7d10F4ROkauebqop7TCexuAs50FTvrkhxDqHLeCI4yuXTRZCMBnaqf6eG
1pqj7h0E0Wf7Zhp53J5zMGCRgn0UhG3onEauT/Ge95FisuAkAZFwz5jQBJT3iFzD
bLraASJNVVS28xrgyLfXL/1TrIs2fkMYF0bo/RVGQlqz1vMm0VFgjU3vVgSVlgZ8
hLdH4FFDsj6Rx2v30CHRWkdt7ILB0aVSaIUUwt+VhmBagchg1bWCjoGw/YKNpvOx
Bcb0TMBIqWVr/5eNilJr
=iGCG
-----END PGP SIGNATURE-----
