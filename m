X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["44764" "Tuesday" "2" "November" "2021" "13:06:16" "+0100" "Matthias Gerstner" "mgerstner@suse.de" nil "967" "[oss-security] Barrier \"software KVM switch\" multiple remote security issues" nil nil nil "11" nil nil (number mark "U       mgerstner@su Nov  2  967/44764 " thread-indent "\"[oss-security] Barrier \"software KVM switch\" multiple remote security issues\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Barrier \"software KVM switch\" multiple remote security issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27884 invoked by uid 550); 2 Nov 2021 12:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27847 invoked from network); 2 Nov 2021 12:06:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1635854776; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=ygaxmlYbGwPqIkLvIK5qBBweQUtEnnuBJ/ulYDq5Ezc=;
	b=wk5fL4j2N4M7etF2nkbyF47yd5YOa8BYxsu4kOH8j1tB5ObtArPUFYLqeJTlQlaapi6cux
	HoJmj6unNiDiB6lbYFucMhdfJL8UKTpQXE6Q0GKXSZk+6xR4mmW0RxueWvScq/bbqxt3sA
	rLowTQ/86U+havO37eJlm+rQB6q5qD0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1635854776;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=ygaxmlYbGwPqIkLvIK5qBBweQUtEnnuBJ/ulYDq5Ezc=;
	b=DKLm0pVV4rEHm/4wWI/KIZqnHwHU3KBZah2vPoNNr7V4oPWF4NLNp6wy78gtnyiyf1yBEd
	cLJb+Dk/e3YU2ABw==
Date: Tue, 2 Nov 2021 13:06:16 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YYEpuMtRuxJIEF9w@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="P0p1Eegq+XTxl0N8"
Content-Disposition: inline
Subject: [oss-security] Barrier "software KVM switch" multiple remote security issues

--P0p1Eegq+XTxl0N8
Content-Type: multipart/mixed; boundary="zEhoYS4erK8k4EZZ"
Content-Disposition: inline


--zEhoYS4erK8k4EZZ
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

recently the Barrier project [1] published new releases that address a coup=
le
of security issues I reported to them. Following is the full review report I
shared with upstream on 2021-07-30. Attached to this email is a tarball
containing reproducer scripts that are mentioned in the report.

[1]: https://github.com/debauchee/barrier

I. Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Barrier is a software based approach to a "KVM" switch. It allows keyboard
and mouse physically connected to one computer to be shared with other
computers via the network. It is an open source project that has been forked
from the commercial "Synergy" [2] software.

[2]: https://symless.com/synergy

Barrier is implemented in the C++ programming language. The following secti=
ons
give a rough overview of the Barrier design for people that are unfamiliar
with it.

1) Barrier Components
---------------------

Barrier consists of three executables that are all executed with user
privileges in the context of a graphical user session:

- `barriers` is the server side command line executable. It is run on the
  machine that shares its physically connected mouse and keyboard.
- `barrierc` is the client side command line executable. It is used to allo=
w a
  remote server to control the client machine with the server's input devic=
es.
- `barrier` is a graphical user interface to both the server and the client
  aspects of Barrier. It can configure the server mode or run in client mode
  to grant session access to a remote server.

Barrier features cross platform support for Microsoft Windows, Linux and so=
me
BSDs in conjunction with a classical X11 server or MacOS. For the purposes =
of
this review I only looked into the Linux port.

2) The Barrier Network Protocol
-------------------------------

Barrier uses a custom TCP stream based protocol that by default runs over T=
CP
port 24800. Each node attempts to read a complete message from the stream t=
hat
at the lowest level consists of a four byte header containing an unsigned
32-bit integer in network byte order denoting the number of bytes the messa=
ge
payload consists of:

    #########################################################
    # 4-byte length in network byte order # message payload #
    #########################################################

The message payload typically starts with a four character message type fie=
ld
(with the exception of the Hello message). The known message types are found
in source file `src/lib/barrier/protocol_types.cpp`. The message types in t=
he
source code constants are followed by a `scanf`-like syntax denoting any
integer or string parameters that are expected to follow the message type
field.

The details of the parameter handling on the lower level can be found in the
source code functions `vreadf()` for the receiving side and `writef()` for =
the
sending side.

