X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2176" "Monday" "23" "May" "2016" "20:19:17" "+0200" "Michael Scherer" "misc@zarb.org" "<20160523181917.GA19626@sisay.ephaone.org>" "54" "[oss-security] CVE request: /tmp usage race condition in onionshare" nil nil nil "5" "2016052318:19:17" "[oss-security] CVE request: /tmp usage race condition in onionshare" (number mark "U       misc@zarb.or May 23   54/2176  " thread-indent "\"[oss-security] CVE request: /tmp usage race condition in onionshare\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1613 invoked by uid 550); 23 May 2016 18:19:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1588 invoked from network); 23 May 2016 18:19:30 -0000
Date: Mon, 23 May 2016 20:19:17 +0200
From: Michael Scherer <misc@zarb.org>
To: oss-security@lists.openwall.com
Message-ID: <20160523181917.GA19626@sisay.ephaone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [oss-security] CVE request: /tmp usage race condition in onionshare

Hi,

I found a rather complicated issue regarding /tmp and onionshare, a
utility to share file over tor hidden services.

See
https://github.com/micahflee/onionshare/blob/master/onionshare/hs.py#L105
for the start of the problem.

And https://www.torproject.org/docs/tor-hidden-service.html.en for
more details on what happen for hidden services.

So onionshare use /tmp/onionshare to create a temporary directory
$HS that is then used for the creation of a tor hidden service, as
HiddenServiceDir configuration.  Then, the tor daemon create 2 files
in $HS, one for the hidden service hostname, the other for the
private key

But onionshare doesn't verify the owner or the exact permission of
/tmp/onionshare.  So if a attacker pre-create a directory
/tmp/onionshare with 777 permissions and him as a owner, he can use
a race condition to inject his own files in the share.

Since the file 'hostname' is created by tor, then opened and read by
onionshare, the attacker could use inotify on the temporary
directory and rename the $HS dir (since he own /tmp/onionshare) and
substitute his own directory with a crafted hostname directing to
his own hiddenservice, thus permitting him to inject his own
hiddenservices and so own files in the exchange, which seems to be a
potential problem.

I suspect that using setgid on /tmp/onionshare might also give
interesting potential attacks.  For example, if umask is not properly
set, the attacker could steal the private key and hostname, thus
being able to place himself as man in the middle during the
exchange, which make the previous attack easier (since the attacker
just have to set a proxy, rather than guessing the filename or
something like this)

I am also not 100% sure that
https://github.com/micahflee/onionshare/blob/master/onionshare/hs.py#L217
and
https://github.com/micahflee/onionshare/blob/master/onionshare/hs.py#L116
are safe if a attacker control the directory that will be used for
shutil.rmtree.

I tried to contact upstream 5 months ago without results.

So I guess I can go public and provides a patch once I have a CVE id 
assigned ( or any others kind of way to identify the vuln...)

-- 
Michael Scherer

