X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12924" "Tuesday" "18" "May" "2021" "16:03:17" "+0000" "Unparalleled IT Security Research" "info@unparalleled.eu" nil "324" "[oss-security] libx11 API Protocol Command Injection" nil nil nil "5" nil nil (number mark "U       info@unparal May 18  324/12924 " thread-indent "\"[oss-security] libx11 API Protocol Command Injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libx11 API Protocol Command Injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22262 invoked by uid 550); 18 May 2021 16:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10028 invoked from network); 18 May 2021 16:10:37 -0000
From: Unparalleled IT Security Research <info@unparalleled.eu>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="----- =_aaaaaaaaaa0"
Date: Tue, 18 May 2021 16:03:17 +0000
Message-ID: <1344-1621353797.024973@P5sK.WRwe.lknU>
Subject: [oss-security] libx11 API Protocol Command Injection

------- =_aaaaaaaaaa0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello list,

Due to missing request length checks in libX11 injection of X
protocol commands is possible, e.g. by using long color names
in color lookup API calls. The color names in some cases may
be (remotely) attacker controlled, e.g. when xterm receives OCS
(operating system command sequences) from an SSH session to
a compromised server or a careless "tail -f" on a log file containing
OCS. A crafted OCS color name can be used to disable X server
authentication, mess up the keyboard layout, ...

Luckily only very few data flow pathes were found to trigger
such bogus color lookup calls. Color specifications in PDF, HTML,
SVG, ... were not suitable to reach the API in a problematic way
for those applications tested.

See the attached UNPAR-2021-1 advisory or the blog entry describing
how exploitation works in detail:

https://unparalleled.eu/blog/2021/20210518-using-xterm-to-navigate-the-huge=
-color-space/


Kind regards,

| |  DI Roman Fiedler
| /  roman.fiedler at unparalleled.eu  +43 677 63 29 28 29
/ |  Unparalleled IT Services e.U.     FN: 516074h           VAT: ATU750505=
24
| |  https://unparalleled.eu/          Felix-Dahn-Platz 4, 8010 Graz, Austr=
ia

------- =_aaaaaaaaaa0
Content-Type: text/plain; name="advisory-unpar-2021-1.txt";
	charset="us-ascii"
Content-Description: advisory-unpar-2021-1.txt
Content-Disposition: attachment; filename="advisory-unpar-2021-1.txt"
Content-Transfer-Encoding: quoted-printable

