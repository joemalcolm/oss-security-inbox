Received: (qmail 7268 invoked by uid 550); 9 Apr 2024 15:12:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18238 invoked from network); 9 Apr 2024 15:04:23 -0000
Date: Tue, 09 Apr 2024 15:03:54 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Michael Knap <oss-sec@mknap.com>
Message-ID: <XHAS98aPKUDerh5d035-tCHCzxeF93Jefyl0tBSeFqPyA7HmwamYoMEedGe3jKYdZqxPuD7iZ3xwz1q1xKTjrdyAkH28lnhNl8_2nPq9PPg=@mknap.com>
Feedback-ID: 106571945:user:proton
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha512; boundary="------ab5abd9bdc1ca1b234463e86eefa74663dc5d98418bd5a2e727213bc30069411"; charset=utf-8
Subject: [oss-security] CWE-121, CWE-122: libfreeimage 3.40-3.18/19+ buffer overflow

--------ab5abd9bdc1ca1b234463e86eefa74663dc5d98418bd5a2e727213bc30069411
Content-Type: multipart/mixed;boundary=---------------------f4b63f50cc16df873b6ce95bce0fa3d2

-----------------------f4b63f50cc16df873b6ce95bce0fa3d2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

Hello,

I have identified two buffer overflow vulnerabilities in
libfreeimage -> PluginXPM.cpp module, Load function.

Issue reported on 2024-03-28 but not acknowledged by maintainer yet:
https://sourceforge.net/p/freeimage/bugs/355/

CWE-121: Stack-based Buffer Overflow
CWE-122: Heap-based Buffer Overflow (consequence of the first bug)

Technical Details:
The vulnerability is present in the code responsible for parsing color
names from XPM files. Specifically, the buffer char msg[256];
is susceptible to overflow in Load function:

static FIBITMAP * DLL_CALLCONV
Load(FreeImageIO *io, fi_handle handle, int page, int flags, void *data) {
  char msg[256]; // This is overflown.
  FIBITMAP *dib =3D NULL;

  ...// redacted for brevity

  if (!FreeImage_LookupX11Color(clr,  &rgba.r, &rgba.g, &rgba.b)) {
    // Arbitrary length buffer write.
    sprintf(msg, "Unknown color name '%s'", str);
    free(str);
    throw msg;
  }

    ...// redacted for brevity

    return dib;
  } catch(const char *text) {
    // 512-byte buffer allocated on the heap in following function.
    FreeImage_OutputMessageProc(s_format_id, text);

    if( dib !=3D NULL )
      FreeImage_Unload(dib);
    return NULL;
  }
}

A doctored XPM file ("trigger.xpm" attached) with an excessively
long color name can trigger this buffer overflow. Moreover, when msg is thr=
own
and passed to FreeImage_OutputMessageProc (FreeImage.cpp), there exists ano=
ther critical
vulnerability:
This function handles the error message with a dynamically allocated 512-by=
te buffer,
which could also overflow if the error message is too long.
The latter depends on accurately overflown free argument which would lead to
freeing arbitrary memory and subsequently lead to Heap Buffer Overflow when
the msg is thrown and written to a message buffer in FreeImage_OutputMessag=
eProc.


void DLL_CALLCONV
FreeImage_OutputMessageProc(int fif, const char *fmt, ...) {
  // Developer assumes the message is short (my comment).
  const int MSG_SIZE =3D 512; // 512 bytes should be more than enough for a=
 short message
  // redacted for brevity...
  int str_length =3D (int)( (strlen(fmt) > MSG_SIZE) ? MSG_SIZE : strlen(fm=
t) );

  // redacted for brevity...
  for (int i =3D 0, j =3D 0; i < str_length; ++i) {
    if (fmt[i] =3D=3D '%') {
      if (i + 1 < str_length) {
        switch(tolower(fmt[i + 1])) {
          case '%' :
            message[j++] =3D '%';
            break;
          case 'o' : // octal numbers
          {
            char tmp[16];
            _itoa(va_arg(arg, int), tmp, 8);
            strcat(message, tmp);
            j +=3D (int)strlen(tmp);
            ++i;
            break;
          }
          // other cases redacted for brevity...
        };
        } else {
          message[j++] =3D fmt[i];
    }} else {
      message[j++] =3D fmt[i];
    };
  }
  // redacted for brevity...
}

