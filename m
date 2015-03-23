X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1139" "Sunday" "22" "March" "2015" "23:08:57" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1YZsjZ-0003mq-8W@rmm6prod02.runbox.com>" "24" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032303:08:57" "[oss-security] CVE for Kali Linux" (number mark "        dwheeler@dwh Mar 22   24/1139  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<87zj74a6wa.fsf@hope.eyrie.org>" ("<87zj74a6wa.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9284 invoked by uid 550); 23 Mar 2015 03:09:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9266 invoked from network); 23 Mar 2015 03:09:08 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Mailer: RMM6
In-Reply-To: <87zj74a6wa.fsf@hope.eyrie.org>
Message-Id: <E1YZsjZ-0003mq-8W@rmm6prod02.runbox.com>
Date: Sun, 22 Mar 2015 23:08:57 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@dwheeler.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: "oss-security" <oss-security@lists.openwall.com>

On Sun, 22 Mar 2015 17:34:29 -0700, Russ Allbery <eagle@eyrie.org> wrote:
> Debian signs the entire repository state, not each individual package.
> This has its pluses and minuses....
> Basically, the signing algorithm for a Debian repository rolls up all the
> hashes for each individual package in the archive and signs the whole thi=
ng...

Cygwin takes the same approach.  It distributes a file listing packages
(including their names, cryptographic hashes, and lengths), and this file l=
ist is signed.
The Cygwin package manager downloads actual packages from untrusted locatio=
ns,
but before installing it, it checks if the package hash and length match th=
e digitally-signed values
(using a public key embedded in the package manager's executable).

Currently Cygwin uses MD5 as its cryptographic hash algorithm, which has be=
en totally
busted as a crypto hash algorithm. Yes, Cygwin also checks the length,
but I think using MD5 in 2015 is absurd.  Thankfully, the Cygwin folks are
already in the process of moving to SHA-512; once that move completes,
they should be much stronger against MITM attacks.

--- David A. Wheeler
