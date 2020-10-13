X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["39562" "Tuesday" "13" "October" "2020" "14:29:12" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20201013122912.GA32635@f195.suse.de>" "895" "[oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" nil nil nil "10" "2020101312:29:12" "[oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" (number mark "U       mgerstner@su Oct 13  895/39562 " thread-indent "\"[oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26459 invoked by uid 550); 13 Oct 2020 12:29:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26441 invoked from network); 13 Oct 2020 12:29:24 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 13 Oct 2020 14:29:12 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20201013122912.GA32635@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wzJLGUyc3ArbnUjN"
Content-Disposition: inline
Subject: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd
 network daemon

--wzJLGUyc3ArbnUjN
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

following is a security review report concerning kdeconnect [1].

[1]: https://community.kde.org/KDEConnect

# 1) Introduction

The SUSE security team noticed that a new network service service
`kdeconnectd` was active by default  in openSUSE Leap 15.2 listening on TCP
and UDP port 1716. `kdeconnectd` is started automatically in the context of
any KDE session and runs with the privileges of the logged in user.

`kdeconnectd` talks to an Android smartphone app. The use cases are, among
others:

- sharing the PC clipboard with the smartphone
- controlling the PC from the smartphone (running commands, controlling inp=
ut)

I conducted an in-depth source code review to make sure that this new
application doesn't introduce remote security issues in default installatio=
ns.
I looked into kdeconnect version 20.08.0. Any source code references stated=
 in
this report relate to this version of the code base.

I only looked into the ethernet networking logic rooted in the source code
class `LanLinkProvider`. There is also a `BluetoothLinkProvider` that might=
 be
affected by similar or additional issues as discussed in this report.

Unfortunately at the moment only the single CVE mentioned in the subject has
been assigned by upstream cumulatively for all the issues mentioned in this
report.

The upstream fixes meantioned in this report and in the upstream security
advisory [2] are available in the upstream version kdeconnect 20.08.2.

[2]: https://kde.org/info/security/advisory-20201002-1.txt

# 2) The `kdeconnect` Network Protocol

This section is only for readers that aren't already familiar with the
basics of the kdeconnect network protocol. Others may skip over to section =
3.

`kdeconnectd` operates both on UDP port 1716 and on TCP port 1716 (possibly
also other TCP port numbers, see section 2.b for details) as a client and a=
s a
server. The UDP port is used to send and receive broadcasts announcing
kdeconnect enabled nodes in the network segment. The TCP port is used to
establish individual node-to-node connections over which the actual
application logic is carried out.

As data exchange format JSON data structures are used.

## a) The UDP Broadcast Protocol

Upon startup `kdeconnectd` sends out a single cleartext broadcast datagram =
on
UDP port 1716 containing a JSON datastructure of type 'kdeconnect.identity'
resembling this one:

```
{
 'body': {'deviceId': '_bd5ad7ad_43d1_434b_ae3a_5b5af224a513_',
          'deviceName': 'user@host',
          'deviceType': 'desktop',
          'incomingCapabilities': ['kdeconnect.lock',
                                   'kdeconnect.mousepad.request',
                                   <...>
                                   'kdeconnect.mpris'],
          'outgoingCapabilities': ['kdeconnect.notification.action',
                                   <...>
                                   'kdeconnect.mpris'],
          'protocolVersion': 7,
          'tcpPort': 1716},
 'id': '1599051054076',
 'type': 'kdeconnect.identity'
}
```

This broadcast message also contains a tcp port number (by default 1716)
announcing at which TCP port `kdeconnectd` is reachable for the main
application protocol.

When `kdeconnectd` receives a broadcast like this from another node on the
network it actively attempts to connect to this node on the announced TCP
port (lanlinkprovider.cpp:236).

## b) The TCP Application Protocol

`kdeconnectd` listens for incoming TCP connections on port 1716. In
case this port is already in use, the daemon attempts to find a higher free
port number in the range [1716, 1764], which is probably also the reason why
the actual port number used is announced in the UDP broadcast messages.

Furthermore the daemon actively connects to the TCP ports announced by other
devices in the network via UDP broadcasts.

The initiator of the TCP connection (client side) initially sends a clearte=
xt
message containing a JSON datastructure of type 'kdeconnect.identity', just
like the one transmitted via UDP broadcasts as described in the previous
section. Afterwards an SSL connection is established (lanlinkprovider.cpp:3=
93
ff for the server side, lanlinkprovider.cpp:282 ff for the client side).

The SSL connection is based on untrusted, self-signed certificates used on
both ends. For yet unknown peers `kdeconnectd` ignores any SSL validation
errors and establishes the SSL connection nonetheless. These connections are
treated as untrusted by `kdeconnectd`. Only trusted devices can access the
actual kdeconnect features of the PC host.

To establish trust, a pairing process can be triggered from either side of
the connection. On the PC side untrusted devices are displayed in a list of
the kdeconnect graphical widget. Each device is identified by a free form
string ('deviceName' as used in the 'kdeconnect.identity' message used in
UDP broadcasts). A user can actively trigger a pairing request for any of t=
he
listed untrusted devices. Then `kdeconnectd` will send out a 'kdeconnect.pa=
ir'
message to the peer device that looks like this:

```
{'body': {'pair': True}, 'id': '1599053939750', 'type': 'kdeconnect.pair'}
```

There is no further communication or authentication required, the device wi=
ll
be treated as trusted by `kdeconnectd` from this point on forward.

A remote device can also actively trigger a pairing request by sending a
message of type 'kdeconnect.pair' to the host PC. In this case the trust is
established via an interactive graphical popup that is displayed in the PC
user's session that asks the user whether to authorize or reject the pairing
request. The free form identification string ('deviceName') will be display=
ed
in the popup. Once the user clicks on "Accept" the device is treated as
trusted from this point on forward.

`kdeconnectd` will store the self-signed SSL certificate of trusted devices=
 in
a local database (landevicelink.cpp:182). When a device using the same
'deviceId' is encountered later on, then the SSL connection is required to
verify against this locally stored certificate (lanlinkprovider.cpp:427,
lanlinkprovider.cpp:293). If this verification succeeds then the device will
be treated as trusted right away.

## 3) Security Issues

For reproducing some of the issues the accompanying script `kdeconnect.py` =
can
be used.

### a) Information Leak of Username and Hostname

The 'kdeconnect.identity' message is always transmitted in cleartext either=
 in
UDP broadcast messages or as initial TCP message before the SSL handshake is
started. The default 'deviceName' field of this message used by `kdeconnect=
d`
is of the form `<user>@<host>`, which leaks information about the logged in
user and the local hostname of the machine. This functionality can be used =
to:

- enumerate all machines in the network segment that have active KDE sessio=
ns
- enumerate the usernames of all these sessions
- the knowledge of the username and hostname could be used to attack other
  network services like SSH or to use them in social engineering attacks

#### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/b279c52101d3f7cc30a2=
6086d58de0b5f1c547fa

### b) Use after Free in LanLinkProvider::connectError()

In lanlinkprovider.cpp:255 an explicit deletion of the socket object is
performed, if an outgoing TCP connection failed:

```
delete socket;
```

The correct way would be to call `QObject::deleteLater()` to cause deferred
deletion. This causes a race condition, because `QSslSocket::connectToHost(=
)`
might not yet have finished running when the socket object is already delet=
ed
in LanLinkProvider::connectError(). This can result in a segmentation fault.
As usual with "use after free" issues, further unspecified impact is possib=
le.

#### Reproducer

```
# this should crash any reachable `kdeconnectd` in the network segment pret=
ty quickly
# specify only a specific host IP instead of 255.255.255.255 if you want to
# avoid affecting the whole network segment.
$ ./kdeconnect.py --send-bcast 255.255.255.255 --deviceid some_new_device -=
-broadcast-DoS
```

#### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/d35b88c1b25fe13715f9=
170f18674d476ca9acdc

### c) 100 % CPU loop reachable via SocketLineReader

After an SSL session is established on a TCP connection, the TCP input data
processing is handed over to a type `SocketLineReader`, a member of the
`LanDeviceLink` type (lanlinkprovider.cpp:537).

`SocketLineReader::dataReceived()` contains a bug when a message without
newline termination is sent by the peer:

```
    while (m_socket->canReadLine()) {
        // ...
    }

    //If we still have things to read from the socket, call dataReceived ag=
ain
    //We do this manually because we do not trust readyRead to be emitted a=
gain
    //So we call this method again just in case.
    if (m_socket->bytesAvailable() > 0) {
        QMetaObject::invokeMethod(this, "dataReceived", Qt::QueuedConnectio=
n);
        return;
    }
```

This causes an infinite signal processing loop resulting in 100 % CPU load =
in
`kdeconnectd`. To trigger this, the peer only needs to send some TCP data
without a terminating newline character. This only works after the initial
'kdenetwork.identity' packet has been exchanged and after the SSL handshake
has completed.

#### Reproducer

```
# this will cause the remote `kdeconnectd` to end up with 100 % CPU load.

# add a suitable kdeconnectd remote IP address here
REMOTE_IP=3Da.b.c.d
$ ./kdeconnect.py --connect-tcp $REMOTE_IP --send-unterminated-ssl-message
```

#### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/721ba9faafb79aac7397=
3410ee1dd3624ded97a5

### d) Lack of DoS Protection Measures

The `kdeconnectd` code doesn't contain any kind of protection measures agai=
nst
denial of service attacks:

#### i) No Upper Limit on Message Sizes

There is no upper limit on the size of messages received over TCP, the
`LanLinkProvider` simply tries to read a newline terminated message
(lanlinkprovider.cpp:383). The underyling QTcpSocket implementation infinit=
ely
reads incoming data and appends it to its internal buffer (a maximum buffer
size is not specified).  Thus if an unauthenticated TCP peer is sending a
infinitely long message without a newline byte appearing, the `kdeconnectd`
will continously allocate memory.

##### Reproducer
```
# this will cause the remote `kdeconnectd` to end up with 100 % CPU and
# an increasingly high amount of memory allocation, until an out of memory
# situation occurs.

# add a suitable kdeconnectd remote IP address here
$ REMOTE_IP=3Da.b.c.d
$ ./kdeconnect.py --connect-tcp $REMOTE_IP --send-overlong-tcp-message
```

##### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/b496e66899e5bc9547b6=
537a7f44ab44dd0aaf38

#### ii) No Upper Limit on Parallel TCP Connections

There is no limit on the number of TCP connections accepted in parallel
and no timeout for unresponsive TCP connections. Therefore unauthenticated
clients of `kdeconnectd` can simply open TCP connections without
transmitting any data. This will cause file descriptor exhaustion and also
100 % CPU load in `kdeconnectd`.

##### Reproducer

```
# When this is finished with creating > 1000 TCP connections you should see
# a lot of open socket file descriptors on the host running `kdeconnectd`
# user $ ls -l /proc/`pidof kdeconnectd`/fd
#
# you should also see high CPU load caused by kdeconnectd

# add a suitable kdeconnectd remote IP address here
$ REMOTE_IP=3Da.b.c.d
$ ./kdeconnect.py --perform-tcp-connect-DoS $REMOTE_IP
```

##### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/ae58b9dec49c809b85b5=
404cee17946116f8a706
https://invent.kde.org/network/kdeconnect-kde/-/commit/5310eae85dbdf92fba30=
375238a2481f2e34943e

#### iii) No Limit on Processed UDP Broadcasts

Also on the UDP broadcast side there are no limits to processing incoming
'kdeconnect.identity' messages. By using different 'deviceId' values
`kdeconnectd` will make a unique entry in an internal QMap data structure
(red-black tree based) for each broadcast message received and attempt an
outgoing TCP connect. Sending a high amount of broadcast messages will cause
high CPU load, high memory allocation, high amount of TCP traffic and will
finally end in an out of memory situation on the host running `kdeconnectd`.

##### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/66c768aa9e7fba30b119=
c8b801efd49ed1270b0a

#### iv) Possible Amplification Attack

`kdeconnectd` actively attempts to establish a TCP connection upon reception
of a UDP broadcast (see section 2.a). This can be used as an amplification
vector to perform a dedicated DoS attack against some other host in the same
network segment. If a larger number of hosts running `kdeconnectd` are
available in the network then a single attacker can send a broadcast message
with a forged IP sender address (IP spoofing). All hosts receiving this
broadcast that run `kdeconnectd` will then attempt to connect to the forged=
 IP
address, causing high load for this IP address. If repeated quickly this can
be used to overload the target host and/or the network segment.

### e) Possibility to Trigger Arbitrary Outgoing TCP Connections in `kdecon=
nectd`

`kdeconnectd` actively attempts to connect to the TCP ports advertised in U=
DP
broadcast messages (as explained in section 2.a). This is a bit of a peculi=
ar
behaviour with a high degree of freedom for attackers. Since the UDP broadc=
ast
message is unauthenticated, IP address spoofing can be applied. An
unauthenticated remote attacker can cause `kdeconnectd` to connect to an
arbitrary IP address in the same network segment on an arbitrary TCP port.

`kdeconnectd` will then send the 'kdeconnect.identity' message to this
ip/port. It is difficult to say what the security implications of this are.
The following items come to mind:

- it can confuse other network services on other hosts, possibly create log
  messages there. These other hosts may not even be reachable by the attack=
er
  due to firewall rules.
- by observing the resulting network traffic an attacker might get knowledge
  about the existence of other hosts or network services on other hosts
  if the host running `kdeconnectd` is treated differently by involved
  firewalls than the attacker.
- if mechanisms like `fail2ban` are used on other hosts in the network then=
 it
  might be possible to add the host running `kdeconnectd` to a blacklist on
  some other machine, by hitting a maximum (connections / per time) limit.

##### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/85b691e40f525e22ca5c=
c4ebe79c361d71d7dc05

### f) Pairing DoS

The successfully established pairing of a legitimate device can be interrup=
ted
by another unauthorized party. To do this the attacker only needs to connect
to `kdeconnectd` using the same 'deviceId' as the victim uses. This
information is readily available, because it is broadcasted in cleartext by
the legitimate device upon startup. Now when the attacker presents an
arbitrary mismatching SSL certificate, the `kdeconnectd` will unpair the
victim's device unconditionally (lanlinkprovider.cpp:352).

#### Reproducer

- In one shell perform a successful pairing against a host running `kdeconn=
ectd`:

```
# add a suitable kdeconnectd remote IP address here
REMOTE_IP=3Da.b.c.d
$ ./kdeconnect.py --connect-tcp $REMOTE_IP --deviceid legit_device
[...]
Do you want to (re-)pair? (y/n)
y
```

- Accept the pairing request on the host running `kdeconnectd` by clicking
  "Accept" in the popup dialog. After this you should receive a pairing
  confirmation message in the shell:

```
{'body': {'pair': True}, 'id': '1599139331920', 'type': 'kdeconnect.pair'}
```

- Now in a second shell emulate an attacking party:

```
$ ./kdeconnect.py --connect-tcp $REMOTE_IP --deviceid legit_device --localc=
ert fakecerts/certificate.pem --privkey fakecerts/privateKey.pem
```

After this you should receive an unpair message in the first shell started
above:

```
{'body': {'pair': False}, 'id': '1599139445990', 'type': 'kdeconnect.pair'}
```

The victim's device will no longer be paired, any active applications within
`kdeconnectd` will be interrupted, upon next connection attempt a new pairi=
ng
will become necessary.

#### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/48180b46552d40729a36=
b7431e97bbe2b5379306

### g) SSL Validation Checks are not Applied During Initial Connection

`kdeconnectd` requires the peer SSL certificate's CN (common name) in the
Subject field to match the 'deviceId' transmitted in the 'kdeconnect.identi=
ty'
message (lanlinkprovider.cpp:479). The reason for this requirement is uncle=
ar
to me since both, the peer's SSL certificate as well as the peer's deviceId
are under attacker control.

When an unpaired device (see pairing process described in section 2.b)
connects to `kdeconnectd` then all SSL verification errors are ignored
(lanlinkprovider.cpp:301,435). An unpaired device can then initiate the
pairing process. If it succeeds and the user accepts the pairing then the s=
ame
TCP connection and same SSL session will continue to be used with the peer
now considered to be trusted. No SSL validation will be performed.

Only during a follow-up connection attempt by the device will SSL validation
errors be detected. This might also affect the cipher requirements setup in
`LanLinkProvider::configureSslSocket()`. If this is the case then a weak SSL
connection might be possible for the initial session of a trusted device.

I did not look very deep into this. Some tests I did acting as a QSslSocket
client towards `kdeconnectd` showed that the selection of ciphers set in
`QSslSocket::setCiphers()` has no influence at all on the SSL handshake and
resulting cipher selection. But I might have made a mistake or misunderstood
something about the related Qt API.

Recommendation: After successful pairing a new SSL session should be
established to verify the peer's certificate. Certain SSL errors should also
be handled for untrusted devices (pretty much all errors except the
SelfSignedCertificate error).

#### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/f183b5447bad47655c21=
af87214579f03bf3a163

### h) Pairing Hijacking is Possible

If a second SSL session is established using the 'deviceId' of an already
connected device, then `kdeconnectd` will replace the existing SSL session =
by
the new SSL session (lanlinkprovider.cpp:535). As described in section 3.f,
the 'deviceId' is readily available from cleartext broadcast messages sent =
by
kdeconnect devices.

This situation allows an attacker to 'hijack' an ongoing pairing request. T=
his
works the following way:

- legitimate device A connects via TCP to a host running `kdeconnectd`. The
  SSL session is established.
- device A sends a pairing request message 'kdeconnect.pair'.
- the host running `kdeconnectd` will present a popup to the interactive us=
er
  asking for confirmation for the pairing request. The user will usually
  require at least a couple of seconds to confirm this request.
- malicious device B connects with the same deviceId as device A but using a
  different self-signed SSL certificate. The existing SSL session from
  legitimate device A will replaced by the new SSL session from the malicio=
us
  device.
- the user accepts the pairing request
- `kdeconnectd` will now enter the SSL certificate of the malicious device
  into its local database and mark the malicious device as trusted. The
  interactive user will see no signs of a second device being present.
  `kdeconnectd` will immediately send out sensitive data like the host's
  clipboard contents to the malicious device.
- The malicious device should now also be able to run arbitrary commands on
  the host running `kdeconnectd` (but I did not test this).

#### Reproducer

- i) First start a pairing request in shell A (emulate the legitimate devic=
e):

```
# add a suitable kdeconnectd remote IP address here
REMOTE_IP=3Da.b.c.d
$ ./kdeconnect.py --connect-tcp $REMOTE_IP --deviceid legit_device
[...]
Do you want to (re-)pair? (y/n)
y
```

- ii) You should now see a popup in the hosts KDE session asking for confir=
mation.
Do *not* accept the pairing yet. Instead connect in shell B (emulate the
malicious device) without request a pairing:

```
$ ./kdeconnect.py --connect-tcp $REMOTE_IP --deviceid legit_device --localc=
ert fakecerts/certificate.pem --privkey fakecerts/privateKey.pem
Do you want to (re-)pair? (y/n)
n
```

- iii) Now you need to confirm the original pairing request triggered in sh=
ell A in
the host's popup window. These steps have to be performed in less than 30
seconds, because there is a pairing timeout of 30 seconds implemented in
`kdeconnectd`.

If performed correctly then the connection in shell A should be terminated
with:

```
error occured The remote host closed the connection
```

while in shell B, without sending out a pairing request, a pairing
confirmation and clipboard contents (among other information) should appear:

```
{'body': {'pair': True}, 'id': '1599141347210', 'type': 'kdeconnect.pair'}
[...]
{'body': {'content': 'secret clipboard content', 'timestamp': 0},
 'id': '1599141347461',
 'type': 'kdeconnect.clipboard.connect'}
```

#### Upstream Fix

https://invent.kde.org/network/kdeconnect-kde/-/commit/48180b46552d40729a36=
b7431e97bbe2b5379306

# 4) Timeline

- 2020-09-07: I've sent a full report to <security@kde.org>
- 2020-10-01: After various discussions upstream asked me to review their
    patches, which I did.
- 2020-10-02: The upstream security advisory [2] was published, the
    fixed version 20.08.2 was released.

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--6TrnltStXW4iwmi0
Content-Type: application/x-bzip2
Content-Disposition: attachment; filename="kdeconnect.tar.bz2"
Content-Transfer-Encoding: base64

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
zHtU/n4TLpgILvOfahQY3vRXKEotdUbSsZg7i7s/WO1UlnCeRXZpNMOzIqa2
+4XtHEi/a9wsjLPjl9+Z9mCpKo6tW6V0O0cEzid9i2JpTCfWrxOa5ylv7PBG
WCkzqtx3ZHDjrpZaQPykXmTQ081+5saQB/yNpm3aqXCAJD6fssU6/lb+dlXf
ClsQXdckuL/pNbjF0pj+nItVJHV9i+jjxKPINeWrIkxTauKykybOR4dEOjxY
xbDokefUbcMpLG5PEe9v6ZkK8CT7b0Hhg3r2qkr7QgIGd5AYAEGJowrgY1Ms
sIEHWHILVQgGh1hOi3po5qG2JSLxmuKfXTwhkU3O7QyMzK60tiiOKdPNJP3R
vq17IAiICmuYZxiuxrVB77b7YIXjZYIZwZO3sEyan1sbanhxsrH/CYCcEtkZ
IX679XgjcP7hYRcs0W8KcLiUFvrvZYn5N70j24fBeQrZI3nstMk549ovbdAz
a3CviJb6mA8unBz8XYlJbHr/HD3Mj1w85zqLpO/1D7QtXtv26tkJI74XGGyb
pXPoe1vWEGJ/qeDM2btzmdqkwhmaSVWfGqjDs473fWflqO8Hdtr1z0l3KVyj
bPwT2LEsSV7hzUcKouQWQ1DJsNRcaM0z6tOkkmexeiLf8o0/n3FA+D4WfZL8
PmfhmnxvyeO3s2Xv979fgjJrcHJtfyF6tAu41XN06kpIHad2KckUHHPuZWH1
QxVd+Vb1im5PteSLTm9g9RXz/b8C3hDPLACDSSxBgCWBopdr1nV5A+W/cCnm
1eixudXbt7mupfLuqv/NH7NYiLgEJMPv9yofKJ6XX6uinymvfdP1DEAcB/Qv
CR+JQ9niMPJRt2jbOOX0LCZlR84wdN902+5HBT4fuElE4A64WDwUzDIBo0Lx
5rl5mgWtR08LVoGGGwaW+SxbMq9BvAoazgWpkHZ6Pk4PJDMhEVxnKgjpvlOg
BQAywgCev3ke8Hl08S6O9O2FGUvXkXSsDMQpTlkQtr+6+BoN7iJv17w/YWEd
CPvbVtnHv3cGIC4zw/WmVgCB209g6QJZx1p40MLheV974yeI7+n1PbhBHs3H
NMUnnxr89qdtsaE9UN54a5b8+imrQj5q3xA/fCMgDY3GAVINJUThDvQYlSmy
5MH2IzW/1AODS70qqPJSbDcukaNZfSLek+koH1nYHsLTTMQex/Pa9Zvd4lly
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
+O3UyXlhqw0xHUDPCyTo1UN55RkoOMOs9Q/NR6nqyQKrEgA80HLFDWTu2Y81
c91mKMO+Pztj9QuSgaeQZz8SmMwWSws6JtO9FdfvJB1mYt2MDo2HK7sHzTfH
jcwgqnzZnH2oT9pg2vHkSiUMu0JGepdJrZWxGQLqQWkJsvmDUZ4ZAgQb4Esz
mN6nCTiglPAno1NV7vBpKWdiZXToQEaFF2R0oUrZi3Gl5mbRkA/X44R9apjn
uS+qdfbltU451huMZUG56leUfMJJSgeb3JQZo3zpdr1WHdQ0axg3cjsRzh8z
e6KkxAnbzj7gQRy4hDA+Z5dYDZ2ztYaD+W7Me/QKqqxkNRaK8buNVXZMe7J6
eEHZcx46x1YGXC47gYVTg7W7ao/JRyleovOvhLm8Iht4N1Hvb4buscW7cpjc
8TsB545oz0lJUbNtlSNN12oPwVtZe+yXbNFzXVnD3DB/H0Av1D6L5+RBZFRl
YoZFALtwAsNYgKAOt70G2fJ7t2AttJR5QpHiMZN+exVQk3fx+KA8r3b0xCdC
TBSSSUmSY6qAqRN4WPsI4/eyEgJpZLMDTpOGGSX2Kji4bGvfGQiFft5HCn8e
Yr28/jgXOI9NWXUvin07yTU5uT/bntV+u+vHc1wZsOolTh8PiucGassqOJX7
fnjS5EljmFFMM/H86PG1wNoOvLm+mnPLp4FMwwi98UgbPNfDgyTrb6F7NW5I
6TAs62S3diWLFFiJhfExvO6qEW3U0EBaVm1/SVXIwWPuhsSdm5iwCNuFrsVi
qMDaIn8yAC0gYlry8U4bDSVQs0tLw/S4aaAipHpm4jIxsUL+GsdAiAqlIXrL
TIy1qsUYlFcDneuK5WW3YvYpda91V+1edXuHUoVPjJN+JKDexFKEZ1UtZoO6
kbEFlsb9Kjp4ZXC5Hk/zvb0x3z7rcY5f2BSaUmTsev3i1n1F9bNHxztEunMn
m/O5QFu0C8/8Acxes1Y3F0g+N77Oz7HGB5aD0MbO5XCytO0SkoEvLSzdz+B4
qFIV6fW6aV/UX+MAPs7qLqqD5q3ju41TDMbrmaRpsYGuadEHAfyX0Q3zwzVH
+SluuGyiptnWh7Fcm7axhP1g72uHfN2xIczlcBpoWFh24H9b9R7/Kl9+l155
kqWrRz74e0bK2HdiBBQsHgsLigxygoCZCEhsm87tnqB2uOwd7mFrQXAwKRMT
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
offP9hyec9B6QSX1i7kinChISq9H/YA=

--6TrnltStXW4iwmi0--

--wzJLGUyc3ArbnUjN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl+FnZgACgkQFMQFyXGS
NVNtAhAArv8wjFdqihpRdYh1x5XBxbtDJYo4niwbaPFIbkrHQX7rHkyFcwkv9Hus
04A1lSrNybNtQjRZ7BOn4k4JcXv4cmAvSwiIM38R/h6DKaA5w0wknJDptG+TO7rH
xwemwdEWFtlaG2jrW7vyvmb9eGhjJ8IrbiiiM+32/Az6hR9OQyVSBbVMVX2L16dK
6DDQMkvje3unQ3d8iZFnezY5oNfxF2ksmjFvNa09vTwd1r42s3y67msu7K6RRYiw
HCwjUPZiuAmxPbe7m2YNNmm5Jgg8j/wpia9J4/2w38Ir6GFAl5frhjUF90jbb9sj
HvVNMqMniK37p0OcWsEuROcwXvtQYBvUzO1hfkqdYX5DL8KFZw1wwus+UBmmSGH0
LdjnxK1DfX9Sj0YeebXkurKENGxBYgzp/RPiiA4gUMdZtinqVIf8mwVi6+Nu8NBY
hVt7X2vhlNzX73IosYOx6p83fQ7EWheOvHoFNbHHwGpJycI58g4I0HihhDX5/H0k
5Sqgj3cN7z9U8drR74NoObeNr4IynwZaioVL7eyvoNC6xEkolsMGszzwYpVL/szD
xzBAZScEDN96NyoUrI3mXW3+ASMNBKvVcL7cl3uBjwf1GEmaMwvZDcVp7SX7KYcz
iA0jg+PFHXPN8o4K6jE4Ib76mIixBdPDZVEcV08B7/nygYeOOkg=
=6pEj
-----END PGP SIGNATURE-----

--wzJLGUyc3ArbnUjN--

