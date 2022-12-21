Received: (qmail 28091 invoked by uid 550); 21 Dec 2022 18:42:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28061 invoked from network); 21 Dec 2022 18:42:17 -0000
Date: Wed, 21 Dec 2022 19:42:03 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20221221194203.40e37b41@computer>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Directory traversal in sharutils/uudecode and python uu module

Hi

uuencode is an old method to encode binary data in ascii.

uuencoded files start with a line of this type:
begin 644 [filename]

If the implementation does not check for it this allows a directory
traversal attack, e.g. like this:
begin 644 /etc/shadow

Or
begin 644 ../../../../../etc/shadow

If one can convince someone with root privileges to decode such a file
this may thus compromise a system.

I discovered two implementations vulnerable to this: The uudecode tool
shipped with GNU sharutils and the uu module in python (only if no
explicit filename is given). Both are vulnerable to both variations.

I reported both on November 27th. The python security team asked me to
report it to their public bug tracker, as they don't consider it a high
risk issue:
https://github.com/python/cpython/issues/99889

The python uu module is deprecated and will be removed in python 3.13.
The python developers pointed out that it is rarely used, and it is not
vulnerable if an output file name is given.
The python binascii module contains an uu decoder that is unaffected
(as it does not directly write a file, it decodes to a variable) and no
deprecation or removal is planned. I guess this means if you're using
the python uu module you should probably switch to binascii.

I got a reply confirming the report from the sharutils developers,
pointing out that this can be interpreted as expected behavior
according to the posix standard. I don't expect a fix any time soon,
their latest release is from 2015.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
