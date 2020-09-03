X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["865" "Thursday" "3" "September" "2020" "20:09:36" "+0200" "Marcus Meissner" "meissner@suse.de" "<20200903180936.GB16543@suse.de>" "27" "[oss-security] GNUPG released with AEAD sec fix CVE-2020-25125" nil nil nil "9" "2020090318:09:36" "[oss-security] GNUPG released with AEAD sec fix CVE-2020-25125" (number mark "U       meissner@sus Sep  3   27/865   " thread-indent "\"[oss-security] GNUPG released with AEAD sec fix CVE-2020-25125\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] GNUPG released with AEAD sec fix CVE-2020-25125" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23777 invoked by uid 550); 3 Sep 2020 18:09:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23756 invoked from network); 3 Sep 2020 18:09:49 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 3 Sep 2020 20:09:36 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20200903180936.GB16543@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] GNUPG released with AEAD sec fix CVE-2020-25125

Hi,

gnupg just released a security fix update.

CVE-2020-25125

https://lists.gnupg.org/pipermail/gnupg-announce/2020q3/000448.html

...
Importing an OpenPGP key having a preference list for AEAD algorithms
will lead to an array overflow and thus often to a crash or other
undefined behaviour.

Importing an arbitrary key can often easily be triggered by an attacker
and thus triggering this bug.  Exploiting the bug aside from crashes is
not trivial but likely possible for a dedicated attacker.  The major
hurdle for an attacker is that only every second byte is under their
control with every first byte having a fixed value of 0x04.

Software distribution verification should not be affected by this bug
because such a system uses a curated list of keys.

A CVE-id has not yet been assigned.  We track this bug at
https://dev.gnupg.org/T5050
...

Ciao, Marcus