Each individual message type is parsed on the receiving end in the context =
of
a Proxy class instance. The server program starts out with
`ClientProxyUnknown` and later on turns control over to one of
`ClientProxy1_0` to `ClientProxy1_6` depending on the protocol version that=
 is
indicated by a client. The client program uses the `ServerProxy` class to
handle incoming messages received from the server.

### SSL Encryption

The Barrier protocol can run unencrypted and unauthorized using plaintext T=
CP
connections. This approach, by design, is insecure and can only be used in
completely trusted networks.

By default the `barrier` GUI interface preconfigures SSL-based network
operation. For this purpose both the client and server components use
self-signed SSL certificates to create openSSL based connections with each
other. Details of the SSL security will be covered in the review results for
the client and server side individually in sections II. 1a) and II. 2a).

II. Review Results
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Since Barrier is a networking program that grants full user level access to
other machines it has been an interesting target for a security review. For
the purpose of my review I looked into both the client and server side
security of Barrier version 2.3.3 in openSUSE Linux Tumbleweed (see also
openSUSE Bugzilla entry [3]).

For practical testing I wrote prototypical Python scripts (`barrier_client.=
py`,
`barrier_server.py`) that implement part of Barrier's network protocol. Whe=
re
applicable I will point out reproducers based on these scripts. The scripts=
 are
licensed under ISC and can be used or adapted by others to help with
fixing any issues found in this report or to further analyse Barrier's
security. You can find them in the attached tarball file.

[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1188922

1) Client Side Security
-----------------------

### a) SSL Verification

After an SSL based connection has been established with the server process =
the
first thing the client code does is comparing the server's certificate
fingerprint against a local text based fingerprint database in
`$HOME/.local/share/barrier/SSL/Fingerprints/TrustedServers.txt`. This happ=
ens
in `SecureSocket::verifyCertFingerprint()`.

SHA1 fingerprints are used for this purpose which is not consindered state =
of
the art any more especially for certificates that have a large degree of
freedom in its format for performing collision attacks. This should be chan=
ged
to use SHA256 based fingerprints.

When the fingerprint does not match a trusted fingerprint in the local
database, then the SSL connection is immediately terminated by the client
code, so no further attack surface should be available at this stage.

The mechanism to actually trust a server's fingerprint is found in the
`barrier` GUI application. The GUI parses the log output of the `barrierc`
client program and if the log indicates that the server's fingerprint is
untrusted then it presents a popup dialog to the user showing the server's
fingerprint and instructing it to compare it against the server's fingerpri=
nt.
When the `barrier` GUI runs in server mode then the local server's SSL
fingerprint is displayed prominently to the user so it should be fairly cle=
ar
what to do.

The log parsing logic in the GUI component is a bit peculiar (as is also no=
ted
in the comment in `MainWindow::updateFromLogLine()`) but this should not hu=
rt
the involved security.

While the graphical UI provided by `barrier` by default configures SSL
security, the console programs `barrierc` and `barriers` do not use SSL by
default, but only when `--enable-crypto` is passed as a command line switch.
It would be better to make SSL the default there, too. Disabling SSL in the
GUI or on the command line should be warned about clearly.

Once the client trusts the server based on the fingerprint, further security
review of later stages of the protocol are not strictly necessary, since the
client grants the server full control of its graphical session anyway. For
completeness and in the sense of a defense in depth approach I looked a bit
further anyway, as can be seen in the following sections.

### b) High Memory Usage when Server Sends a lot Keepalive Messages

When the server sends a lot of keepalive messages to the client ("CALV"
message type) then a memory leak or delayed deletion of messages in the cli=
ent
causes a significant amount of memory usage over time (it happens rather sl=
ow
though).

### c) Set Options Message without Size Limit

The "DSOP" message type transmits an array of integers to the client. There=
 is
no size limit to this array, which could allow a server to allocate an
arbitrary amount (up to 2^32 - 1 bytes) of heap memory in the client, leadi=
ng
to denial of service. I did not actually test this though.

### d) Message Parsing Results are not Checked

A lot of the messages parsed in the client code (`ServerProxy` class) that =
are
parsed via `readf()` are not checked for the return values. This means if t=
he
protocol is not followed correctly and parsing errors occur, then the logic=
 in
