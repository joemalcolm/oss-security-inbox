X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3972" "Thursday" "31" "March" "2016" "09:47:34" "-0600" "Andreas Dilger" "adilger@dilger.ca" "<B942CDE1-651E-43D2-82F1-8E110D6EB228@dilger.ca>" "98" "Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" "^Cc:" nil nil "3" "2016033115:47:34" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" (number mark "        adilger@dilg Mar 31   98/3972  " thread-indent "\"Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS\"\n") "<CANO=Ty1OcZ=ukxttq9A9M9ot78jDPzDmq4y1NGUMAQmSiveH_g@mail.gmail.com>" ("<f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>" "<1459286067.2596.18.camel@debian.org>" "<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>" "<20160330204304.GD6207@thunk.org>" "<CANO=Ty1OcZ=ukxttq9A9M9ot78jDPzDmq4y1NGUMAQmSiveH_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22099 invoked by uid 550); 31 Mar 2016 15:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22073 invoked from network); 31 Mar 2016 15:47:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dilger-ca.20150623.gappssmtp.com; s=20150623;
        h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
         :to;
        bh=LaUbiyReqFdXndnUlqtfmWRxYi7JfLeKIcBqNXGvajM=;
        b=QRBfKHMgwS045i3C98VfxfnvI/kV877cVaFDdo5SYC+IDU4OgDbUbAsSs4E1z4t8YZ
         J0uFsSznY4GcH7rF0kc33A7ICXMCwZMyeu4wWzEas7xylmKW2JVQFRHBW4lMqafQ4Otc
         RvrjfRhjL4OihyCTD97ZebW4MsEcZzx489yn4E7X8ZzXdhsY3xHhtPq6jfo2sc4Ox9Aq
         aOVvEbUZH9BTk12WmKdUJcBS6ZFZTqTzTFrgWTofRzN/z/BUFgk3YmuFrU0XLL27p+To
         Fz/kjgRn5Y9dOS7MWX9kgdZ4SuICfiYIYUuOPU0LdHsNU5nnlUiXq5PA2AN5rgW0FsU9
         6zVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
         :message-id:references:to;
        bh=LaUbiyReqFdXndnUlqtfmWRxYi7JfLeKIcBqNXGvajM=;
        b=R+FPqqzE+3LNWgwh+8o2rq5RnW9Kdnhu0xTV0w9HbCw1qA0+zuzK6Jiyx8YiC5kVLE
         tume8LhnCMMohTc5vhRTXZRntKKqjqybd8uxKM91Wu8qn9dFRVcbGsDiUQWF208Hw7Ik
         uzWqQASsy8tiIKwVt9JdJu9XgitSBdDcfpxkU9et2a5SbSiXbgwI5kvkUsjrDrwvUEAf
         hC6WKeeVN837u2C8W01XIEyesm8uUmUCQorWbSV73P36imwCFKzfvaoEyrrRw8JTwDWB
         bp9S5rO+4ExKogt/xXavVvtnyM3IaRdGqwyOo1RWqKWUbApg6oj9hZn6LDqKpVKqX+PC
         0/Yg==
X-Gm-Message-State: AD7BkJI3uR3l5n3LRfQF3w7jnKz+WK6fLNL7T+U3JXLb1+syp8S2CjNIu6YOl3zo90SxWQ==
X-Received: by 10.50.30.73 with SMTP id q9mr30789196igh.77.1459439259908;
        Thu, 31 Mar 2016 08:47:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: multipart/signed; boundary="Apple-Mail=_4AFB059B-0F04-429D-87A2-60C052AD286E"; protocol="application/pgp-signature"; micalg=pgp-sha256
X-Pgp-Agent: GPGMail 2.6b2
In-Reply-To: <CANO=Ty1OcZ=ukxttq9A9M9ot78jDPzDmq4y1NGUMAQmSiveH_g@mail.gmail.com>
Message-Id: <B942CDE1-651E-43D2-82F1-8E110D6EB228@dilger.ca>
References: <f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr> <1459286067.2596.18.camel@debian.org> <57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca> <20160330204304.GD6207@thunk.org> <CANO=Ty1OcZ=ukxttq9A9M9ot78jDPzDmq4y1NGUMAQmSiveH_g@mail.gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: oss-security <oss-security@lists.openwall.com>,
 Yves-Alexis Perez <corsac@debian.org>,
 Theodore Tso <tytso@google.com>,
 linux-ext4@vger.kernel.org
Date: Thu, 31 Mar 2016 09:47:34 -0600
From: Andreas Dilger <adilger@dilger.ca>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS
To: Kurt Seifried <kseifried@redhat.com>

--Apple-Mail=_4AFB059B-0F04-429D-87A2-60C052AD286E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

On Mar 31, 2016, at 8:53 AM, Kurt Seifried <kseifried@redhat.com> wrote:
>=20
>=20
>=20
> On Wed, Mar 30, 2016 at 2:43 PM, Theodore Ts'o <tytso@mit.edu> wrote:
>=20
>> You can mount the file system with "mount -o errors=3Dcontinue" and this
>> will override the default behavior specified in the super block.
>>=20
>> I would argue that a Desktop or server system that had automount
>> should either (a) mount with -o errors=3Dcontinue, or (b) force an fsck
>> on the file system before mounting it.
>=20
> The problem is that:
>=20
> a) means I'll be mounting filesystems with errors that I may want to know=
 about (but not have my  system panic about)
