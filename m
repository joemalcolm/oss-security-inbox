X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1727" "Monday" "5" "December" "2016" "17:17:20" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<8accbcde112d4796bdfff54c6e587908@imshyb02.MITRE.ORG>" "44" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor" nil nil nil "12" "2016120522:17:20" "[oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor" (number mark "U       cve-assign@m Dec  5   44/1727  " thread-indent "\"[oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor\"\n") "<alpine.LFD.2.20.1612060051070.20462@wniryva>" ("<alpine.LFD.2.20.1612060051070.20462@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28030 invoked by uid 550); 5 Dec 2016 22:17:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28006 invoked from network); 5 Dec 2016 22:17:32 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liq3ea@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1612060051070.20462@wniryva>
Message-ID: <8accbcde112d4796bdfff54c6e587908@imshyb02.MITRE.ORG>
Date: Mon, 5 Dec 2016 17:17:20 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: display: virtio-gpu: memory leakage while updating cursor

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator built with the Virtio GPU Device emulator support is vulnerable
> to a memory leakage issue. It could occur while updating the cursor data in
> update_cursor_data_virgl.
> 
> A guest user/process could use this flaw to leak host memory bytes, resulting
> in DoS for a host.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-11/msg00029.html

>> if the 'width'/ 'height'
>> is not equal to current cursor's width/height it will return
>> without free the 'data' allocated previously

Use CVE-2016-9846.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/display/virtio-gpu.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYReVlAAoJEHb/MwWLVhi26K4QAIEOb2gsY0jWd9UGFd7PT27w
03JwlZZKo8DxKTVE/YV2uVCNRG6kplIIZeAAJe64MytSFL2hnAzd3Mm7uamZUTKZ
Q0GxRK6ruTrziVeHWgg+xAy4KWiD3KBoAbxVbgW7qmnXAw4ML3IKJ9R7SJFmGhzH
MUMIMJlhvXy8ngYsRwtcgfpiahKTN4YeYxk0MxqNIDZmROsnbrMsuASpg8jLKcXh
hyygf17M7Wd42Go3C/BDaVn91numOlgJxPVnPv6VhD7oXrM+1iNIbw29UMqVUH5I
yMkLB6Dd2iM/hiQIirohtn7B4mX7OgiP2j5eiu38MRP6ZaVblTfFsb3M2XJkl3/v
ukhw4zaPbnzB7ANBG8Q0aABCnnDAtJSR7hDd0emvu8WxgT6ub37iDY4oz0Xlxxqr
QeE0QCC33I932WGdWBjAf77bZ7QficjL6HXevMFiiPQYAiXb4CV400N2lLLr2dJY
SVYuFCtEvBk2yrc5kyPMmo0s8kMSfPj/0GwR03960iNlQD9dHYl7N5QMuv3AqnDF
AlK+zO/bgGuKy9/tdNH/io03rx9PnxOn5NjX2/TYWEaOV3z9hhpfSfjPAn5vsHNR
slC1L7YwPehS66LRc5uUqJNUtIeKqV0E5OWvR0pUDvXpLZim0trm9AbVStgSkA6u
JsxYW7rXQSTapsyPSGTr
=HX47
-----END PGP SIGNATURE-----
