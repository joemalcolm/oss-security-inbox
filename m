X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2273" "Tuesday" "6" "August" "2019" "10:53:41" "+0200" "Hanno =?iso-8859-1?Q?B=F6c?==?iso-8859-1?Q?k?=" "hanno@hboeck.de" "<20190806105341.71a55acf@computer>" "61" "[oss-security] clamav: denial of service through \"better zip bomb\"" nil nil nil "8" "2019080608:53:41" "[oss-security] clamav: denial of service through \"better zip bomb\"" (number mark "U       hanno@hboeck Aug  6   61/2273  " thread-indent "\"[oss-security] clamav: denial of service through \"better zip bomb\"\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] clamav: denial of service through \"better zip bomb\"" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27826 invoked by uid 550); 6 Aug 2019 08:53:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27794 invoked from network); 6 Aug 2019 08:53:54 -0000
Date: Tue, 6 Aug 2019 10:53:41 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20190806105341.71a55acf@computer>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] clamav: denial of service through "better zip bomb"

Hi,

Recently David Fifield presented a new variant of a ZIP bomb where by
using overlapping segments he was able to achieve very high compression
ratios (42kb->5GB, 10MB->281TB).

Passing the example files to clamav causes extreme CPU spikes and
extremely long scanning times. In a setup with clamd (a daemon-ized
version of clamav) this is particularly nasty, as even interrupting the
scanning process doesn't stop the CPU spikes in the daemon and the
daemon cannot be killed gracefully.

clamav is often used to automatically scan incoming mails on
mailservers, in this case this is can be effective way to make a server
unusable.

The upstream bug report is here [2]. Clamav made a new release 0.101.3
[3] with a mitigation.

However David Fifield commented in the bug report [4] that the fix is
incomplete, by using some slight variations of his methods he could
bypass the fix.

Mitigation
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This can be mitigated by disabling scanning of compressed archives. In
the case of clamd there's a setting "ScanArchive" in clamd.conf [5].

Downside: Obviously that means compressed files won't be scanned.

misc
=3D=3D=3D=3D

Firefox sometimes showed Safebrowsing warnings for the "better zip
bomb" web page by David Fifield. Not sure how it ended up in the safe
browsing list, though I believe it's bad practice to mark legit
security research as "malicious" by blacklists.

A similar DoS is happening in Chrome when downloading the sample ZIP
bombs. This has already been mentioned in public comments, e.g. here
[6]. I had reported this to Chrome, it was marked as a duplicate of a
non-public bug.

It's likely that there are more applications affected.
I recommend that people try to test other applications that might
unpack ZIP files in an automated setting with these sample files.

[1] https://www.bamsoftware.com/hacks/zipbomb/
[2] https://bugzilla.clamav.net/show_bug.cgi?id=3D12356
[3]
https://blog.clamav.net/2019/08/clamav-01013-security-patch-release-and.html
[4] https://bugzilla.clamav.net/show_bug.cgi?id=3D12356#c6
[5] https://linux.die.net/man/5/clamd.conf
[6] https://news.ycombinator.com/item?id=3D20352537
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
