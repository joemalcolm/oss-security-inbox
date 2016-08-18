X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1828" "Thursday" "18" "August" "2016" "19:54:52" "+0300" "Solar Designer" "solar@openwall.com" "<20160818165452.GA6708@openwall.com>" "34" "Re: [oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction" "^Date:" nil nil "8" "2016081816:54:52" "[oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction" (number mark "        solar@openwa Aug 18   34/1828  " thread-indent "\"Re: [oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction\"\n") "<39a367af-c84d-01cb-36eb-6732edfbdac2@andrewg.com>" ("<20160817165819.GA24935@openwall.com>" "<87pop7utyu.fsf@wheatstone.g10code.de>" "<39a367af-c84d-01cb-36eb-6732edfbdac2@andrewg.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13565 invoked by uid 550); 18 Aug 2016 16:56:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9725 invoked from network); 18 Aug 2016 16:55:02 -0000
Message-ID: <20160818165452.GA6708@openwall.com>
References: <20160817165819.GA24935@openwall.com> <87pop7utyu.fsf@wheatstone.g10code.de> <39a367af-c84d-01cb-36eb-6732edfbdac2@andrewg.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <39a367af-c84d-01cb-36eb-6732edfbdac2@andrewg.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 18 Aug 2016 19:54:52 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Libgcrypt and GnuPG 1.4 RNG output prediction
To: oss-security@lists.openwall.com

Here's what Werner wrote in that message, regarding the CVE ID:
> Sorry, that was my typo.  It is correct in the NEWS files and the commit
> messages.
> 
> The reseachers forwarded me a mail with the CVE but I have not been put
> the loop, neither from RedHat, nor from Debian (as they usually do).

More interesting are these tweets:

<@gnupg> @hanno They will present their paper at http://CCS2016.org.  A preprint can now be found here: http://formal.iti.kit.edu/~klebanov/
<gnupg> The paper about the Libgcrypt RNG bug has meanwhile been published:\nhttp://formal.iti.kit.edu/~klebanov/pubs/libgcrypt-cve-2016-6313.pdf

On Thu, Aug 18, 2016 at 05:37:20PM +0100, Andrew Gallagher wrote:
> Werner used PGP/MIME, but something appears to have deleted the first
> mime-boundary, rendering the message unparseable. If you view the
> source you can see the plaintext, but MIME mail clients (including the
> openwall mailing list archive) can't.

Yes, unfortunately.  I investigated this yesterday, and it appears to be
a long-standing bug in ezmlm-idx (hopefully already patched in newer
versions, but I didn't check), which is triggered by Gnus, depending on
a combination of settings on both sides - specifically, when a MIME
section does not include a Content-Type header, yet the list is
configured to remove sections with some MIME types.  The MIME type
should then default to text/plain, and the section preserved, but
ezmlm-idx would forget to set a flag indicating that such section is OK
to keep.  I think I've patched this on the server now, but I didn't
test.  Previous discoveries of the bug:

https://lists.oasis-open.org/archives/docbook/200402/msg00068.html
https://web.archive.org/web/20051201155347/http://www.csi.hu/mw/ezmlm-idx_mimeremove_bug.txt
http://osdir.com/ml/mail.ezmlm/2002-07/msg00016.html

Alexander
