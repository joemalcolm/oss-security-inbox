X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8262" "Monday" "24" "April" "2017" "10:21:15" "+0200" "Andrej Nemec" "anemec@redhat.com" "<3763aa60-8c4e-b6a0-f9e8-2c7a120989a1@redhat.com>" "202" "Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )" nil nil nil "4" "2017042408:21:15" "[oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )" (number mark "U       anemec@redha Apr 24  202/8262  " thread-indent "\"Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )\"\n") "<CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>" ("<CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22470 invoked by uid 550); 24 Apr 2017 08:21:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22449 invoked from network); 24 Apr 2017 08:21:31 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 13DA4C059743
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx08.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 13DA4C059743
To: oss-security@lists.openwall.com
References: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
From: Andrej Nemec <anemec@redhat.com>
Message-ID: <3763aa60-8c4e-b6a0-f9e8-2c7a120989a1@redhat.com>
Date: Mon, 24 Apr 2017 10:21:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Ep5E6VqegvC5MUPX5JhXm7rUmrPcJCToK"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Mon, 24 Apr 2017 08:21:19 +0000 (UTC)
Subject: Re: [oss-security] CVE Request: podofo: stack overflow in
 PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )

--Ep5E6VqegvC5MUPX5JhXm7rUmrPcJCToK
Content-Type: multipart/mixed; boundary="4SFNj1OLXLbQAiDQcuJ6MrSoCPPnUUiSj";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <3763aa60-8c4e-b6a0-f9e8-2c7a120989a1@redhat.com>
Subject: Re: [oss-security] CVE Request: podofo: stack overflow in
 PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )
References: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
In-Reply-To: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>

--4SFNj1OLXLbQAiDQcuJ6MrSoCPPnUUiSj
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello Xiaobo,

Unfortunately, CVE assignments are not done through this list anymore.
You need to visit [1] and request a CVE by filing out the form. Could
you please look at it and let the list know about the assigned CVE?

Thanks!

Best Regards,

[1] https://cveform.mitre.org/

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA


