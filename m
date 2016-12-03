X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Friday" "2" "December" "2016" "22:20:08" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0301c866a24643c1a4f15ace461d6aaf@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync" nil nil nil "12" "2016120303:20:08" "[oss-security] Re: CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync" (number mark "U       cve-assign@m Dec  2   36/1444  " thread-indent "\"[oss-security] Re: CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync\"\n") "<ed9a84ac-7e62-55d5-afa2-4afaab0c1613@gmail.com>" ("<ed9a84ac-7e62-55d5-afa2-4afaab0c1613@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21572 invoked by uid 550); 3 Dec 2016 03:20:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21550 invoked from network); 3 Dec 2016 03:20:20 -0000
From: <cve-assign@mitre.org>
To: <sploving1@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>, <tiwai@suse.de>
In-Reply-To: <ed9a84ac-7e62-55d5-afa2-4afaab0c1613@gmail.com>
Message-ID: <0301c866a24643c1a4f15ace461d6aaf@imshyb02.MITRE.ORG>
Date: Fri, 2 Dec 2016 22:20:08 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: -- Linux kernel: ALSA: use-after-free in,kill_fasync

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/torvalds/linux/commit/3aa02cb664c5fb1042958c8d1aa8c35055a2ebc4
> https://patchwork.kernel.org/patch/8752621/

>> Currently kill_fasync() is called outside the stream lock in
>> snd_pcm_period_elapsed(). This is potentially racy, since the stream
>> may get released even during the irq handler is running.

>>> BUG: KASAN: use-after-free in kill_fasync

Use CVE-2016-9794.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYQjl+AAoJEHb/MwWLVhi20bIP/2YwMe+WkpAO/h+tumPCmFmh
hdZr5j+sGBqm+QajpvcMyRaSGr+5Jxby33NZVYiI7xOQsfRh7unL4+JqaDNvA0gU
HrCin7BtFCKYS8LqUW0y1T3/PkjBr69PJJoBADwhn7MyFQ8VqlBCUMaILVUygk5M
eSlyp3pl1KZblySC6KWEH+Lw+sfq+CaLH3Y1EPKcBqCwDPnib2cW7T9K6fYVBLnR
1uzPX54A+bdXAWpU3Qb9wz0QrzLwtsFRp0ue/FjJLJWNCPwGuU4q8QcSUsZ4IVgo
mYgZvWQs2sz5FJpL2TBFZ1Nx2ijx9WJrS26U02gUO3lhAc+8EkaW3TfvUFszWGsG
5CI1FExd5j/oxmUISP8YXcQoy1B5V9pzzXkiz1HKLxSu5hdGplpuvRm5z7OZ9x5I
hLwEH87wVhKYMofKFf90zJhOZYnQzmUe2Zs1Z4D1a1cKu7YT//lkQZytKmDKEceZ
Fj36LwBwnI8MhV8T7F1a/ejdkBw0h32VazVF3hRPHqTeF3FREvu137MHA/vOTVzh
+XsM+SJbKHkfzXEkxCisiuAluSkfOuWiyFuBAFiDHZYMMQAF7ZuOTwG+Zwu3BWUT
ex3w0SJ1mkcCjw2EKJFaUT6/oQ0FF0e7vkgauwP5wI9owxdc14qKuD1JGbANHUGs
8xXWBJWlploCCTgiYz7v
=XKyZ
-----END PGP SIGNATURE-----
