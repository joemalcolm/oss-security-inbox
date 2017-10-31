X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4128" "Tuesday" "31" "October" "2017" "12:48:33" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3-SjDC5=Dq3s19GxY4fwjJEah2-fbNAEp4bpGDUXOGfg@mail.gmail.com>" "113" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "10" "2017103118:48:33" "[oss-security] Fw: Security risk of vim swap files" (number mark "        kseifried@re Oct 31  113/4128  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171031132352.2df6d2ad@pc1>" ("<20171031132352.2df6d2ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3779 invoked by uid 550); 31 Oct 2017 18:48:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3748 invoked from network); 31 Oct 2017 18:48:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=lLt7cGOA6mIp0w9QrD6VowWKZFg4aqP7PY8mlGSjBjs=;
        b=JQSo2HYXnovCy2R8598cESl136xxCo3OMQtrbQMWsMcJ8ZppDcjYTcgJmXIc55K0Bo
         c4BE1IUm1kaMintUuX5ac/JCAwA5h7OLZIw16h21Q1YvxaAcOLWdIuyA9SJ7/gFzKy+r
         bMUwMcIoKNAgQQ0QpvwOnjzSNL6fJ47gcPz1tn/UxpstDNbS7YbdtVJ13uPHnDiGjwoJ
         Wh7GlaE+pQgvUXSn66I5VCrxWHMzq80/SBrCZBzRYK4xEDC//uUeB1Q5ONWb3o+0aMmh
         PNv/rMosgGytMyIMwqXfST41DXtVaVkXk9J6K/u6NxSjxQ4/z9FkfRM6SDIcO2VSesX7
         x8Ig==
X-Gm-Message-State: AMCzsaXRkVVdHhg2eNcRwqPFnYfjNqrJuybhJYxb4/ss7GyjdtJF8l9I
	kCyOV5WqdSsuwRYt91NeanjN24nyG+VZYtJ5U9pcIyk0Awo=
X-Google-Smtp-Source: ABhQp+R4VLTCjvazp+7CxM9Y7eQsltHPFSGWL7Ykr4eNfnnDKclNFbEkLbGyHVEjWYAZVW47Dk0pTzNtO1BvGwfJUmM=
X-Received: by 10.202.191.196 with SMTP id p187mr1395159oif.162.1509475713666;
 Tue, 31 Oct 2017 11:48:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171031132352.2df6d2ad@pc1>
References: <20171031132352.2df6d2ad@pc1>
Message-ID: <CANO=Ty3-SjDC5=Dq3s19GxY4fwjJEah2-fbNAEp4bpGDUXOGfg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113d673cb5fb3d055cdc3344"
Date: Tue, 31 Oct 2017 12:48:33 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security <oss-security@lists.openwall.com>

--001a113d673cb5fb3d055cdc3344
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 31, 2017 at 6:23 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> I just sent this to the vim dev list, but I guess it's interesting for
> oss-security, too.
>
> Begin forwarded message:
>
> Date: Tue, 31 Oct 2017 11:30:50 +0100
> Subject: Security risk of vim swap files
>
>
> Hi,
>
> I wanted to point out an issue here with vim swap files that make them
> a security problem.
>
> By default vim creates a file with the name .filename.swp in the same
> directory while editing. They contain the full content of the edited
> file. This usually gets deleted upon exit, but not if vim crashes or
> gets killed (e.g. due to a reboot).
>

The challenge is that the filename MUST be deterministic otherwise how do
you find it post reboot/crash/etc.

There is a flaw here, it appears on some distros that vim (and emacs) will
ignore a user's umask and go with less restrictive file permissions
(ideally you think vi would use the files existing perms, plus any umask
limitations as expected), for example vim failing:

[kseifrie@localhost vi]$ umask
0007
[kseifrie@localhost vi]$ touch foo
[kseifrie@localhost vi]$ ls -la
total 8
drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
-rw-rw----.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
[kseifrie@localhost vi]$ chmod o+r foo
[kseifrie@localhost vi]$ ls -la
total 8
drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
-rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
[kseifrie@localhost vi]$ vi foo

in another terminal:

[kseifrie@localhost vi]$ ls -la
total 12
drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
-rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
-rw-r--r--.  1 kseifrie kseifrie 4096 Oct 31 10:50 .foo.swp

So vim ignores the umask of the user =3D(.

For example cat (and cpo and tar) work as expected:

[kseifrie@localhost vi]$ umask
0007
[kseifrie@localhost vi]$ rm -rf *
[kseifrie@localhost vi]$ touch foo
[kseifrie@localhost vi]$ ls -la
total 8
drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:49 .
drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
-rw-rw----.  1 kseifrie kseifrie    0 Oct 31 10:49 foo
[kseifrie@localhost vi]$ chmod o+r foo
[kseifrie@localhost vi]$ ls -la
total 8
drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:49 .
drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
-rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:49 foo
[kseifrie@localhost vi]$ cat foo > bar
[kseifrie@localhost vi]$ ls -la
total 8
drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:49 .
drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
-rw-rw----.  1 kseifrie kseifrie    0 Oct 31 10:49 bar
-rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:49 foo

So from a CVE perspective we have a situation where a user has explicitly
set a umask (of say 0007) which is to say they've made a security assertion
of "any file I create I want the rwx permissions for "other" removed" which
vim and emacs (and possibly others) are violating when they create swap
files/backups/whatever. To add insult to injury most other utilities that
create a file (e.g. cp, cat, dd) seem to respect umask.

Please use CVE-2017-1000382 for VIM version 8.0.1187 (and other versions
most likely) ignores umask when creating a swap file
(\"[ORIGINAL_FILENAME].swp\") resulting in files that may be world readable
or otherwise accessible in ways not intended by the user running the vi
binary.

Please use CVE-2017-1000383 for GNU Emacs version 25.3.1 (and other
versions most likely) ignores umask when creating a backup save file
(\"[ORIGINAL_FILENAME]~\") resulting in files that may be world readable or
otherwise accessible in ways not intended by the user running the emacs
binary.


--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d673cb5fb3d055cdc3344--