ServerProxy will operate on potentially undefined data.

Example: in `ServerProxy::keyUp()` an error return from
`ProtocolUtil::readf()` is not checked for. If an error occurs then the sta=
ck
variables `id`, `mask` and `button` are unitialized.

2) Server Side Security
-----------------------

### a) SSL Verification (CVE-2021-42072)

Contrary to the client side, the server does not verify client connections =
in
any way. Since the server is taking over control of the client this may seem
enough at first glance. However it means that the SSL connection
does not add any authenticy or authentication for the server side. The serv=
er
process thus provides attack surface to any member of the attached network.

### b) Failure to Complete SSL Handshake

This is not stricly a security issue but a regular bug. Many connection
attempts fail to establish, the server seems to be stuck in an
`SSL_ERROR_WANT_READ` loop resulting from the improper use of non-blocking
sockets [4].

[4]: https://github.com/openssl/openssl/issues/10279

This also creates a high load on the server side so it could be seen as a k=
ind
of denial of service attack vector, too.

This can be tested via the test script, where I added a timeout of 2.5 seco=
nds
for the SSL operation to complete. Every now and then the connection to the
server will fail like this:

    $ barrier_client.py $REMOTE
    /usr/lib/python3.9/ssl.py:1309: _ssl.c:1128: The handshake operation ti=
med out

### c) Missing Limitation of Message Length (CVE-2021-42076)

There is no check against overlong messages being sent by clients, so we can
send up to 2^32 - 1 bytes, causing unauthenticated remote denial of service
via excessive heap memory allocations. Multiple connections can be used to
abuse this in parallel and cause even higher memory allocation, if necessar=
y.

The same should be true to client side message reception only that it is
authenticated via the server's SHA1 fingerprint.

#### Reproducer

Tested against a host with 3 GB of memory:

    $ barrier_client.py $REMOTE --send-infinite-message
    [...]
    Sent 1.51 gigabytes of data
    /usr/lib/python3.9/ssl.py:1173: [Errno 104] Connection reset by peer

Output on the server side:

    $ /usr/bin/barriers -f --no-tray --debug INFO --name myhost \
                        --enable-crypto -c /tmp/Barrier.OIQszt
    [...]
    [2021-07-27T13:03:23] NOTE: accepted client connection

    Killed
    $ dmesg | tail -n 1
    Out of memory: Killed process 4121 (barriers) total-vm:2526100kB, \
                   anon-rss:2334100kB, file-rss:0kB, shmem-rss:0kB, \
                   UID:1000 pgtables:4952kB oom_score_adj:0

### d) The Server does not Correctly Close Connections (CVE-2021-42075)

The daemon does not correctly close client sockets causing permanent file
descriptor exhaustion and thus remote denial of service within a couple of
seconds by just opening and closing connections.

After 1023 file descriptors are open the server will still react to connect=
ion
requests, but will fail to open its own local certificate and thus close
the connection prematurely. This issue could be used as an additional attack
vector during other stages of the protocol to trigger file/socket open
failures with potentially security related effects.

#### Reproducer

On the client side:

    $ barrier_client.py $REMOTE --run-open-close-loop
    Connection nr. 100
    [...]
    Connection nr. 1000
    /usr/lib/python3.9/ssl.py:1309: [Errno 104] Connection reset by peer

On the server side:

    $ /usr/bin/barriers -f --no-tray --debug INFO --name myhost \
                        --enable-crypto -c /tmp/Barrier.OIQszt
    [...]
    [2021-07-27T13:11:47] NOTE: accepted client connection
    [2021-07-27T13:11:47] INFO: OpenSSL 1.1.1k  25 Mar 2021
    [2021-07-27T13:11:47] NOTE: error communicating with new client
    [2021-07-27T13:11:47] INFO: accepted secure socket
    [2021-07-27T13:11:47] INFO: TLS_AES_256_GCM_SHA384 TLSv1.3 Kx=3Dany Au=
=3Dany \
                                Enc=3DAESGCM(256) Mac=3DAEAD
    [2021-07-27T13:12:09] NOTE: new client is unresponsive
    [2021-07-27T13:12:15] NOTE: new client is unresponsive
    [...]

    # in a second shell
    $ cd /proc/`pidof barriers`/fd
    $ ls | wc -l
    1023

