X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2253" "Wednesday" "24" "February" "2016" "05:43:04" "+0000" "halfdog" "me@halfdog.net" "<42e97a56-3538-0864-ee40-2494df567745@halfdog.net>" "60" "Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces" nil nil nil "2" "2016022405:43:04" "[oss-security] Access to /dev/pts devices via pt_chown and user namespaces" (number mark "U       me@halfdog.n Feb 24   60/2253  " thread-indent "\"Re: [oss-security] Access to /dev/pts devices via pt_chown and user namespaces\"\n") "<20160223164136.GA24225@altlinux.org>" ("<8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>" "<20160223161754.GA23263@openwall.com>" "<20160223164136.GA24225@altlinux.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32134 invoked by uid 550); 24 Feb 2016 05:51:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32055 invoked from network); 24 Feb 2016 05:51:33 -0000
To: oss-security@lists.openwall.com
References: <8fc639ad-daef-1a6f-facf-140eb61aeee5@halfdog.net>
 <20160223161754.GA23263@openwall.com> <20160223164136.GA24225@altlinux.org>
From: halfdog <me@halfdog.net>
Message-ID: <42e97a56-3538-0864-ee40-2494df567745@halfdog.net>
Date: Wed, 24 Feb 2016 05:43:04 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <20160223164136.GA24225@altlinux.org>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Access to /dev/pts devices via pt_chown and user
 namespaces

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Dmitry V. Levin wrote:
> On Tue, Feb 23, 2016 at 07:17:54PM +0300, Solar Designer wrote:
>> On Tue, Feb 23, 2016 at 12:03:54PM +0000, halfdog wrote:
>>> Sending content from [0] also to oss-security as requested last
>>> time:
>> 
>> Thank you.  This public disclosure is very late, though.  I
>> didn't realize you were still holding some of your findings on
>> this.
>> 
>>> With Ubuntu Wily and earlier, /usr/lib/pt_chown was used to
>>> change ownership of slave pts devices in /dev/pts to the same
>>> uid holding the master file descriptor for the slave.
>> 
>> I think pt_chown is only needed for legacy BSD pty's, and no
>> longer needed for Unix 98 pty's that Linux systems use these
>> days.  Perhaps it should be dropped from upstream glibc by now.
> 
> Just for the record, pt_chown is not enabled by default in upstream
> glibc starting with glibc-2.18, one has to specify
> --enable-pt_chown configure option explicitly to build pt_chown.

Thanks for that information. So for pt_chown, this could hopefully be
just an Ubuntu issue. Should we assign an CVE for that?

On the other hand, the TIOCGPTN ioctl still is problematic with
USERNS, also for other tools. I just started with pt_chown for
demonstration because it is SUID, perhaps there are other programs
using this ioctl.

Should information about this risk/attack method just be added to the
kernel docs/man-page of TIOCGPTN or is it a separate vulnerability
with need for addressing (another CVE?).

> glibc documentation clearly states that "the use of pt_chown
> introduces additional security risks to the system and you should
> enable it only if you understand and accept those risks": 
> https://www.gnu.org/software/libc/manual/html_node/Configuring-and-compiling.html#index-grantpt-1

Another
> 
argument for having some community check tool + procedure
(sketched in mail before) to make mistakes only once (when not
everyone is reading all the docs).

hd

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88  2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlbNQt0ACgkQxFmThv7tq+7cYwCeIz3bGFV7lJwTS6naQrzLfAoc
h7EAnioQTLYVtsNJ5jX0+hiW9QekLUVg
=B5H+
-----END PGP SIGNATURE-----
