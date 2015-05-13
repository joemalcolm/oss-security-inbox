X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6191" "Wednesday" "13" "May" "2015" "10:23:57" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55537A9D.70306@redhat.com>" "172" "[oss-security] QEMU 2.3.0 tmp vulns CVE request" nil nil nil "5" "2015051316:23:57" "[oss-security] QEMU 2.3.0 tmp vulns CVE request" (number mark "        kseifried@re May 13  172/6191  " thread-indent "\"[oss-security] QEMU 2.3.0 tmp vulns CVE request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25646 invoked by uid 550); 13 May 2015 16:24:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25626 invoked from network); 13 May 2015 16:24:12 -0000
Message-ID: <55537A9D.70306@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="B0f9v4DMLUaCmPwe9iU8OBijhuqlGlgHE"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Wed, 13 May 2015 10:23:57 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] QEMU 2.3.0 tmp vulns CVE request
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--B0f9v4DMLUaCmPwe9iU8OBijhuqlGlgHE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So some suspicious looking tmp usage in qemu (I excluded the test
scripts and builds scripts, they were rife with problems so hopefully
people only build in trusted environments).

Additionally there will no doubt be further QEMU issues found in the
next few days/weeks as people start looking, I would ask that this be
handled publicly unless it's Remote Code Exec or equivalent (e.g.
CVE-2015-3456).



=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
http://wiki.qemu-project.org/download/qemu-2.3.0.tar.bz2

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
./roms/u-boot/tools/patman/series.py:
    def MakeCcFile(self, process_tags, cover_fname, raise_on_error):
        """Make a cc file for us to use for per-commit Cc automation

        Also stores in self._generated_cc to make ShowActions() faster.

        Args:
            process_tags: Process tags as if they were aliases
            cover_fname: If non-None the name of the cover letter.
            raise_on_error: True to raise an error when an alias fails
to match,
                False to just print a message.
        Return:
            Filename of temp file created
        """
        # Look for commit tags (of the form 'xxx:' at the start of the
subject)
        fname =3D '/tmp/patman.%d' % os.getpid()
        fd =3D open(fname, 'w')
        all_ccs =3D []
        for commit in self.commits:
            list =3D []
            if process_tags:
                list +=3D gitutil.BuildEmailList(commit.tags,

raise_on_error=3Draise_on_error)
            list +=3D gitutil.BuildEmailList(commit.cc_list,
                                           raise_on_error=3Draise_on_error)
            list +=3D get_maintainer.GetMaintainer(commit.patch)
            all_ccs +=3D list
            print >>fd, commit.patch, ', '.join(list)
            self._generated_cc[commit.patch] =3D list

        if cover_fname:
            cover_cc =3D gitutil.BuildEmailList(self.get('cover_cc', ''))
            print >>fd, cover_fname, ', '.join(set(cover_cc + all_ccs))

        fd.close()
        return fname
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

./roms/u-boot/lib/lzma/import_lzmasdk.sh

#!/bin/sh

usage() {
        echo "Usage: $0 lzmaVERSION.tar.bz2" >&2
        echo >&2
        exit 1
}

if [ "$1" =3D "" ] ; then
         usage
fi

if [ ! -f $1 ] ; then
        echo "$1 doesn't exist!" >&2
        exit 1
fi

BASENAME=3D`basename $1 .tar.bz2`
TMPDIR=3D/tmp/tmp_lib_$BASENAME
FILES=3D"C/LzmaDec.h
      C/Types.h
      C/LzmaDec.c
      history.txt
      lzma.txt"

mkdir -p $TMPDIR
echo "Untar $1 -> $TMPDIR"
tar -jxf $1 -C $TMPDIR

for i in $FILES; do
        echo Copying  $TMPDIR/$i \-\> `basename $i`
        cp $TMPDIR/$i .
        chmod -x `basename $i`
done

echo "done!"
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
./roms/ipxe/src/util/niclist.pl:
'pci-file=3Ds' =3D> \( my $pci_file =3D '/tmp/pci.ids' ),

# Download pci.ids file and parse it
fetch_pci_ids_file($pci_url, $pci_file);
my $pci_id_map =3D build_pci_id_map($pci_file);
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

./net/slirp.c:
    snprintf(s->smb_dir, sizeof(s->smb_dir), "/tmp/qemu-smb.%ld-%d",
             (long)getpid(), instance++);
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
./tcg/tcg.c:
#ifdef DEBUG_JIT
    /* Enable this block to be able to debug the ELF image file creation.
       One can use readelf, objdump, or other inspection utilities.  */
    {
        FILE *f =3D fopen("/tmp/qemu.jit", "w+b");
        if (f) {
            if (fwrite(img, img_size, 1, f) !=3D img_size) {
                /* Avoid stupid unused return value warning for fwrite.  */
            }
            fclose(f);
        }
    }
#endif
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993




--B0f9v4DMLUaCmPwe9iU8OBijhuqlGlgHE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVU3qdAAoJEBYNRVNeJnmTvZkP/iwuAiKYhprkiEw+653MmOLH
5gYj6GE1Og47eeQmiIAO8nvdpwyEs7SMC0AlxpzltRtDmLMBhk9izvTAVRKmbh+9
sxczX4yOkQHxz0HIAvMrE4Urlr5F1qaqQPRopDrMRaRvD2LAyzavVo7tnmobpRL2
IRUbaMLkwbH2Y2mIE/bxaf0bXumd7rK7GjjyT8dBlEdlFqBfstLv264wjasN6Mau
BP3F8kqXPW94Gqr9BbSPXWmrMo/TeyObl3KplUvupwIYwVT9IeqMf4IS1qfecJiZ
M9+k9XAydcSL4G2WisOnFphYDloa+B5F/xxvBDe4WFRM/juEU2u2nlO349k7grXA
nKwzeQ+V7ZeD7VXC4borAKxZ9reYtqL8vnfvq7e6fXrkkxVY/Gwz4yHA9xo94/4t
sHvANy/lGh9rja3IeU+t44UDFnWFr5ccnKzjrzkEaXQNJxREnE2USQnx2YpUy+j8
EEzKJPilq6gdAhZrbEvm3dFpUG66yXBK6Rh0i7E91omg2y9i4jCHnpuouTckmGup
SU4TPUqR+1FKPdG6/DxBhhmsRPrrjBTSEybCGqUbdYwl3B/M7L9OTnuqG4E0X57a
P5XlWWVMfBX0uZpY3QAcfZfjEgut2vZjQuHO4nlzXbBgyswU1LgW5y7toXvhEQX2
+dMLEs+9tt8LN3tJkdk9
=DDBJ
-----END PGP SIGNATURE-----

--B0f9v4DMLUaCmPwe9iU8OBijhuqlGlgHE--