### e) SIGSEGV on quick Connection Open/Close Sequence while Sending Hello =
Message (CVE-2021-42074)

When quickly opening and closing socket connections while sending a Hello
message for each session then this will lead to a segmentation fault (proba=
bly
use after free). This allows for a simple way to DoS the barrier server for
an unauthenticated remote client. Further research of the supposed use after
free might show more severe implications in the direction of executing code=
 on
the server.

#### Reproducer

Client side:

    $ barrier_client.py $REMOTE --run-hello-loop
    Running connection loop with Hello exchange
    Remote is barrier 1.6
    /usr/lib/python3.9/ssl.py:1309: [Errno 104] Connection reset by peer

Server side in `gdb`:

    [...]
    [2021-07-16T14:17:21] NOTE: accepted client connection
    [2021-07-16T14:17:21] ERROR: ssl error occurred (system call failure)
    [2021-07-16T14:17:21] ERROR: eof violates ssl protocol
    [2021-07-16T14:17:21] NOTE: client "testclient" has disconnected
    [2021-07-16T14:17:21] DEBUG: Closing socket: 556C21A0

    Thread 3 "barriers" received signal SIGSEGV, Segmentation fault.
    [Switching to Thread 0x7ffff6cef640 (LWP 5429)]
    0x0000555555604010 in ?? ()
    (gdb) bt
    #0  0x0000555555604010 in ?? ()
    #1  0x00007ffff7cca311 in bio_call_callback (b=3D<optimized out>,
        oper=3D<optimized out>, argp=3D<optimized out>, len=3D<optimized ou=
t>,
        argi=3D<optimized out>, argl=3D<optimized out>, inret=3D<optimized =
out>,
        processed=3D0x7ffff6ced9a0) at crypto/bio/bio_lib.c:61
    #2  0x00007ffff7ccf373 in bio_write_intern (b=3D0x7ffff006b670, \
                data=3D0x7ffff0070e93, dlen=3D30, \
                written=3Dwritten@entry=3D0x7ffff6ced9a0) \
        at crypto/bio/bio_lib.c:349
    #3  0x00007ffff7ccf423 in BIO_write (dlen=3D<optimized out>, \
                data=3D<optimized out>,
        b=3D<optimized out>) at crypto/bio/bio_lib.c:363
    #4  BIO_write (b=3D<optimized out>, data=3D<optimized out>, dlen=3D<opt=
imized out>)
        at crypto/bio/bio_lib.c:355
    #5  0x00007ffff7f402b9 in ssl3_write_pending (s=3Ds@entry=3D0x7ffff0068=
ef0,
        type=3Dtype@entry=3D23, buf=3Dbuf@entry=3D0x7ffff0015d80 "", len=3D=
len@entry=3D8,
        written=3Dwritten@entry=3D0x7ffff6ceeb18) at ssl/record/rec_layer_s=
3.c:1154
    #6  0x00007ffff7f46ad9 in do_ssl3_write (s=3Ds@entry=3D0x7ffff0068ef0,
        type=3Dtype@entry=3D23, buf=3Dbuf@entry=3D0x7ffff0015d80 "",
        pipelens=3Dpipelens@entry=3D0x7ffff6ceeb40, numpipes=3D1,
        create_empty_fragment=3Dcreate_empty_fragment@entry=3D0, \
                written=3D0x7ffff6ceeb18)
        at ssl/record/rec_layer_s3.c:1115
    #7  0x00007ffff7f46da5 in ssl3_write_bytes (s=3D0x7ffff0068ef0, type=3D=
23,
        buf_=3D0x7ffff0015d80, len=3D<optimized out>, written=3D0x7ffff6cee=
ca0)
        at ssl/record/rec_layer_s3.c:620
    #8  0x00007ffff7f55a33 in SSL_write (s=3D<optimized out>, buf=3D<optimi=
zed out>,
        num=3D<optimized out>) at ssl/ssl_lib.c:1974
    #9  0x00005555555cd53c in SecureSocket::secureWrite (
                wrote=3D<synthetic pointer>: 0,
                size=3D8, buffer=3D0x7ffff0015d80, this=3D0x5555556c23b0)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/net/SecureSocket=