libx11 API Protocol Command Injection
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Advisory:     UNPAR-2021-1
Component:    libx11
Vendor:       X.Org Foundation (https://x.org/)
Version(s):   unclear, maybe since X10R2 or X10R3 [1] (Jan, Feb 1986)
Weakness(es): Inappropriate Encoding for Output Context (CWE-838)
CVE:          CVE-2021-31535
CVSS:         Base score 9.3: AV:L/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H
Author:       Roman Fiedler


Summary:
=3D=3D=3D=3D=3D=3D=3D=3D

The X Window System is a client-server based windowing system
common on Unix-like systems. Using the communication protocol
defined by the X protocol specification enables clients to perform
output of graphical data, receive keyboard and mouse input, change
shared properties affecting window manager behaviour.

To ease development of graphical client software, libX11 [2]
provides a C-API for invoking X server functions remotely. The
libX11 library itself makes use of the XCB library (X protocol
C-language Binding) [3] to encode the data structures for transport
and to facilitate transmission of requests, parsing of responses.

The libX11 request "XLookupColor" intended for server side color
lookup contains a flaw allowing to a client to send color name
requests with a color name longer than the maximum size allowed
by the protocol and also the maximal packet size for normalsized
packets. The user-controlled data exceeding the maximum size
is then interpreted by the server as additional X protocol requests
and executed, e.g. to disable X server authorization completely.

Timeline:
* 20210212: Contacted XOrg and Xterm
* 20210316: Refined XOrg patch available
* 20210326: Mitigation on xterm side in patch #367 [4]
* 20210518: Disclosure=20


Details:
=3D=3D=3D=3D=3D=3D=3D=3D

The X Window System Protocol specification, release 6.8 [5],
page 72 and 168 defines a request and encoding to query the server
for the color specification of a given color name and the closest
specification supported by the hardware. This function was maybe
historically intended for optimizing color palette use while
full 16-bit RGB color hardware was not available or to improve
optimal color selection for ancient monitors.

The protocol encoding of the LookupColor request is:

byte(s) value          meaning
1       92             opcode
1                      unused
2       3+(n+p)/4      request length
4       COLORMAP       cmap
2       n              length of name
2                      unused=20
n       STRING8        name
p                      unused, p=3Dpad(n)

As seen the name length may not exceed 2^16 bytes, the request
length itself 2^18 bytes. The code of the Xlib client API function
does not honor that:

35 Status
36 XLookupColor (
37         register Display *dpy,
38         Colormap cmap,
39         _Xconst char *spec,
40         XColor *def,
41         XColor *scr)
...
81         n =3D (int) strlen (spec);
82         LockDisplay(dpy);
83         GetReq (LookupColor, req);
84         req->cmap =3D cmap;
85         req->nbytes =3D n;
86         req->length +=3D (n + 3) >> 2;
87         Data (dpy, spec, (long)n);
88         if (!_XReply (dpy, (xReply *) &reply, 0, xTrue)) {

Therefore providing a color name longer than 2^18 bytes will
overflow both the name length and request length fields. Thus
the server will parse and execute a lookup request shorter than
intended by the client. The remaining unprocessed color name
data is then immediately executed as additional request(s) due
to the asynchronous nature of the the protocol.


Impact:
=3D=3D=3D=3D=3D=3D=3D

When triggering an X client application to perform a LookupColor
request with a crafted color name, protocol command injection
will result. The impact of this is from loss of procotol reading
frame, thus client application abort when the synchronization
error is detected (DoS) to deactivation of X server access control.
When the later happens, the attacker takes full control of the
graphics server communication including keyboard and mouse input
data and therefore can instruct other X applications, e.g. graphical
terminals to execute arbitrary keyboard input (RCE).


Vulnerable Systems:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As the vulnerability is triggered by a client application submitting
overlong color names to Xlib but there is no common pattern,
why or how an application would do that, the number of vulnerable
configurations is hard to estimate. Even for a plain Debian codebase
search for XLookupColor [6] there are more than 200 hits, some
of them being not applications but libraries or components used
in more complex software, e.g. the mono environment. Following
two examples illustrate, how different an attack path can be:

1) xterm:

xterm supports operating system command sequences (OCS) [7] to
change the background or font color. Unlike other requests, e.g.
to modify window properties, color requests are not deemed risky
and therefore are executed by xterm. By adding a crafted OCS e.g.
to a logfile that is then mindlessly displayed by plain "cat"
(a user error) but also when connecting via SSH to a remote and
maybe less trusted server, that prints the malicious OCS embedded
in remote ".profile" or ".bashrc", the OCS will inject X protocol
data on the LOCAL host running xterm, even when X forwarding
is disabled for SSH.

The tool "enjoy-all-the-colors.py" [8] demonstrates such an attack,
where the injected command will disable X server authorization
completely. Afterwards an attacker being able to reach one X
server control socket, e.g. UNIX-domain "/tmp/.X11-unix/X0" or
TCP port 6000 (when X server was started without "-nolisten tcp"),
can then take full control of the screen session of the currently
connected user. The effect on the X server can be seen running
"xhost" before and after invoking "enjoy-all-the-colors.py".

2) Modification of ".Xdefaults":

Adding malicious color names as generated by "enjoy-all-the-colors.py"
to the .Xdefaults causes applications processing such settings
to execute injected X commands on startup. This can be shown e.g.
by setting the property "x11-ssh-askpass.Background" and then
run "/usr/lib/ssh/x11-ssh-askpass":

$ python3 -c 'print("x11-ssh-askpass.Background:\tAAAA" + "A"*(1<<18))' >> =
.Xdefaults
$ /usr/lib/ssh/x11-ssh-askpass --help
Warning: Color name "AAAAAA...
X Error of failed request:  BadValue (integer parameter out of range for op=
eration)
  Major opcode of failed request:  65 (X_PolyLine)
  Value in failed request:  0x41
  Serial number of failed request:  16
  Current serial number in output stream:  16


