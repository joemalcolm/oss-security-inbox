X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1143" "Wednesday" "3" "June" "2015" "13:10:43" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150603131043.558df5e8@redhat.com>" "28" "Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" nil nil nil "6" "2015060311:10:43" "[oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" (number mark "        scorneli@red Jun  3   28/1143  " thread-indent "\"Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7\"\n") "<CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>" ("<CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27948 invoked by uid 550); 3 Jun 2015 11:11:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27921 invoked from network); 3 Jun 2015 11:11:05 -0000
Message-ID: <20150603131043.558df5e8@redhat.com>
In-Reply-To: <CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>
References: <CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Wed, 3 Jun 2015 13:10:43 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7
To: oss-security@lists.openwall.com

On Mon, 1 Jun 2015 03:06:57 -0500
Fernando Mu=C3=B1oz <fernando@null-life.com> wrote:

> libwmf is affected by a heap overflow on the function that decodes
> BMP images.
>=20
> WMF files may contain both vector graphics and bitmap components. With
> the attached WMF file, the issue can be reproduced, an overflow
> happens because image_size gets a value of 32, that space is used to
> allocate data->image
>=20

There's another issue related to the RLE decoding. DecodeImage() does
not check that the run-length "count" fits into the total size of the
image, which can lead to a heap-based buffer overflow. I've not
assigned a CVE ID to this (mainly because I'm not sure if this
warrants a new CVE or should be bundled with CVE-2015-0848, so I leave
that up to the CVE experts on the list).

We have some possible fixes in our bug [1], but be cautious - these are
not fully vetted yet. So far, however, they look fine to me.

[1] https://bugzilla.redhat.com/show_bug.cgi?id=3D1227243
--=20
Stefan Cornelius / Red Hat Product Security

Come talk to Red Hat Product Security at the Summit!
Red Hat Summit 2015 - https://www.redhat.com/summit/