.cpp:295
    #10 SecureSocket::doWrite (this=3D0x5555556c23b0)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/net/SecureSocket=
.cpp:244
    #11 0x00005555555c7bb2 in TCPSocket::serviceConnected (this=3D0x5555556=
c23b0,
        job=3D<optimized out>, read=3Dtrue, write=3D<optimized out>, \
                error=3D<optimized out>)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/net/TCPSocket.cp=
p:559
    #12 0x00005555555c2089 in TSocketMultiplexerMethodJob<TCPSocket>::run (
        this=3D<optimized out>, read=3D<optimized out>, write=3D<optimized =
out>,
        error=3D<optimized out>)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/./lib/net/TSocketMul=
tiplexerMethodJob.h:78
    #13 0x00005555555c5e8b in SocketMultiplexer::serviceThread (this=3D0x55=
555562f270)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/net/SocketMultip=
lexer.cpp:219
    #14 0x00005555555cbb2e in Thread::threadFunc (vjob=3D0x55555562f3c0)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/mt/Thread.cpp:157
    #15 0x0000555555578750 in ArchMultithreadPosix::doThreadFunc (thread=3D=
0x555555630120,
        this=3D0x7fffffffd998)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/arch/unix/ArchMu=
ltithreadPosix.cpp:705
    #16 ArchMultithreadPosix::threadFunc (vrep=3D0x555555630120)
        at /usr/src/debug/barrier-2.3.3-1.7.x86_64/src/lib/arch/unix/ArchMu=
ltithreadPosix.cpp:685
    #17 0x00007ffff7859259 in start_thread (arg=3D0x7ffff6cef640) at pthrea=
d_create.c:481
    #18 0x00007ffff77812b3 in clone () at ../sysdeps/unix/sysv/linux/x86_64=
/clone.S:95

### f) Knowing a Valid Client Name Allows Information Leaks and Server Mani=
pulation (CVE-2021-42073)

Any client can connect to the server process without any end user visible s=
ign
on the server side. The client can choose an arbitrary protocol version whi=
ch
results in the corresponding `ClientProxy1_X` class being instantiated, for
X in the range of 0..6. This allows for many different attack angles for ea=
ch
of the minor protocol versions that are difficult to keep track of given the
overloading of individual protocol handling functions by the different proxy
classes that inherit from the next lower proxy class, respectively.

In the initial Hello message the client specifies its name as a free form
string. This name must match one of the configured client names on the serv=
er
(processing of this starts in `ClientProxyUnknown::handleData()`). If the
client is unknown to the server then the session will be terminated with an
"EUNK" error reply. If the client of the given name is already connected, t=
hen
an "EBSY" error reply is sent.

By default, newly added clients in the `barrier` GUI application on the ser=
ver
side get assigned the name "Unnamed". When an attacker knows a valid client
name then it can specify this name in its Hello message and will be able to
enter a fully active session state. In this state the client can receive in=
put
device events from the server, claim the clipboard or even inject arbitrary
new clipboard content on the server.

Relying on a piece of simple string label information for limiting access to
the server is not enough security-wise. Client names might be left unchanged
by users ("Unnamed") or they might be derived from network hostnames that a=
re
visible in cleartext when listening in on the network (e.g. DNS requests, D=
HCP
requests etc).

#### Reproducer

Supposing the default client name "Unnamed" is configured on the server a
valid reproducer looks like this one the client:

    $ ./barrier_client.py vm-tw --client-name Unnamed \
        --send-clipboard "test content" --minor-version 6

This should result in a valid session being established and the string "test
content" being written to the server's clipboard.

### g) Mismatched free / delete / delete[]

