Received: (qmail 1450 invoked by uid 550); 4 May 2026 10:08:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1430 invoked from network); 4 May 2026 10:08:57 -0000
Authentication-Results:garm.ovh; auth=pass (GARM-101G004ec088204-689e-4203-8170-ad6321e90a48,
                    97EA7B6FB89449FE9755007344C6695B317325E4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.226.145
Date: Mon, 4 May 2026 12:08:44 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20260504100844.w73zrvl732of7wqs@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <87mryiinrq.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <87mryiinrq.fsf@gmail.com>
x-ovh-tracer-id: 8083679857627654783
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTGuPANEz+QmtHOFS4LOzuHmGgPu6jy5NFfuTjA3ObinKvzS1Tftxrmw6W20yZqAcx8bJmRwn6oP79gwxkrEhPWBhkjlbK3BorPdct0t6mNAwvbpN8lfU7KLzlMxvEcBkn4WikRLGA0cw/jEb7ACjZeEXBabbWcl6Dv4qETxFQFNqbCXtBBrzSOrB4xSQWo6mV3RO8keVRQ76VvsASLsF3tBs7X7NHueKIDi3TbZnbzGp8zPXr+9fvRU7x6++5J283AkDTD8gr5fSmfZPkRUm1n+SXRkhXggEafkYcOiMJLTWI8v40kGl1FZqLOhsI3VWcbWV6t2koHTdbdeQc3lAl6AWvWixYynvJSkDNodfeDHLaGzzUvPvsApytbLwD5YC3MW/bJ3T/mSPn+/iRmmtenzCVLxTgswtxnBWOMv5ubXbeA+t6QOjvpbC+fw87Zy8VvA6+d2qqTHQu1PuAVKasSkfi97Z8/hgaamh3tXUm+t5hlX+pC5cD8KYglbGJUr9ymFFyTNWtkSAnmFZOQr1wYSkgHqy0JeZSnK8EKWSKN9rAFCMPYcxDpVcKLY47vXuz3sVWIVatVBsLOGek3SsGPnQx5m9/qoZ6FBIgcDER4UGoEkdSdoWslNG67r1mcA7W78phxmbkDTBODNKLrX7ZcTpK9lL5anJP8uxNVe8cG/9Q
Subject: Re: [oss-security] uutils coreutils CVEs

* Collin Funk <collin.funk1@gmail.com>, 2026-05-01 18:49:
>* CVE-2026-35352
>
>We can see that uutils 'mkfifo' creates the fifo with world readable 
>and writable permissions and then uses chmod() which introduces a 
>TOCTOU race that can be exploited by another user creating a symbolic 
>link in it's place:
>
>    $ mkfifo --version
>    mkfifo (uutils coreutils) 0.8.0
>    $ strace mkfifo -m 700 /tmp/fifo
>    [...]
>    umask(000)                              = 002
>    umask(002)                              = 000
>    mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) = 0
>    chmod("/tmp/fifo", 0700)                = 0

Creating the FIFO with default permission could allow other users to 
open it before the chmod(..., 0700) call. This is indeed a 
vulnerability, but unrelated to symlinks, and it's a different issue 
than the one in the description of CVE-2026-35352:

>A Time-of-Check to Time-of-Use (TOCTOU) race condition exists in the 
>mkfifo utility of uutils coreutils. The utility creates a FIFO and then 
>performs a path-based chmod to set permissions. A local attacker with 
>write access to the parent directory can swap the newly created FIFO 
>for a symbolic link between these two operations.

Note that this attack doesn't work in /tmp, because the sticky bit 
prevents the attacker from deleting or renaming other users' files. The 
victim would have to do something like "mkfifo /home/mallory/fifo". So, 
uh, don't do that?

It's questionable if this is a vulnerability at all.

-- 
Jakub Wilk
