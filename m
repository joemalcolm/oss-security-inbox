Received: (qmail 13915 invoked by uid 550); 19 May 2025 07:44:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13887 invoked from network); 19 May 2025 07:44:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1747640668; bh=Bz+aRX82kJp9hS1eHgehTTw7MuLd9pGh7gpdR96aAZc=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type;
	b=Fljh/Fsd368Vvb+cSHfLVA5cP4kLEumXL534GhlHEfwN0hzLDbURFS9QSfcEVKavf
	 rxH4zUiulnaJO062u3cgP+zmHWINUUul5meEyt+0c0ObxGx+EYKPJnSrT3oMuNVyul
	 O87w1A1e7WM8saZqAC83CxpleT2Llnqm8aCLETWM9IgM/WPCAKn6hscGJ1YnwF4CZD
	 c6O+AKEpZIwPtlqXMRxenNdz/PrqwApQUOVhtbLKIPxsQ0FV6hrJbs5JVgW8XLhsb2
	 KNhGpX7Q1XBOykUU79GJ9tcLGWN4nSOKZTlDaubWDMUX647o3kIBxY4oR7FSHwBKps
	 3BsJp+35feBaw==
Original-Subject: Re: [oss-security] CPython CVE-2025-4516: Use-after-free crash
 using bytes.decode("unicode_escape", error="ignore|replace")
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Mon, 19 May 2025 09:44:26 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20250519094426.75e621ca@hboeck.de>
In-Reply-To: <e2ea05d6-55c1-4ebc-9342-953609f90593@oracle.com>
References: 
 <CAADqWPTJ55mGyvm5Qy9BZX0rJ2ESvTvYe=cFtE2Qs_wYJB=w+Q@mail.gmail.com>
	<e2ea05d6-55c1-4ebc-9342-953609f90593@oracle.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/+Q1Zv4kan3Q9bUNoL_xgtj="
Subject: Re: [oss-security] CPython CVE-2025-4516: Use-after-free crash
 using bytes.decode("unicode_escape", error="ignore|replace")

--MP_/+Q1Zv4kan3Q9bUNoL_xgtj=
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

I had reported this to Python a while ago.
I'm attaching my original report below.

--------------------

I stumbled upon a segfault in python that turned out to be a use after
free error. As UAF bugs can lead to memory corruption and potentially
security issues, and as this issue is triggered by input to a very
common function (encode()), reporting this as a security issue, as it
may have larger security implications.

A testcase is attached. The zip attached contains a script
"crashme", which will just read the content of a file as binary data
and then run decode("unicode_escape", errors=3D"ignore") on it
(errors=3D"replace" causes the same issue).

With the sample file large.txt, this segfaults python for me:

./crashme large.txt=20
Segmentation fault

small.txt is a reduced testcase that will not lead to a crash, but with
a python build with Address Sanitizer/ASAN, it will still show a use
after free.

The ASAN error, showing a use after free read in
_PyUnicode_DecodeUnicodeEscapeStateful, is in asan-error.txt.


--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
https://badkeys.info/

--MP_/+Q1Zv4kan3Q9bUNoL_xgtj=
Content-Type: application/zip
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=pyuaf.zip

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

--MP_/+Q1Zv4kan3Q9bUNoL_xgtj=--