On 04/22/2017 05:02 AM, Xiaobo Xiang wrote:
> Hi,
>
> There is a infinite recursion in
> PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )
> In the ReadDocumentStructure function, it calls ReadXRefContents several
> time, for exmple in the end of ReadDocumentStructure:.
>     try {
>         ReadXRefContents( m_nXRefOffset );
>     } catch( PdfError & e ) {
>         e.AddToCallstack( __FILE__, __LINE__, "Unable to load xref
> entries." );
>         throw e;
>     }
>
> The ReadXRefContents and ReadXRefStreamContents will call each other if it
> meet some conditions. Just as below.
>
> void PdfParser::ReadXRefStreamContents( pdf_long lOffset, bool
> bReadOnlyTrailer )
> {
>     m_device.Device()->Seek( lOffset );
>     //....
>     if(xrefObject.HasPrevious())
>     {
>         try {
>             m_nIncrementalUpdates++;
>
>             // PDFs that have been through multiple PDF tools may have a
> mix of xref tables (ISO 32000-1 7.5.4)
>             // and XRefStm streams (ISO 32000-1 7.5.8.1) and in the Prev
> chain,
>             // so call ReadXRefContents (which deals with both) instead of
> ReadXRefStreamContents
>             ReadXRefContents( xrefObject.GetPreviousOffset(),
> bReadOnlyTrailer );
>         } catch(PdfError &e) {
>             //....
>         }
>     }
> }
>
> void PdfParser::ReadXRefContents( pdf_long lOffset, bool bPositionAtEnd )
> {
>     pdf_int64 nFirstObject =3D 0;
>     pdf_int64 nNumObjects  =3D 0;
>
>     if( !this->IsNextToken( "xref" ) )
>     {
> //      if( m_ePdfVersion < ePdfVersion_1_5 )
> //        Ulrich Arnold 19.10.2009, found linearized 1.3-pdf's with
> trailer-info in xref-stream
>         if( m_ePdfVersion < ePdfVersion_1_3 )
>         {
>             PODOFO_RAISE_ERROR( ePdfError_NoXRef );
>         }
>         else
>         {
>             ReadXRefStreamContents( lOffset, bPositionAtEnd );
>             return;
>         }
>     }
>
> The crash log is just as follows:
>
> ./podofofuzzer: Running 1 inputs 1 time(s) each.
> Running: crash-5aac275479284034b46368c836564266b0ed3694
> ASAN:DEADLYSIGNAL
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D30073=3D=3DERROR: AddressSanitizer: stack-overflow on address 0x7ff=
c70e74f18
> (pc 0x0000004e6119 bp 0x7ffc70e75790 sp 0x7ffc70e74f20 T0)
>     #0 0x4e6118  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x4e6118)
>     #1 0x8a75c1  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x8a75c1)
>     #2 0x4e6efc  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x4e6efc)
>     #3 0x7fdbbe094277  (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x121277)
>     #4 0x61085e  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x61085e)
>
> when debugging with gdb and checking the stack backtrace, it showed the
> program runs out of the stack as below :
>
> #6884 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
> (this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
>     at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
> #6885 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
> (this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
> /home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
> #6886 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
> (this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
>     at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
> #6887 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
> (this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
> /home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
> #6888 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
> (this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
>     at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
> #6889 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
> (this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
> /home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
> #6890 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
> (this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
>     at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
> #6891 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
> (this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
> /home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
> #6892 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
> (this=3D0x617000000080, lOffset=3D116, bReadOnlyTrailer=3Dfalse)
>     at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
> #6893 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
> (this=3D0x617000000080, lOffset=3D116, bPositionAtEnd=3Dfalse) at
> /home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
> #6894 0x00000000006303bf in PoDoFo::PdfParser::ReadDocumentStructure
> (this=3D0x617000000080) at /home/name/podofo-0.9.5/src/base/PdfParser.cpp=
:337
> #6895 0x000000000062e252 in PoDoFo::PdfParser::ParseFile
> (this=3D0x617000000080, rDevice=3D..., bLoadOnDemand=3Dtrue) at
> /home/name/podofo-0.9.5/src/base/PdfParser.cpp:220
> #6896 0x000000000062ce49 in PoDoFo::PdfParser::ParseFile
> (this=3D0x617000000080, pszFilename=3D0x8ca380 <.str> "tempinput.pdf",
> bLoadOnDemand=3Dtrue)
>     at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:164
> #6897 0x00000000005cdc65 in PoDoFo::PdfMemDocument::Load
> (this=3D0x7fffffffbfe0, pszFilename=3D0x8ca380 <.str> "tempinput.pdf",
> bForUpdate=3Dfalse)
>     at /home/name/podofo-0.9.5/src/doc/PdfMemDocument.cpp:256
> #6898 0x00000000005cd682 in PoDoFo::PdfMemDocument::PdfMemDocument
> (this=3D0x7fffffffbfe0, pszFilename=3D0x8ca380 <.str> "tempinput.pdf",
> bForUpdate=3Dfalse)
>     at /home/name/podofo-0.9.5/src/doc/PdfMemDocument.cpp:102
>
> Thus,causing denial of service.
> =E2=80=8B
>  crash-5aac275479284034b46368c836564266b0ed3694
> <https://drive.google.com/file/d/0B_D2GM9VAVyvanRadmhWd1RKM0U/view?usp=3D=
drive_web>
> =E2=80=8B
>
> Best Regards,=E2=80=8B=E2=80=8B
> Xiang Xiaobo
>


--4SFNj1OLXLbQAiDQcuJ6MrSoCPPnUUiSj--

--Ep5E6VqegvC5MUPX5JhXm7rUmrPcJCToK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY/bV7AAoJEIkERKHVe23aTQ8P/i74/kQqxnRKijIZ4e1vOIs6
7Kkedwil1kXqnRre7wwpmNgU0xX+Qfm0C2Mxw+1KpuPeipr+F/jrNbhx0484GcjW
xQZyd8BFB1hqWpClzNDxf3fbQHo/buAOh0M4zgVQ+a2RH7b48XocKibk+6BU7Umn
J2B0om0k2xcP2e/3Dc4xVunxUh3QPmtQJgEpvR+Btm0fSoVKA6ixJh4Q+8p0d6i4
m+sSIpZL5bvhnxFJcIc6wMPnbrUdk3ROoirDVDBgVi/8z6qpswKN29JJvwH0LN8B
1Dr9nDgfVsoXZho/mt9erBM84X2LRp+NLRS0/bRlGRe/CmYilDTyKBm4hiyaHeMb
NgfL9y43hxpcSDB77DhkSeMXyJdB2irRlKUmpUTsQgJT9PKjdnPa8D+XzpqTMuOR
fci4l50VUwr9SpeXwZKhMqtZ2pkpDvrB8qeTgnx5eNyMu4nOby14oCBAOSaWpjsW
dc2rT+WODzXEcmXIHmvbB5n91lbkC7TEepG4gsXxWx2pC7W+ZBXSy8v+pnoDNvow
7E7k3E7PmQ3YdsF+8meGJlfhugn7ThQGHhFZ1wLCxwz+GVE/mCVMEA9FNI5FVCQ0
lqxt0q0cSs4F9EPxuC+lh85L/BMPKvP9x8Fn19CNK5Z3VfNJNWp1Ow42LQULLK8r
zC/iiKr51BQxjg2Iiq/d
=qoJR
-----END PGP SIGNATURE-----

--Ep5E6VqegvC5MUPX5JhXm7rUmrPcJCToK--
