X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3111" "Tuesday" "19" "January" "2016" "20:10:50" "+0000" "halfdog" "me@halfdog.net" "<678df6c4-a201-8088-2fc6-737d14905b9d@halfdog.net>" "77" "[oss-security] Overlayfs and devpts issues in namespaces" "^Date:" nil nil "1" "2016011920:10:50" "[oss-security] Overlayfs and devpts issues in namespaces" (number mark "U       me@halfdog.n Jan 19   77/3111  " thread-indent "\"[oss-security] Overlayfs and devpts issues in namespaces\"\n") "<20160114081713.GA27108@openwall.com>" ("<568AD91D.7090402@halfdog.net>" "<20160113160543.GA23466@openwall.com>" "<431c3bfb-3fb2-1922-0c50-f7f411574da5@halfdog.net>" "<20160114081713.GA27108@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7688 invoked by uid 550); 19 Jan 2016 20:11:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7642 invoked from network); 19 Jan 2016 20:11:10 -0000
References: <568AD91D.7090402@halfdog.net>
 <20160113160543.GA23466@openwall.com>
 <431c3bfb-3fb2-1922-0c50-f7f411574da5@halfdog.net>
 <20160114081713.GA27108@openwall.com>
Message-ID: <678df6c4-a201-8088-2fc6-737d14905b9d@halfdog.net>
User-Agent: Mozilla/5.0 (Windows NT 6.3; rv:36.0) Gecko/20100101 Firefox/36.0
MIME-Version: 1.0
In-Reply-To: <20160114081713.GA27108@openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Date: Tue, 19 Jan 2016 20:10:50 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Overlayfs and devpts issues in namespaces
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

<Seems that message did not get through, so resending>

Hi,

Solar Designer wrote:
> On Wed, Jan 13, 2016 at 10:26:18PM +0000, halfdog wrote:
>> About the title of the thread: The second topic mentionend in 
>> initial mail "Overlayfs and devpts issues in namespaces", was
>> the devpts issue. I combined those two in one thread, because one
>>  vulnerability makes discovery of second quite simple - that is 
>> why I discovered both nearly at same time. The later one is
>> still undisclosed. From the Ubuntu bug report notifications I
>> know, that they are at least trying to get rid of the
>> problematic pt_chown SUID binary, but there seem to be other
>> devpts issues they know about.
> 
> Since you brought the devpts issue in here on January 4, you must 
> post about it to oss-security no later than on January 18
> (Monday), or you may choose to do it today (Thursday).  (Friday and
> the weekend are worse.)

The writeup is ready since weeks, the first one is out already. The
user namespaces topic proved more problematic than initially thought:
two more local root privilege escalation variants were found,
overlayfs is vulnerable since enabled (e.g. Ubuntu Trusty up to now).

This was the first time, I tried to cooperate with others for fixing
via Linux distros instead only via Ubuntu and upstream, but even with
patch available, this did not speed up the process from discovery to
patching. So embargo time has ended but no patch available yet.

With that in mind, what would be best next steps for all those known
and also future issues?

As I know about the problems with uncoordinated full disclosure, but
bearing in mind, that full disclosure is also a method of enabling
those wanting to protect themselves, I am inclined to try this procedure:

* Send a pre-announce about 3 more userns related issues allowing
local root gain, thus proofing needs to audit the code more closely.

* Request developers to provide a mitigation workaround as kernel
module, that, as long as loaded a) disables userns as such or variant
b) just disables mounting within userns when not being host-uid-0.
Such a module should mitigate worst effects for production
environments but may leave other platforms (embedded? phones?)
unprotected.

* Module should be very simple to develop and perhaps distribute as
e.g. Ubuntu PPA addon-package to current kernel. So give whole public
2 days time for mitigation module.

* No matter if module is available or not (if not, that means that the
issues is irrelevant from security perspective). Hence full disclosure
cannot do any further harm.

Opinions?

hd

PS: As the number of issues currently in processing are way too large
for sparetime handling, coordination is getting worse. So quite
likely, different parties might be out of sync already.

- -- 
http://www.halfdog.net/
PGP: 156A AE98 B91F 0114 FE88 2BD8 C459 9386 feed a bee
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlaemC8ACgkQxFmThv7tq+411wCgjLx73cl3pKj/mvhIJC0EcrYb
8AAAni5TlXemvoPf/xei0tYHpjNhJA6q
=klHo
-----END PGP SIGNATURE-----
