X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2082" "Tuesday" "30" "November" "2021" "21:16:20" "+0100" "Florian Weimer" "fweimer@redhat.com" "<87wnkp8kmj.fsf@oldenburg.str.redhat.com>" "42" "[oss-security] IMA gadgets" "^Date:" nil nil "11" "2021113020:16:20" "[oss-security] IMA gadgets" (number mark "        fweimer@redh Nov 30   42/2082  " thread-indent "\"[oss-security] IMA gadgets\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] IMA gadgets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23653 invoked by uid 550); 30 Nov 2021 20:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23635 invoked from network); 30 Nov 2021 20:16:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638303386;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=LqHauKq9otsLtXqlwulrpLBkv8hkzC/JgQx2UFOdIL4=;
	b=C8vAAOz7vynbjQAjj03ua+6alQl6OwjEJnavwsaT4p00oF2r8O4SmJkzuX3uFlUn0G+fUn
	42F0lwwmE0DqIt1Gdr6/74RMmhbjGu8DyemEvgCvkvcUdsyB4N2CuRD/BtB9P6ZNQZ087o
	lU1SWIpbU/svwX/aN9zyIGYnHBOXSzE=
X-MC-Unique: U-hGCck9NdWoFt7hfEFMNg-1
Message-ID: <87wnkp8kmj.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=fweimer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Date: Tue, 30 Nov 2021 21:16:20 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] IMA gadgets
To: oss-security@lists.openwall.com

There's an idea floating around that you can take an established Linux
distribution, create IMA signatures for all installed files in its
packages, and use those signatures to lock out bad content at run time
using IMA verification in the kernel.

I do not think this works in the sense that it can detect serve for more
than just detecting file corruption (as an unsigned hash would).  First
of all, there is the issue that IMA signatures (at least as they exist
in RPM today) are content-only and do not cover file permissions or file
capabilities.  This means an attacker can turn any binary into a SUID
binary.  The signatures do not cover these file attributes, so they will
still verify.

The signatures do not cover the file names, either.  Therefore, an
attacker can take a file and put it into a difference place in a file
system.  For example, there's a debug-shell.service file that, when
dropped into the right directory, will open a root shell on /dev/tty9.
This may seem a bit silly, but I think the intent behind the IMA
signatures is to combine them with remote attestation, and make
(remote) interaction with devices in places without physical security
trustworthy.

Another example is /usr/share/perl5/vendor_perl/App/cpanminus.pod from a
typical distribution of the App::cpanminus package.  If this is dropped
into /etc/sysconfig/run-parts, after a while, the system will download
untrusted code over the network and execute it, as far as I can see.
(CPAN does not seem to be authenticated.)  The file does nothing when
parsed by perl on the command line, but bash will try to run it and
invoke a cpan shell command that triggers the download and code
execution.  I don't think this kind of file type confusion is addressed
by the proposed trusted_for system call, either.

I'm sure there are many gadgets like this.  These two are just the first
examples I found.

So in short, I don't really see how IMA signatures shipped as part of
all distribution packages, on all files, can provide value beyond that
of the hash that the already contain.

Thanks,
Florian