According to some tests using `valgrind` the memory management in the conte=
xt
of the EventQueue during connect/disconnect cycles is sometimes inconsisten=
t.

    =3D=3D5773=3D=3D Mismatched free() / delete / delete []
    =3D=3D5773=3D=3D    at 0x484117B: free (in /usr/libexec/valgrind/vgprel=
oad_memcheck-amd64-linux.so)
    =3D=3D5773=3D=3D    by 0x131590: UnknownInlinedFun (Event.cpp:88)
    =3D=3D5773=3D=3D    by 0x131590: UnknownInlinedFun (Event.cpp:77)
    =3D=3D5773=3D=3D    by 0x131590: EventQueue::loop() (EventQueue.cpp:129)
    =3D=3D5773=3D=3D    by 0x143C94: ServerApp::mainLoop() (ServerApp.cpp:7=
90)
    =3D=3D5773=3D=3D    by 0x1445E0: ServerApp::runInner(
        int, char**, ILogOutputter*, int (*)(int, char**)) (ServerApp.cpp:8=
34)
    =3D=3D5773=3D=3D    by 0x128CDD: UnknownInlinedFun (App.cpp:109)
    =3D=3D5773=3D=3D    by 0x128CDD: main (barriers.cpp:56)

    =3D=3D5773=3D=3D  Address 0x6e81c10 is 0 bytes inside a block of size 3=
2 alloc'd
    =3D=3D5773=3D=3D    at 0x483EF2F: operator new(unsigned long)
        (in /usr/libexec/valgrind/vgpreload_memcheck-amd64-linux.so)
    =3D=3D5773=3D=3D    by 0x13690D: UnknownInlinedFun (Server.cpp:351)
    =3D=3D5773=3D=3D    by 0x13690D: ServerApp::handleClientConnected(
        Event const&, void*) (ServerApp.cpp:262)
    =3D=3D5773=3D=3D    by 0x12965A: EventQueue::dispatchEvent(Event const&)
        (EventQueue.cpp:282)
    =3D=3D5773=3D=3D    by 0x131579: EventQueue::loop() (EventQueue.cpp:128)
    =3D=3D5773=3D=3D    by 0x143C94: ServerApp::mainLoop() (ServerApp.cpp:7=
90)
    =3D=3D5773=3D=3D    by 0x1445E0: ServerApp::runInner(
        int, char**, ILogOutputter*, int (*)(int, char**)) (ServerApp.cpp:8=
34)
    =3D=3D5773=3D=3D    by 0x128CDD: UnknownInlinedFun (App.cpp:109)
    =3D=3D5773=3D=3D    by 0x128CDD: main (barriers.cpp:56)

More thorough tests of Barrier using valgrind and other memory checking
utilities (e.g. `-fsanitize=3Daddress`) should be performed to find invisib=
le
errors in the network processing code.

The EventQueue mechanism seems especially hard to follow in my opinion, and
makes reading the code difficult, because the code flow is goto-like by the
use of weakly typed events that follow a custom scheme as opposed to e.g. t=
he
Qt library event mechanism.

### h) Statically Allocated Objects in Session Handling

In some places statically allocated objects are reused possibly between
different sessions. For example in `FileChunk::assemble()` and
`ClientProxy1_6::recvClipboard()`.

Session specific data should always be kept in session related contextual
data, not in global data structures.

### i) DFTR File Transfer Message

DFTR for sending files once more allows to allocate a large amount of heap
memory. The Server class only processes the data when `--enable-drag-drop`
is passed on the command line, but for Linux it is hard-disabled, because it
is unsupported. Otherwise the data would be stored somewhere on the server
probably (could play into item 2f) on supported platforms).

### j) DCLP Processing in IClipboard::unmarshall() is Unsafe

The processing of DCLP messages in `IClipboard::unmarshall()` is not safe
against crafted / corrupted data. The function will read past the end of the
receive buffer (`numFormats` is not sanitized), resulting in a segfault, ma=
ybe
also in an information leak, if the unauthorized client can retrieve the
clipboard "content" back (this could weaken e.g. ASLR, stack canary protect=
ion
etc.).

3) Summary
----------

It is clear that the security emphasis in Barrier lies on the verification =
of
the server towards the client. This is natural given that the client hands
over graphical session control to the server. Since the server also offers a
rich API towards clients it is necessary to perform some form of proper mut=
ual
authentication, however. Fingerprints should be upgraded to SHA256 to avoid
the now weak SHA1 digest algorithm.

