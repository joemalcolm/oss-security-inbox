Received: (qmail 11399 invoked by uid 550); 9 Oct 2023 17:13:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3747 invoked from network); 9 Oct 2023 17:02:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=github.com; s=google; t=1696870914; x=1697475714; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Cir1imCqaKd6QNhm9hrrfn3MSJNVx+XCLKuNd74ydNk=;
        b=iDu0MW0PaKgDs0QS00Y4CSiQxEI+JSADZ85ZgXYL23IT+p+FeQU4vm94w0FOg2ozzs
         8+NVEL4vGR5tuQ7DF4yn8yDGVPsgd3gSrrguuKcGWkqRvbedQGXlmjgaLRHo1PvD79tF
         oYUxsCK/Ydhb5QNQkFyOnDiTwb3fC1WD9IDd/EhwMrk+0orHmMVx2XRi/9f5GmbIGu/e
         xyt/fhIaCCkTQ5tJjOTL6fyVnehe+W8yc10+ylFTFLpEhnHCM3nAJngVUfb8sw8tdlGf
         EO9wNsHnqcRST3UcRxH8RxyoBdDlGPyB2Y0kgoXDxhfDbAJ0T/FDQQnSZjQm4KQnjfkU
         SGzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696870914; x=1697475714;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cir1imCqaKd6QNhm9hrrfn3MSJNVx+XCLKuNd74ydNk=;
        b=HJkl0gP74LDGeTxIPX7pqigWg7EX2HY4dtPDBixtERYVbpOhveZ7mit6ANqzXjGWT/
         AnS1geHJS+dV1+Dc2huN6s+wzVIl4NfNAJFyddvQusowR285o19L1m9CWZuCLxfJmvq9
         yyNNjhxUAGcoOhGHEm3XQwrVK/yKPReCzQ9JZPc3fMKmi8kj7an6Wa/ZCUoCq5qH1ZbL
         iY41U2j4Wnm7cunj7CEq49i2fBYn8+xlgJPI5BxF2+P1AaK/JG7E43QaJrribNVb02si
         vuyLjJ9Fmi8zBJgxWXHOubu94R+pck+ugmbNSE9R7pu1dTsHTtF+4B+6gDxwgl+Azdny
         j6pw==
X-Gm-Message-State: AOJu0Yy9vaRYLuo5hI38aJphAhxEnAiZv7Tu48BrCu9cCIJGAd+3B+d0
	wtczzKfETyFUFrRHjaTg2X3gtGCh9O35+THiiPA7mA+xpsRhkaY2Ubw=
X-Google-Smtp-Source: AGHT+IGdk/ynQ+Sms4rHCZgNeqo9dK7PzoVeNlTz9kDOwrO5gDLynYVFVE5em4/t96KZ0qhcWTWYYHH8s9DQel2svdg=
X-Received: by 2002:a17:90b:4b8b:b0:274:6d36:5b32 with SMTP id
 lr11-20020a17090b4b8b00b002746d365b32mr12322050pjb.30.1696870914011; Mon, 09
 Oct 2023 10:01:54 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Backhouse <kevinbackhouse@github.com>
Date: Mon, 9 Oct 2023 18:00:00 +0100
Message-ID: <CAMmasOPDioavLLakHVfksEfwOqvrvQAPaFob7RP3RbBRjkCTzA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2023-43641: out-of-bounds array access in libcue 2.2.1