>=20
> b) fsck takes a long time on large disks (the smallest size of disk I buy=
 for USB drives is 1TB, if I fsck every time I plug one in I'll die of old =
age).

Two options that I think are fairly straight forward to fix this:
- add /sbin/mount.{ext2,ext3,ext4} helpers that add "errors=3Dremount-ro"
  when a non-root user mounts the filesystem. I think "errors=3Dremount-ro"
  is safer than "errors=3Dcontinue" since it blocks all later attempts to
  modify the filesystem, otherwise there may be further corruption and
  more risk of hitting an unhandled error condition.
- add a check in ext4_fill_super() to change EXT4_ERRORS_PANIC superblock
  option to EXT4_ERRORS_RO if mounted by a non-root user

>> So I think this is a particularly meaningless CVE, which is why I have
>> zero respect for people who try to make any kind of conclusion based
>> on CVE counts.   I certainly don't plan to do anything about this.
>=20
> As for your comments on CVE counting even the then head of CVE @mitre tol=
d people not to rely on CVE counting for vulnerability stats:
>=20
> https://media.blackhat.com/us-13/US-13-Martin-Buying-Into-The-Bias-Why-Vu=
lnerability-Statistics-Suck-Slides.pdf
>=20
> As for your comment on not fixing this: I think fundamentally I should be=
 able to plug a file system in and try to mount it with default/reasonable =
options and NOT have my system panic. File system handling code, like any c=
ode that handles user supplied data should be able to handle garbage gracef=
ully and securely. At worst it should try to mount and go "derp, it's messe=
d up, maybe fsck it?"

I think this is a legitimate problem to fix.  The main question is how comp=
lex
it is to fix?  I just don't know enough about the increasing number of ways
that userspace can mount a filesystem to know how to detect this correctly =
in
the kernel.

It may be that "non-root user" in the options above should be "removable me=
dia"
instead?  Knowing the intent of the user/sysadmin is difficult.

Cheers, Andreas






--Apple-Mail=_4AFB059B-0F04-429D-87A2-60C052AD286E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIVAwUBVv1Gl3Kl2rkXzB/gAQhdsQ/+IlxT8/4IkJhGqaW51LyKKjIbSg0hj/S0
GN25lpc7vrrjHBsIWUVl+/CDoPeXFSrHpvfPdUmx+J3038RRbG/2BPD/MtHoAZTN
gKVVNOKeSTzOQINtk1EO+vbDVMP8P3NIbl6T+EWs3GUt20gGcg+0IRAadAiuuUOV
4QMuEQrjMti6jlAdmAVmhr0UoUjqU7H2JvwGqtMQjouTdPhyItSl8NtYDkbbK7Wo
teNx7GyfgvguQYPJG2mcaqc4aX04En9xIow97DcxC8HC1GTkivSII7Bs6Qh6ZPnU
ctupm1EdU+mEiWyrX0b3og9jNi47DszHdEf4aLmDa1ANdsWED5YydFl9PsvqcP/7
CASZF83AcAXPW1oi9IvW6T+ecI4vRb8xx8APvotO0TEjGRCTzuD5PxG3KnBKRj7J
flf3AsaqYoHBNsREFbeJ+ZndS9JGwt/D/s3G3AAYMtxt1+12W5AHDgNKGrEoWpGN
z0gV03eon3Q1vqE6Khskusb8Y7B4qJmy7n+Z0pTfNBTF5zHTD9NMNFfoym9/PJKg
7RDFAcA/d1tLsstVhdPgtiS9IZ30eTOCmq/9mHwUPQm0q/2edZadRsYVsiO+wOB9
aKVnKt+lW5DioUvEvE7XrwuJFDd+PORkXJSXy7z1+g+IVC0QLE62r6WE4r11RWD1
7GKBS+1ctSg=
=jKeb
-----END PGP SIGNATURE-----

--Apple-Mail=_4AFB059B-0F04-429D-87A2-60C052AD286E--