Defense in depth needs to be improved by diligently parsing incoming messag=
es
and avoiding races. The event queue mechanism seems overly complex and old
school to me, which could be one of the reasons for some of the issues on
the server side, because the call structure, number of threads and
multithreading guarantees etc. are not very clear from reading the code.

Given the current state of the software I would consider it a major security
risk running the Barrier server in any network that is not completely trust=
ed.

4) Action Items / Recommendations / Upstream Fixes
--------------------------------------------------

- `barriers` needs to verify the authenticity of connecting clients (items =
2a,
  2f). This got addressed via upstream PR#1346 [5].
- For checking SSL certificate fingerprints SHA256 should be used (item 1a).
  This got addressed via upstream PR#1343 [6].
- Maximum message size limits should be enforced (items 1c, 2c, 2i). This g=
ot
  addressed via upstream PR#1347 [7].
- Maximum receive buffer / message backlog should be enforced (item 1b)
- Cleanly close socket file descriptors on the server side (item 2d). This =
got
  addressed via upstream PR#1350 [8].
- Fix race condition (?) to avoid invalid memory access (item 2e). This got
  addressed via upstream PR#1351 [9].
- Parsing errors should be diligently checked for (item 1d)
- Out of bound memory access needs to be prevented (item 2j)
- Non-blocking operation of SSL sockets needs to be fixed (item 2b)
- Apply quality assurance by using tools like Valgrind, Address Sanitizer
  (item 2g). In the long term maybe refactor / improve the EventQueue
  mechanism.
- Remove hacky static variables (item 2h)

[5]: https://github.com/debauchee/barrier/pull/1346
[6]: https://github.com/debauchee/barrier/pull/1343
[7]: https://github.com/debauchee/barrier/pull/1347
[8]: https://github.com/debauchee/barrier/pull/1350
[9]: https://github.com/debauchee/barrier/pull/1351

Upstream told me that the remaining recommendations will be worked on during
the next months. Upstream release v2.4.0 [10] contains all mentioned fixes
including incompatible ones (using SHA-256 fingerprints, authenticating
clients). Upstream release v2.3.4 [11] contains only the backward compatible
fixes and thus still no client authentication. Updating to version v2.4.0 is
thus strongly recommended.

[10]: https://github.com/debauchee/barrier/releases/tag/v2.4.0
[11]: https://github.com/debauchee/barrier/releases/tag/v2.3.4

6) Timeline
-----------

- 2021-07-30: report shared with upstream, I offered an embargo of maximum =
90
  days according to the openSUSE security policy.
- 2021-08-02, 2021-08-03: initial discussions about the project structure a=
nd
  who of the maintainers can take care of the issues.
- 2021-08-16: one of the upstream developers confirmed his willingness to
  address the issues, no clear publication date could be established.
- 2021-10-08: in coordination with upstream I obtained CVEs from Mitre for =
the
  most serious findings and communicated them to upstream. It has become
  apparent by now that the full 90 days embargo period will be required.
- 2021-10-27: With the maximum embargo period ending we agreed on publicati=
on
  in the following days. Upstream providing new releases with the most
  pressing fixes.

Barrier upstream obviously suffers from a lack of developer resources. I wa=
nt
to thank upstream developer Povilas Kanapickas for investing the effort to =
at
least fix the more serious findings and for providing releases before the e=
nd
of the maximum 90 days embargo period.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev

--zEhoYS4erK8k4EZZ
Content-Type: application/octet-stream
Content-Disposition: attachment; filename="barrier_scripts.tar.gz"
Content-Transfer-Encoding: base64