Today, in coordination with [Ilya
Lipnitskiy](https://github.com/lipnitsk) (the maintainer of libcue)
and the [distros mailing
list](https://oss-security.openwall.org/wiki/mailing-lists/distros),
the GitHub Security Lab is disclosing
[CVE-2023-43641](https://github.com/lipnitsk/libcue/security/advisories/GHS=
A-5982-x7hv-r9cj),
a memory corruption vulnerability in
[libcue](https://github.com/lipnitsk/libcue). This message is also
be available as a blog post (with images and video):

https://github.blog/2023-10-09-coordinated-disclosure-1-click-rce-on-gnome-=
cve-2023-43641

It=E2=80=99s quite likely that you have never heard of libcue before, and a=
re
wondering why it=E2=80=99s important. This situation is neatly illustrated =
by
xkcd 2347:
https://xkcd.com/2347

libcue is a library used for parsing [cue
sheets](https://en.wikipedia.org/wiki/Cue_sheet_%28computing%29)=E2=80=94a
metadata format for describing the layout of the tracks on a CD. Cue
sheets are often used in combination with the
[FLAC](https://en.wikipedia.org/wiki/FLAC) audio file format, which
means that libcue is a dependency of some audio players, such as
[Audacious](https://audacious-media-player.org/). But the reason why I
decided to audit libcue for security vulnerabilities is that it=E2=80=99s u=
sed
by [tracker-miners](https://gitlab.gnome.org/GNOME/tracker-miners): an
application that=E2=80=99s included with [GNOME](https://www.gnome.org/)=E2=
=80=94the
default graphical desktop environment of many open source operating
systems.[^1] The purpose of tracker-miners is to index the files in
your home directory to make them easily searchable. For example, the
index is used by this search bar:

https://github.com/github/securitylab/blob/3cb0ebc37170149ef5e91a3bd641631c=
4eeedd06/SecurityExploits/libcue/track_set_index_CVE-2023-43641/search-bar-=
screenshot.png

The index is automatically updated when you add or modify a file in
certain subdirectories of your home directory, in particular including
`~/Downloads`. To make a long story short, that means that
inadvertently clicking a malicious link is all it takes for an
attacker to exploit CVE-2023-43641 and get code execution on your
computer:

https://youtu.be/beOwspTnc1Y

The video shows me clicking a link in a webpage[^2], which causes a
cue sheet to be downloaded. Because the file is saved to
`~/Downloads`, it is then automatically scanned by tracker-miners. And
because it has a `.cue` filename extension, tracker-miners uses libcue
to parse the file. The file exploits the vulnerability in libcue to
gain code execution and pop a calculator. Cue sheets are just one of
many file formats supported by tracker-miners. For example, it also
includes scanners for HTML, JPEG, and PDF:

https://gitlab.gnome.org/GNOME/tracker-miners/-/blob/83054c8c145f12c83289e6=
c424f55b87a5b609d9/src/tracker-extract/tracker-extract-html.c
https://gitlab.gnome.org/GNOME/tracker-miners/-/blob/83054c8c145f12c83289e6=
c424f55b87a5b609d9/src/tracker-extract/tracker-extract-jpeg.c
https://gitlab.gnome.org/GNOME/tracker-miners/-/blob/83054c8c145f12c83289e6=
c424f55b87a5b609d9/src/tracker-extract/tracker-extract-pdf.c

I am delaying publication of the proof of concept (PoC) used in the
video, to give users time to install the patch. But if you=E2=80=99d like to
test if your system is vulnerable, try downloading [this
file](https://github.com/github/securitylab/blob/3cb0ebc37170149ef5e91a3bd6=
41631c4eeedd06/SecurityExploits/libcue/track_set_index_CVE-2023-43641/CVE-2=
023-43641-poc-simple.cue),
which contains a much simpler version of the PoC that merely causes a
(benign) crash.

The offsets in the full PoC need to be tuned for different
distributions. I have _only_ done this for Ubuntu 23.04 and Fedora 38,
the most recent releases of [Ubuntu](https://ubuntu.com/) and
[Fedora](https://fedoraproject.org/) at this time. In my testing, I
have found that the PoC works very reliably when run on the correct
distribution (and will trigger a SIGSEGV when run on the wrong
distribution). I have not created PoCs for any other distributions,
but I believe that all distributions that run GNOME are potentially
exploitable.

# The bug in libcue

libcue is quite a small project. It=E2=80=99s primarily a
[bison](https://www.gnu.org/software/bison) grammar for cue sheets,
with a few data structures for storing the parsed data. A simple
example of a cue sheet looks like this:

```
REM GENRE "Pop, dance pop"
REM DATE 1987
PERFORMER "Rick Astley"
TITLE "Whenever You Need Somebody"
FILE "Whenever You Need Somebody.mp3" MP3
  TRACK 01 AUDIO
    TITLE "Never Gonna Give You Up"
    PERFORMER "Rick Astley"
    SONGWRITER "Mike Stock, Matt Aitken, Pete Waterman"
    INDEX 01 00:00:00
  TRACK 02 AUDIO
    TITLE "Whenever You Need Somebody"
    PERFORMER "Rick Astley"
    SONGWRITER "Mike Stock, Matt Aitken, Pete Waterman"
    INDEX 01 03:35:00
```

The vulnerability is in the handling of the `INDEX` syntax. Replacing
one of those `INDEX` statements with this will trigger the bug:

```
INDEX 4294567296 0
```

There are two parts to the problem. The first is that the scanner
([cue_scanner.l, line
132](https://github.com/lipnitsk/libcue/blob/1b0f3917b8f908c81bb646ce42f29c=
f7c86443a1/cue_scanner.l#L132))
uses `atoi` to scan the integers:

```
[[:digit:]]+    { yylval.ival =3D atoi(yytext); return NUMBER; }
```

`atoi` does not check for integer overflow, so it is easy to construct
a negative index. For example, 4294567296 is converted to -400000 by
`atoi`.

The second part of the problem (and this is the actual vulnerability)
is that [`track_set_index`](https://github.com/lipnitsk/libcue/blob/1b0f391=
7b8f908c81bb646ce42f29cf7c86443a1/cd.c#L340-L348)
does not check that `i =E2=89=A5 0`:

```
void track_set_index(Track *track, int i, long ind)
{
    if (i > MAXINDEX) {
        fprintf(stderr, "too many indexes\n");
                return;
    }

    track->index[i] =3D ind;
}
```

If `i` is negative, then this code can write to an address outside the
bounds of the array. Since the value of `ind` is also
attacker-controlled, this is a very powerful vulnerability.

The bug is simple to fix by adding an extra condition to the
if-statement in `track_set_index`. This is the proposed patch:

```
diff --git a/cd.c b/cd.c
index cf77a18..4bbea19 100644
--- a/cd.c
+++ b/cd.c
@@ -339,7 +339,7 @@ track_get_rem(const Track* track)

 void track_set_index(Track *track, int i, long ind)
 {
-       if (i > MAXINDEX) {
+       if (i < 0 || i > MAXINDEX) {
                fprintf(stderr, "too many indexes\n");
                return;
        }
```

# More about tracker-miners

I want to be clear that this bug is _not_ a vulnerability in
tracker-miners. But I have focused on tracker-miners because it
magnifies the impact of this bug due to the way that it automatically
scans the files in your `~/Downloads` directory.

tracker-miners consists of two processes:

1. tracker-miner-fs
2. tracker-extract

The first, tracker-miner-fs, is a background process which is always
running, whereas the second, tracker-extract, is only started on
demand to scan new files. tracker-miner-fs uses
[inotify](https://manpages.ubuntu.com/manpages/jammy/en/man7/inotify.7.html)
to monitor specific directories, such as `~/Downloads`, `~/Music`, and
`~/Videos`. When a new file is created, it launches tracker-extract to
scan the file. tracker-extract sends the results back to
tracker-miner-fs (which maintains the index) and then usually shuts
down again after a few seconds. The vulnerability only affects
tracker-extract, because that=E2=80=99s where libcue is used. Both processes
run as the current user, so this vulnerability would need to be
chained with a separate privilege escalation vulnerability for an
attacker to gain admin privileges.

The vulnerability will not trigger if tracker-miners is not running.
To check if it is, I use the command `ps aux | grep track`. It usually
shows that tracker-miner-fs is running and that tracker-extract isn=E2=80=
=99t.
If _neither_ is running (which I think is rare), then using the search
bar (press the =E2=80=9Csuper=E2=80=9D key and type something) should autom=
atically
restart tracker-miner-fs. As far as I know, tracker-miners is quite
tightly integrated into GNOME, so there=E2=80=99s no easy way to switch it
off. There=E2=80=99s certainly nothing like a simple checkbox in the settin=
gs
dialog. There=E2=80=99s some discussion
[here](https://askubuntu.com/a/1187273) about how to switch it off by
modifying your systemd configuration.

The two-process architecture of tracker-miners is helpful for
exploitation. Firstly, it=E2=80=99s much easier to predict the memory layout
in a freshly started process than in one that=E2=80=99s already been running
for hours, so the fact that tracker-extract is only started on-demand
is very convenient. Even better, tracker-extract always creates a
fresh thread to scan the downloaded file, and I=E2=80=99ve found that the h=
eap
layout in the thread=E2=80=99s malloc arena is _very_ consistent: it varies
between distributions, so, for example, Ubuntu 23.04 has a slightly
different layout than Fedora 38, but on the same distribution the
layout is identical every single time. Secondly, because
tracker-extract is restarted on demand, an attacker could potentially
crash it many times until their exploit succeeds. Due to the
consistency of the heap layout, I=E2=80=99ve found that my exploit works ve=
ry
reliably without needing to use this, but I could imagine an attacker
loading a zip file with thousands of copies of their exploit to
increase their chance of success when the victim unzips the download.

## tracker-miners seccomp sandbox escape

The difficult part of exploiting this vulnerability was finding a way
to bypass [ASLR](https://en.wikipedia.org/wiki/Address_space_layout_randomi=
zation).
But what I _didn=E2=80=99t_ realize when I started writing the PoC, is that
tracker-extract also has a [seccomp
sandbox](https://gitlab.gnome.org/GNOME/tracker-miners/-/blob/83054c8c145f1=
2c83289e6c424f55b87a5b609d9/src/libtracker-miners-common/tracker-seccomp.c)
which is intended to prevent this kind of exploit from working. It was
a nasty surprise when I thought I had all the pieces in place for a
working PoC and it failed with the error message: `Disallowed syscall
"close_range" caught in sandbox`. But I still failed to understand
that I was attempting a sandbox escape here. I just thought I needed
to take a different code path that didn=E2=80=99t use the `close_range`
function. So I tried a different route, it worked, and I didn=E2=80=99t give
it any more thought until the GNOME developers asked how I=E2=80=99d managed
to escape the sandbox. It turned out that I=E2=80=99d discovered the escape
entirely by accident: while I was working on the new route, I
unwittingly made a change to the PoC that solved it. I have since
discovered that I could have got the original PoC working with a
one-line change. I=E2=80=99ll go into more detail on this in a follow-up bl=
og
post when I publish the PoC, but for now I=E2=80=99ll just mention that, in
response to this, [Carlos Garnacho](https://gitlab.gnome.org/carlosg)
has very quickly implemented [some
changes](https://gitlab.gnome.org/GNOME/tracker-miners/-/commit/f0c880a0ec0=
e650dbdc037c59e58e07442f82fef)
to strengthen the sandbox, which will prevent this exploitation path
from working in the future.

# Conclusion

Sometimes a vulnerability in a seemingly innocuous library can have a
large impact. Due to the way that it=E2=80=99s used by tracker-miners, this
vulnerability in libcue became a 1-click RCE. If you use GNOME, please
update today!

I=E2=80=99m delaying the release of the full PoC to give users time to inst=
all
the update, but planning to publish a follow-up blog post soon with
details of how the full PoC works. Save an unpatched VM with Ubuntu
23.04 or Fedora 38 if you=E2=80=99d like to test the full PoC when I release
it.


## Notes

[^1]:
     I currently run Ubuntu 23.04 as my main OS and I _love_ the GNOME
desktop environment.

[^2]:
     The webpage in the video is
[https://bugs.launchpad.net/ubuntu/+source/libcue/+bug/2036595](https://bug=
s.launchpad.net/ubuntu/+source/libcue/+bug/2036595),
which is where I first notified Ubuntu=E2=80=99s security team about this
vulnerability. They suggested that I contact the distros list.
