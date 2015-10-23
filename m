X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1500" "Friday" "23" "October" "2015" "15:15:03" "-0700" "Russ Allbery" "eagle@eyrie.org" "<87io5xdyfs.fsf@hope.eyrie.org>" "32" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102322:15:03" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        eagle@eyrie. Oct 23   32/1500  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>" ("<20151021153633.GA2430@boyd>" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" "<13512806.1ZGcyoO27t@sarpedon>" "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23723 invoked by uid 550); 23 Oct 2015 22:15:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23705 invoked from network); 23 Oct 2015 22:15:16 -0000
In-Reply-To: <CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
	(Robert Watson's message of "Fri, 23 Oct 2015 03:01:46 -0400")
Organization: The Eyrie
References: <20151021153633.GA2430@boyd>
	<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
	<13512806.1ZGcyoO27t@sarpedon>
	<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
Message-ID: <87io5xdyfs.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Fri, 23 Oct 2015 15:15:03 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: Robert Watson <robertcwatson1@gmail.com>

Not to beat a dead thread, but no one seems to have given a specific
example.

Robert Watson <robertcwatson1@gmail.com> writes:

> If the user unpacking the tar does not have write access to the target
> directory of the symlink, won't the write of that file fail?

> If the unpacking user *does* have write access to the symlink target
> directory, but the file already exists in that directory, however the
> user does not have write-access to that file, won't the write fail then
> as well?

Imagine that you're unpacking a distribution tarball of some software in
your home directory to take a look at it, and that distribution contained
the file ../../.bashrc.  You don't want it to be able to overwrite your
.bashrc; consider the interesting things that it could do with creative
aliases, such as emailing the contents of any file you cp or rm to some
random email address.

That's an example for an individual user.  If you're unpacking things as
root (more typical for the BusyBox use case), there are much worse things
that one can do, such as overwriting /etc/shadow with known hashes or
replacing /usr/sbin/sshd with a version that has a back door.

That's why tar programs work hard to keep the contents below the directory
into which they were unpacked, and require that you unpack from / (or use
some equivalent, like -C /) if you really want to give the archive
unlimited write access to the file system.

-- 
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