H4sIAAAAAAAAA+w8a3PaSLbzmV/RQ2oLyAgZME4c15C9BOOYGhsygOdRmRTV
SI3RWkhsSzLmunx/+z2nW4+WkLAncWbq3o12x0A/zrP7vLqVNb2bXdvunNqz
JaMm4989/9OA59WrV+ITnuwndLa/a7abjcZRs/FajGu2j5qt766/Ai07T+D5
lANK7rr+vnGP9WeZ+z/yHLWI4a5WzPE7TbPVpK22aRpvGDt60zhst4yF+eoN
ezNn9JC+ft0+bs1f0+PS303zt+f5Hv3a8q1rx+Xs6+GQ+79dvP+bO/v/sNFu
fveXbKL/8P0/m623BjWWbDb7tq//A59xv3t62ddX5lfE8cj+b7YOX2f3f+uw
3fi2//+CZ8o833Kuie+6tgd/CbtbM25hQEA2lr8k/pKRd5Rzi3HysfmJrLnr
u4ZrE+qYON5kK9fxfE59VvKYEXDL3xLL8wLmEcshlg8fq7XNECL1LdfRyXRp
eWRJPTJnzCEbmOHDJ8DauPyG0GtqAcBShPSWcQ+mkZZ+CP8rlYCIE7L0/bV3
cnAA3msZzHUIYQ5MNqcBGDJ2MJczS6Xf3YA4jJmEkgW1uL0lnBnI2Yetv3Sd
QyDQZ3zNGfxF/DxwkF+PEc/g1tr3AF2X+CAiMplcEINx31pYBrAquF9z6xa/
37AtoRzabA4hNHDvGHZgAtpQgJZXkvCQdYYD4T/HJd6aGRa1gah/BxYXEvLI
wuViSgpbJBsEGAvGX1KfDMiN426Iu9DJSBBPDNtCFj3LZCB9UAWg8kEMBvM8
yrcIy2NAPS0pGOLZHuMgcHV2SJ0pFZ4g2Fg2LALbc0sgdONGdE3Ou02ygPWE
UgXhAl1yiio5qV/Qie0awL1JfTqnIHN3UfI5bEdAJakA8f/d2+P//RPulZlU
qr7efgUcaA9fvz4qsP+Hh4ft3fyv3Xr1zf7/Bc+L7w8Cjx/MLedgLYxi6UXp
BekG8JWfkEvqgy0CS/0edqPvgE0VvbDxxcYG6+C5ATdgg7toLzxiW2BfPdjB
gWMyfiKGDyY9ciHbxe+eu95y63rpk6pRI61Gq6mRydWkTy4uemLAB8ZX4EHQ
6IOxCjymAfz1ViMr17QW8AmW6ADMpGmB37HmARpIScvC36BtRRtKnS2AWgd8
7YJtEZYYWvHTDXyyYIJctMbzLbnmFByBqaFzu7XQcgvbipaLzt1bIFsQIIkG
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
giAIgiAIgiAIgiAI8l/6C1l86WwAyAAA

--zEhoYS4erK8k4EZZ--

--P0p1Eegq+XTxl0N8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmGBKbgACgkQFMQFyXGS
NVPouhAAzk/BpOkw2WKosglm9MRHAKYIVIzH22JOr4+yMkbuCcvuxUqL9daYqLs9
tRElpmSOU/oUc8MOhsbfFrrnla2FT1z8hv9zJOqhBRnJ1gxHVD1ii8kPa/lMWVhL
HkkfX05XcWqDZV/QqptXfZUSgiIfjrdcvvTcmVefe/TFdQDRabgW8Lw9I8K/KGba
s9YhjZVPJCRdJJhii9mgY1o/BFlgqP5xH2gZnnrUTIsuBAC4c7+XOgUV289OW145
9M12P96YSqa0M4q6TtL1zMrqF2Jq7SsaGbd4omjFDrFwL7JYh66oszI1iEhG6eN4
CY+IQ2GZHwqyGiQ+GvUMQ0N4tcyy2SAN4chD658XcKrKSb30rL1eguUVM2X7qgB1
mf2yOoF5mx5zJjmdo4HX9Oyacbjk7mIRLvHtugknvXa8hQleNp3cAEI4CzXnRWyc
kAdTb5DNkPtqy/osGml8BBp8zK6CmLmws93BIbVq0QMXZkgeZesbrm+47fdvWo3V
d7gH0dFKw/aEsUqpyPWhjP+muBRDvZIElrzdGQbmUStBkx6yOnRNFuhUlnwXQUZh
xQ8bjtBTpMLoTGLilHwTOPc3lCTJUjDLskaOYo1g2A+LGKq+mk8xfVTc1jkMhrGe
EspktWGLa5fh7OcNx5mQc5+PA8yQl+xGywXqP1yFMGEwuTbEAQE=
=mFW0
-----END PGP SIGNATURE-----

--P0p1Eegq+XTxl0N8--

