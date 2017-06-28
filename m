X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2971" "Wednesday" "28" "June" "2017" "20:33:43" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170628203343.0e36d391@pc1>" "74" "Re: [oss-security] lame: multiple vulnerabilities" nil nil nil "6" "2017062818:33:43" "[oss-security] lame: multiple vulnerabilities" (number mark "U       hanno@hboeck Jun 28   74/2971  " thread-indent "\"Re: [oss-security] lame: multiple vulnerabilities\"\n") "<20170628154335.4f06da8b@cortex.rrz.uni-hamburg.de>" ("<17034856.l0NmUXmGEd@wanheda>" "<20170628154335.4f06da8b@cortex.rrz.uni-hamburg.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15993 invoked by uid 550); 28 Jun 2017 18:33:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15965 invoked from network); 28 Jun 2017 18:33:56 -0000
Date: Wed, 28 Jun 2017 20:33:43 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com,
  "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Message-ID: <20170628203343.0e36d391@pc1>
In-Reply-To: <20170628154335.4f06da8b@cortex.rrz.uni-hamburg.de>
References: <17034856.l0NmUXmGEd@wanheda>
	<20170628154335.4f06da8b@cortex.rrz.uni-hamburg.de>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] lame: multiple vulnerabilities

On Wed, 28 Jun 2017 15:43:35 +0200
"Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de> wrote:

> A number of these occur inside the mpglib part, which is an old fork
> of the mpg123 decoder (extended with some LAME specifics). Can you
> check if they also occur in current mpg123 / libmpg123
> (https://mpg123.org)?

None of Agostinos samples trigger anything in an asan build of mpg123
1.25.0 here. However I was quickly able to get afl to find another bug,
I reported into your bugtracker [1].

It's an out of bounds heap read, the base64 encoded, minimized input
file:
SUQzAzAwAAABAjAwMDAAAAAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAw
MDAwMDAwMDAwMDAwMDAwAAAABTAwMDAwMDAwMDAwAAAABTAwMDAwMDAwMDAwAAAABTAwMDAwMDAw
MDAwAAAABTAwMDAwMDBUMDAwAAAABDAAADA=3D

Address Sanitizer stack trace:
=3D=3D15557=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address 0=
x60d000000333 at pc 0x0000005610b3 bp 0x7ffebe8287f0 sp 0x7ffebe8287e8
READ of size 1 at 0x60d000000333 thread T0
    #0 0x5610b2 in convert_latin1 /mnt/ram/mpg123-1.25.0/src/libmpg123/id3.=
c:980:5
    #1 0x5576b8 in INT123_id3_to_utf8 /mnt/ram/mpg123-1.25.0/src/libmpg123/=
id3.c:309:2
    #2 0x55abed in store_id3_text /mnt/ram/mpg123-1.25.0/src/libmpg123/id3.=
c:274:2
    #3 0x55abed in process_text /mnt/ram/mpg123-1.25.0/src/libmpg123/id3.c:=
368
    #4 0x55abed in INT123_parse_new_id3 /mnt/ram/mpg123-1.25.0/src/libmpg12=
3/id3.c:917
    #5 0x53e74f in handle_id3v2 /mnt/ram/mpg123-1.25.0/src/libmpg123/parse.=
c:1071:8
    #6 0x53e74f in skip_junk /mnt/ram/mpg123-1.25.0/src/libmpg123/parse.c:1=
152
    #7 0x53e74f in INT123_read_frame /mnt/ram/mpg123-1.25.0/src/libmpg123/p=
arse.c:525
    #8 0x574001 in get_next_frame /mnt/ram/mpg123-1.25.0/src/libmpg123/libm=
pg123.c:625:7
    #9 0x574984 in mpg123_decode_frame /mnt/ram/mpg123-1.25.0/src/libmpg123=
/libmpg123.c:861:12
    #10 0x524ff2 in play_frame /mnt/ram/mpg123-1.25.0/src/mpg123.c:739:7
    #11 0x528f97 in main /mnt/ram/mpg123-1.25.0/src/mpg123.c:1363:8
    #12 0x7f9d2db941e0 in __libc_start_main /var/tmp/portage/sys-libs/glibc=
-2.24-r3/work/glibc-2.24/csu/../csu/libc-start.c:289
    #13 0x41af59 in _start (/mnt/ram/mpg123+0x41af59)

0x60d000000333 is located 0 bytes to the right of 131-byte region [0x60d000=
0002b0,0x60d000000333)
allocated by thread T0 here:
    #0 0x4d19a8 in malloc (/mnt/ram/mpg123+0x4d19a8)
    #1 0x55806d in INT123_parse_new_id3 /mnt/ram/mpg123-1.25.0/src/libmpg12=
3/id3.c:744:34
    #2 0x53e74f in handle_id3v2 /mnt/ram/mpg123-1.25.0/src/libmpg123/parse.=
c:1071:8
    #3 0x53e74f in skip_junk /mnt/ram/mpg123-1.25.0/src/libmpg123/parse.c:1=
152
    #4 0x53e74f in INT123_read_frame /mnt/ram/mpg123-1.25.0/src/libmpg123/p=
arse.c:525
    #5 0x574001 in get_next_frame /mnt/ram/mpg123-1.25.0/src/libmpg123/libm=
pg123.c:625:7



[1] https://sourceforge.net/p/mpg123/bugs/252


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
