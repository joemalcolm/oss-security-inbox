X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1374" "Thursday" "13" "December" "2018" "21:02:12" "+0100" "Yves-Alexis Perez" "corsac@debian.org" "<da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org>" "32" "Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Cc:" nil nil "12" "2018121320:02:12" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "U       corsac@debia Dec 13   32/1374  " thread-indent "\"Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") "<20181212142415.GA11037@openwall.com>" ("<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" "<20181212142415.GA11037@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31747 invoked by uid 550); 13 Dec 2018 20:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30683 invoked from network); 13 Dec 2018 20:02:28 -0000
Message-ID: <da9e29c39fae03caa21b6fa915009b4f7f2ec0cf.camel@debian.org>
In-Reply-To: <20181212142415.GA11037@openwall.com>
References: 
	<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>
	 <20181212142415.GA11037@openwall.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.3-1 
Mime-Version: 1.0
Cc: Jann Horn <jannh@google.com>
Date: Thu, 13 Dec 2018 21:02:12 +0100
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file
 permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Wed, 2018-12-12 at 15:24 +0100, Solar Designer wrote:
> A question to ask may be: out of Linux kernel vulnerabilities being
> patched, are there more high and critical overall severity (e.g., as
> risk impact times risk probability) vulnerabilities found in "too
> recent" kernels than there are high and critical severity untracked
> vulnerabilities (also or instead) affecting "sufficiently old" kernels?

Data collected by Kees and regularly updated might help here. See=20
https://events.linuxfoundation.org/wp-content/uploads/2017/12/Overview-and-=
Recent-Developments-Kernel-Self-Protection-Project_Kees-Cook.pdf#%5B%7B%22n=
um%22%3A22%2C%22gen%22%3A0%7D%2C%7B%22name%22%3A%22XYZ%22%7D%2C0%2C446.4%2C=
0%5D
for the last edition (sorry for the weird anchor, in case it breaks it's on
slide 5)

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlwSusQACgkQ3rYcyPpX
RFvdUwf+J6G9ACV35269DdJSWO27c/LuAhuxxCHbSjEf3EeGamBcEksV6+OysAiv
9oy/iwnk37ksv7ZlRDiJbhIRZQyKWv8vTHx+X0ntgi5MIs31Yby3Q3agL1irW+b+
2DnUoeoZH+RIXk9Tm97XfJTDm9hJere7hwI8jQAUuNf/a2vu9oDlCYnvh5ZRz537
4Q4w2lR03dsRCm8gvDFtbLjYzTu3xoscEkHafxoSbU/7RLkqYAmbU6FhqfZ4MQ9m
Q/oNIDIw/Lh28kByTII98Af6P03td1pS1aPre8KYw62BuJrZ87+z22ehjP7j5srm
l0Qx1W3g6fudzwY4RVTkqtQMyAZ5/w=3D=3D
=3DO/RN
-----END PGP SIGNATURE-----