To detect entrypoints or make it easier to estimate if an application
is vulnerable, the "x-proto-sniffer.py" [9] was created. It intercepts
X requests, downgrades the connection, e.g. by disabling the shared
memory extension, to ease following the command flow and watches
out for e.g. XColorLookup requests. Due to its invasive nature,
the behaviour of the subject under test is modified, the X application
may react flaky and thus the results may only give hints to dig
deeper but they shall not been seen as an audit report declaring
an application to be secure.


Mitigation:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

While fixes are not applied yet, xterm should not be used to
display less trusted data, e.g. from SSH connections to less
trusted remote machines.

To avoid attacks via .Xdefaults on kiosk type machines, where
graphical user has no permission to execute arbitrary operating
system commands or sometimes not even to send hardware keyboard
keystrokes, the .Xdefaults must not be modifiable by the user.
But also changing of "HOME" environment variable to an untrusted
location has to be prevented.


Fix:
=3D=3D=3D=3D

x.org provided patches to refuse processing of request data longer
than the maximum request size and return 0 (color not found). See
commit 8d2e02ae650f00c4a53deb625211a0527126c605 in [12].

In parallel xterm patch #367 [4] disables processing of nearly
arbitrary long OCS strings, thus preventing remote X command
injection via e.g.  SSH even on systems with Xlib not (yet) patched.


Proof of Concept:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The tool "enjoy-all-the-colors.py" [8] creates an xterm OCS sequence
containing a color name, that when sent via Xlib XLookupColor
will be seen as 3-4 different requests:

* a (truncated) XLookupColor request
* two XQueryTextExtents requests of different size consuming
  most of the remaining color data
* the start of an "SetAccessControl" command with the complete
  request data frame not consisting only of color name data but
  also the first few bytes of the next successive non-rogue client
  request. Only the data of the next request contains the required
  bytes otherwise forbidden in the color name that are needed
  to form a sane "SetAccessControl" comand to disable authorization.

See [10] for more information on the attack method itself.


Notes:
=3D=3D=3D=3D=3D=3D

=46rom historic perspective it would be interesting, from when
on the bug was really exploitable. The code in "XGetColor.c"
of [1] seems vulnerable. The source code comment is older,
the copyright seems to have been added 1985 already, so maybe
X10R2 or older. As a 256kb long color name is not a big thing
nowadays, other parts of the historic X protocol implementation
may have caused memory allocations of such size to fail or not
to be processed in an exploitable way due to other limits.

Therefore a software stack as described in [11] would be interesting
to test X server behaviour in realistic 1985/1986 environment.
There was not way found yet to get hold of such a stack with
acceptable effort yet.


Credits:
=3D=3D=3D=3D=3D=3D=3D=3D

Thanks to Thomas Dickey to add mitigation code to xterm by shortening
color name length before passing it on to Xlib and x.org developers,
especially Matthieu Herrb for analyzing the problem on Xlib side
and providing patches not only for the XLookupColor vector but
also other similar requests, even when no way of exploitation
is known for those yet.


Revision History:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* 20210518: UNPAR-2021-1 advisory released


References:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1] https://www.x.org/releases/X10R3/ (source comment of XGetColor.c
    may indicate file was already present in previous release)
[2] https://en.wikipedia.org/wiki/Xlib
[3] https://en.wikipedia.org/wiki/XCB
[4] https://invisible-island.net/xterm/xterm.log.html
[5] https://www.x.org/releases/current/doc/xproto/x11protocol.pdf
[6] https://codesearch.debian.net/search?q=3DXLookupColor&literal=3D1
[7] https://en.wikipedia.org/wiki/ANSI_escape_code#OSC_(Operating_System_Co=
mmand)_sequences
[8] https://unparalleled.eu/blog/2021/20210518-using-xterm-to-navigate-the-=
huge-color-space/enjoy-all-the-colors.py
[9] https://unparalleled.eu/blog/2021/20210518-using-xterm-to-navigate-the-=
huge-color-space/x-proto-sniffer.py
[10] https://unparalleled.eu/blog/2021/20210518-using-xterm-to-navigate-the=
-huge-color-space/
[11] https://retrocomputing.stackexchange.com/questions/3069/what-software-=
stack-could-i-use-to-get-x10-the-version-of-x-before-x11-up-and
[12] https://gitlab.freedesktop.org/xorg/lib/libx11

------- =_aaaaaaaaaa0--

