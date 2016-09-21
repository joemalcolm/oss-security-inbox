X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2715" "Wednesday" "21" "September" "2016" "21:27:46" "+0200" "A.N." "ailin@devio.us" "<1474486066.2424.9.camel@devio.us>" "107" "[oss-security] Irssi Security Advisory CVE-2016-7044+CVE-2016-7045" nil nil nil "9" "2016092119:27:46" "[oss-security] Irssi Security Advisory CVE-2016-7044+CVE-2016-7045" (number mark "U       ailin@devio. Sep 21  107/2715  " thread-indent "\"[oss-security] Irssi Security Advisory CVE-2016-7044+CVE-2016-7045\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11702 invoked by uid 550); 21 Sep 2016 19:29:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11406 invoked from network); 21 Sep 2016 19:28:12 -0000
X-Virus-Scanned: amavisd-new at devio.us
Message-ID: <1474486066.2424.9.camel@devio.us>
From: "A.N." <ailin@devio.us>
To: oss-security@lists.openwall.com
Date: Wed, 21 Sep 2016 21:27:46 +0200
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.20.5 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Irssi Security Advisory CVE-2016-7044+CVE-2016-7045

We are sad to have to announce the following security issue:

Canonical URL http://irssi.org/security/irssi_sa_2016.txt

heap corruption and missing boundary checks
===========================================
CWE Classification: CWE-20, CWE-823, CWE-126, CWE-122

CVE-2016-7044 [1] was assigned to bug 1
CVE-2016-7045 [2] was assigned to bug 2


Description
-----------

Gabriel Campana and Adrien Guinet from Quarkslab reported two remote
crash and heap corruption vulnerabilites in Irssi's format parsing
code.

They also provided us with proof of concept exploit code and patches
to fix those issues.


Impact
------

Remote crash and heap corruption. Remote code execution seems
difficult since only Nuls are written.


Detailed analysis
-----------------

Based on analysis Provided by Gabriel Campana and Adrien Guinet from
Quarkslab:

Bug 1

The unformat_24bit_color() function is called by format_send_to_gui()
to decode 24bit color codes into their components. The pointer is
advanced unconditionally without checking if a complete code was
supplied.

Thus, after the return of unformat_24bit_color(), ptr might be invalid
and point out of the buffer.

Bug 2

The format_send_to_gui() function does not validate the length of the
string before incrementing the `ptr' pointer in all cases.

If that happens, the pointer `ptr' can be incremented twice and thus
end past the boundaries of the original `dup' buffer.


Affected versions
-----------------

Irssi 0.8.17-beta up to and including 0.8.19 up to 0.8.19-219-g52fedea

Bug 1 affects only Irssis compiled with true-color enabled.
Bug 2 affects all Irssis regardless of compilation flags.


Fixed in
--------

Irssi 0.8.20


Recommended action
------------------

Upgrade to Irssi 0.8.20. Irssi 0.8.20 is a maintenance release
without any new features.

After installing the updated packages, one can issue the /upgrade
command to load the new binary. TLS connections will require
/reconnect. If the buf.pl script is loaded and symlinked into
~/.irssi/scripts/autorun, text buffer content will be saved and
restored.


Fallback action
---------------

Distributions which need to remain on Irssi 0.8.17 are strongly urged
to apply the patch and provide updated packages.

Those totally unable to upgrade, but with Perl support enabled in
their Irssi, can load the following script and add it to
~/.irssi/scripts/autorun as a first aid to mitigating these issues: 

https://irssi.org/security/sa_patch.pl


Patch
-----

https://github.com/irssi/irssi/commit/295a4b77f07f14602eeaa371f00ddbf09
910c82b


References
----------
[1] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-7044
[2] http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-7045
