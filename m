X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2080" "Saturday" "6" "February" "2016" "10:11:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160206151106.CCD7F33202E@smtpvbsrv1.mitre.org>" "56" "[oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18" nil nil nil "2" "2016020615:11:06" "[oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18" (number mark "U       cve-assign@m Feb  6   56/2080  " thread-indent "\"[oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18\"\n") "<CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>" ("<CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5556 invoked by uid 550); 6 Feb 2016 15:11:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5535 invoked from network); 6 Feb 2016 15:11:18 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdSpUpBuZK6dXCFfpjWvaSd0NLzEqhfJNacGzMq4VvyWFw@mail.gmail.com>
Message-Id: <20160206151106.CCD7F33202E@smtpvbsrv1.mitre.org>
Date: Sat,  6 Feb 2016 10:11:06 -0500 (EST)
Subject: [oss-security] Re: CVE request: Out-of-bound read in the parsing of gif files using GraphicsMagick 1.3.18

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We found a read out-of-bound in the parsing of gif files using
> GraphicsMagick. This issue was tested in Ubuntu 14.04 (x86_64) using
> GraphicsMagick 1.3.18.
> 
> $ ./gm identify overflow.gif
> 
> AddressSanitizer: heap-buffer-overflow
> READ of size 1
> 
> SUMMARY: AddressSanitizer: heap-buffer-overflow coders/gif.c:276 DecodeImage
> 
> This issue is caused by the use of unintialized memory in DecodeImage and
> fortunately it was fixed here:
> 
> http://marc.info/?l=graphicsmagick-commit&m=142283721604323&w=2

>> Date:       2015-02-02 0:33:27
>> 
>> coders/gif.c (DecodeImage): Assure that GIF decoder does not use
>> unitialized data.

>> +  (void) memset(prefix,0,MaxStackSize*sizeof(short));
>> +  (void) memset(suffix,0,MaxStackSize);

Use CVE-2015-8808.

The scope of this CVE does not include the "FIXME: Is the logic for
this loop (or the loop which inits suffix and prefix arrays) correct?
Values are intentionally accessed outside of the explictly initialized
range of 'clear'." observation in the same commit.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWtgyDAAoJEL54rhJi8gl5is8P/0gbJvpqOZvw+8wfuBUsyJJG
wQ4PUn/+Kgo5SWH3dRpSRyoN8OMr0mtO0ikWGVTpYvIGP6PCLi3zv6utJyTXjj11
EdGB6HCjvvCVQBIFyXP2fPQVK8hhwIwsiFqLoER9ZgHnGwRTOOrvkuaVIJeugHRl
4RfdbEcPSNX0OtAk+lrpuv0YwQmlRRLK1ddt2GTh2L5Jzr/eRYJo8/QArFSzKu8n
qJcW6bHx48w+2LXcQPPvexvxiRwCsSREKldKO9UWLZZO19dFQKhTGs254WnKyVq7
byEsl6j49a4OvkLAB2CiLBTVyfYjuuWfpQdLAnjqx7YL6k5K3DlIozc387my8nz/
BgwS3lK+ci8E7JEIg8hxXDrG5rENMGnIYJGX7WarEsonqbE7RKw/hwsygK0rl8dh
gnFG8tPR1lP8ILegk7Jb8f6zsgUrMOqcwSjZXzRlEOX4BHbj6Q/zm+qTeYsasfhC
8FfVfoN7o7P3wsHjlZ+sHX/+wwtzlor8/s3/kQBeIsksC2/HGUfkfUWpfjV0Bma8
40PEfRhslxiFcwPb1BZZUq0L8wDN+utWMtL4uwmj7VVwmvNKUpO/yWsmdiA6AXPl
y6fVZVaqH1TAHeCResnGV+zwcnbZngHfGIzdc2SKyEKUf4csq7pE4aTUzcE/sgE9
Lg2goBw9tbht7gJhkjMQ
=fCxG
-----END PGP SIGNATURE-----