strcat is used to write to message buffer without validating if the message=
 content
exceeds the buffer length.

Impact Analysis:
This vulnerability could allow an attacker to execute arbitrary code or
cause a Denial of Service (DoS) by crashing the application.

Suggested Mitigations:
To address this vulnerability, developers are encouraged to undertake follo=
wing actions:
 - Implement proper bounds checking for all input data, particularly for st=
rings
   derived from file content or user input, to prevent overflow.
 - Replace sprintf with safer string handling functions that enforce buffer=
 size limits,
   such as snprintf, or consider using higher-level string processing mecha=
nisms provided
   by modern C++ standards, which inherently manage memory more safely.

Best Regards,
Michael Knap

-----------------------f4b63f50cc16df873b6ce95bce0fa3d2
Content-Type: image/x-xpixmap; filename="trigger.xpm"; name="trigger.xpm"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="trigger.xpm"; name="trigger.xpm"

LyogWFBNICovCnN0YXRpYyBjb25zdCBjaGFyICpvdXRwdXRfeHBtW10gPSB7
Ci8qIGNvbHVtbnMgcm93cyBjb2xvcnMgY2hhcnMtcGVyLXBpeGVsICovCiIz
MiAxOCAyMDcgMiAiLAoieyAgYyAgQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB
QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQSIsCgovKiBwaXhlbHMgKi8K
ImYiLA==

-----------------------f4b63f50cc16df873b6ce95bce0fa3d2
Content-Type: application/pgp-keys; filename="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"; name="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"; name="publickey - oss-sec@mknap.com - 0xDF4CFAF0.asc"

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgp4ak1FWmhW
WEZCWUpLd1lCQkFIYVJ3OEJBUWRBamNobWFrbXpPRllSOGllTW9pZVl3RHRX
azIyK1A2VkYKQVgvSVVlV3VPZExOSlc5emN5MXpaV05BYld0dVlYQXVZMjl0
SUR4dmMzTXRjMlZqUUcxcmJtRndMbU52CmJUN0NqQVFRRmdvQVBnV0NaaFZY
RkFRTENRY0lDWkRQWmU0WjJSYUdRZ01WQ0FvRUZnQUNBUUlaQVFLYgpBd0ll
QVJZaEJOOU0rdkM4eDhtVGdEVTZmODlsN2huWkZvWkNBQUJrQlFEOUdZS251
Z1hDbGd1TnJNMHYKQlEwL09BNWU2dHpjVWxQSFhZZmRZckZLU1Y4QS8wQU1D
UVVma1VCVzI5NTA2aXlyQTNZNlh0TlpLWCtWCitZRlp0dDNldVUwQ3pqZ0Va
aFZYRkJJS0t3WUJCQUdYVlFFRkFRRUhRQ1dZTEl5QXh0cHZYazJvc1hnNwpq
d05VSlpkUzZjaThWOHcvT3NZQ3hCWlRBd0VJQjhKNEJCZ1dDZ0FxQllKbUZW
Y1VDWkRQWmU0WjJSYUcKUWdLYkRCWWhCTjlNK3ZDOHg4bVRnRFU2Zjg5bDdo
blpGb1pDQUFDSlN3RUE3OHdTcGIxTzFrdHNVU0ttCkxPUU53QjFIRTRiN1JM
dnYyODJaUHdCdmlsY0JBS1podEdNVDVsaGlGb3QyQW9LbktxRnVVSFdXVno3
SwpEYWlJR2ZZRjVhVU4KPXVXWUwKLS0tLS1FTkQgUEdQIFBVQkxJQyBLRVkg
QkxPQ0stLS0tLQo=

-----------------------f4b63f50cc16df873b6ce95bce0fa3d2--

--------ab5abd9bdc1ca1b234463e86eefa74663dc5d98418bd5a2e727213bc30069411
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wnUEARYKACcFgmYVWL0JkM9l7hnZFoZCFiEE30z68LzHyZOANTp/z2XuGdkW
hkIAAOozAPoCAlV41GDjFt8KF7Otk4OIacI88inTh/+o9Th9c9EMOwEAgLCw
CI0YF4rpXWTRVYkATfEvF0+J5umbogJWoFJK+QA=
=c78m
-----END PGP SIGNATURE-----


--------ab5abd9bdc1ca1b234463e86eefa74663dc5d98418bd5a2e727213bc30069411--

