X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1458" "Tuesday" "30" "June" "2015" "23:30:06" "+0200" "vladz" "vladz@devzero.fr" "<20150630213006.GA2270@debian>" "36" "Re: [oss-security] Question about world readable config files and commented warnings" nil nil nil "6" "2015063021:30:06" "[oss-security] Question about world readable config files and commented warnings" (number mark "        vladz@devzer Jun 30   36/1458  " thread-indent "\"Re: [oss-security] Question about world readable config files and commented warnings\"\n") "<5592A82C.2090301@redhat.com>" ("<559224EC.3080008@redhat.com>" "<20150630060358.GA24238@gremlin.ru>" "<5592A82C.2090301@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9770 invoked by uid 550); 30 Jun 2015 21:30:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9752 invoked from network); 30 Jun 2015 21:30:18 -0000
Message-ID: <20150630213006.GA2270@debian>
References: <559224EC.3080008@redhat.com>
 <20150630060358.GA24238@gremlin.ru>
 <5592A82C.2090301@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5592A82C.2090301@redhat.com>
X-GPG-Key: http://vladz.devzero.fr/key.asc
X-GPG-Fingerprint: 8D21 9F7F ACE6 1E0C 3486 03AD 2B6B EE5E 8F7E 2D3C
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Tue, 30 Jun 2015 23:30:06 +0200
From: vladz <vladz@devzero.fr>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Question about world readable config files and
 commented warnings
To: oss-security@lists.openwall.com


On Tue, Jun 30, 2015 at 08:31:08AM -0600, Kurt Seifried wrote:
> From a developer perspective I somewhat agree, however I'm looking at
> this from a vendor perspective where we do control the chmod, easily
> (RPM spec file).

I don't know if this is relevant, but I also regularly find applications
that, during their installation phases, set the correct permissions to
sensitive files (600 for instance) but in a insecure manner, i.e. they:

    1) create the file (perms will depend on root umask, usually 022)
    2) restrict its permissions (chmod 600)
    3) open the file and write sensitive content in it

I won't paraphrase this post [1], but chmod 600 on a file isn't sufficient
to preserve a file content on a multiuser system: a local user can open the
file in read-only right after 1) to obtain a file descriptor, and use it
for later content disclosure after 3).

We all know that a better way to create the file would be to set the
adequate umask first.  But the above steps can be found in initialization
and installation scripts (I can share a non-exhaustive list if wished).  I
also wouldn't recommend the use of "-m 600" in the "install" command as it
has the same problem:

    # touch f1
    # strace install -m 600 f1 f2
    [...]
    open("f2", O_WRONLY|O_CREAT|O_EXCL, 0644) = 4 // here f2 is readable
    chmod("f2", 0600)                         = 0

Regards,
vladz.

  [1] http://www.openwall.com/lists/oss-security/2013/08/20/13

