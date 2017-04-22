X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5943" "Saturday" "22" "April" "2017" "11:02:21" "+0800" "Xiaobo Xiang" "xiangxb2112@gmail.com" "<CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>" "146" "[oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )" "^Cc:" nil nil "4" "2017042203:02:21" "[oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )" (number mark "        xiangxb2112@ Apr 22  146/5943  " thread-indent "\"[oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20455 invoked by uid 550); 22 Apr 2017 11:40:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9513 invoked from network); 22 Apr 2017 03:02:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=D/hSwgXPm/doGH/rk1vvMRaeAwbpNt9S6B2uNWUIHJI=;
        b=SSx8AHbC2DfcXCLXcDTGLfBmUbmffcGCjftz8g7cIMnxNkwU8nQoH7Iye9L6dzeltM
         Ymy+f/zfABFSdWq6jcc+uOo7E26rIUv6C9U1Kp0TF2moFGhTmaz2wqXfh1QUoWLh709J
         H8tIMnbHxK6qigRUYIPKTuR/8KOplrCO4yoYqwQZB30qqdgKqdyyV5grAXH1lhzMmKjD
         QKXAJAwaSA8ejXE56zm7cl6C3x2ctB6majH0OwILRIBnJ6pSNfzyaIN7T9kelxmrUBFt
         Dh9X3sVzBDF2sPGoNbTAMfenPkqimWH1hOQJG1OoDuRYr3R5CTDNkLWUGqGvR3Hv0YaX
         S9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=D/hSwgXPm/doGH/rk1vvMRaeAwbpNt9S6B2uNWUIHJI=;
        b=loZYjqv+Rq5l64klpdmFpjDJRKgqqIW/4Em/QXo7sFEapmdChkpgWB1wmV2NYO0gJm
         YlI4VrM5WXLn3/6ig6pHYkaxoTa9KlBM/iVgpEEF4IIjs758kj6x/M8cAuFB0hLurexm
         k8OCkNbkOoi69yXmFjrVCAKYgAlaUom8G449EvG8dtxrxnfEW8j9xGjL8LkVSWXR7L5g
         KSO1MaHHG7wfJyBkkdjJi/yn1EjUzL4fmHQWc9ZMYC1ak0EMZHA4C99O52zvflFpsjiU
         p1PVDWZ+QzWR8/NGuLFbWU9Q4QdyFOB0HURf2lFE27WussUKYBBW9pobNlUqepitphFT
         f//w==
X-Gm-Message-State: AN3rC/4xXG9QIu3I7Tebax9pYvza4+aL3afMyMRpfjJ9IuNfRqckfI6m
	xfmCXzr0wxY12/tSnJLcFYuiw10+tQ==
X-Received: by 10.202.239.86 with SMTP id n83mr8758723oih.112.1492830141886;
 Fri, 21 Apr 2017 20:02:21 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c096f245134cf054db89af4
Cc: cve-assign@mitre.org
Date: Sat, 22 Apr 2017 11:02:21 +0800
From: Xiaobo Xiang <xiangxb2112@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp
 )
To: oss-security@lists.openwall.com

--94eb2c096f245134cf054db89af4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

There is a infinite recursion in
PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )
In the ReadDocumentStructure function, it calls ReadXRefContents several
time, for exmple in the end of ReadDocumentStructure:.
    try {
        ReadXRefContents( m_nXRefOffset );
    } catch( PdfError & e ) {
        e.AddToCallstack( __FILE__, __LINE__, "Unable to load xref
entries." );
        throw e;
    }

The ReadXRefContents and ReadXRefStreamContents will call each other if it
meet some conditions. Just as below.

void PdfParser::ReadXRefStreamContents( pdf_long lOffset, bool
bReadOnlyTrailer )
{
    m_device.Device()->Seek( lOffset );
    //....
    if(xrefObject.HasPrevious())
    {
        try {
            m_nIncrementalUpdates++;

            // PDFs that have been through multiple PDF tools may have a
mix of xref tables (ISO 32000-1 7.5.4)
            // and XRefStm streams (ISO 32000-1 7.5.8.1) and in the Prev
chain,
            // so call ReadXRefContents (which deals with both) instead of
ReadXRefStreamContents
            ReadXRefContents( xrefObject.GetPreviousOffset(),
bReadOnlyTrailer );
        } catch(PdfError &e) {
            //....
        }
    }
}

void PdfParser::ReadXRefContents( pdf_long lOffset, bool bPositionAtEnd )
{
    pdf_int64 nFirstObject =3D 0;
    pdf_int64 nNumObjects  =3D 0;

    if( !this->IsNextToken( "xref" ) )
    {
//      if( m_ePdfVersion < ePdfVersion_1_5 )
//        Ulrich Arnold 19.10.2009, found linearized 1.3-pdf's with
trailer-info in xref-stream
        if( m_ePdfVersion < ePdfVersion_1_3 )
        {
            PODOFO_RAISE_ERROR( ePdfError_NoXRef );
        }
        else
        {
            ReadXRefStreamContents( lOffset, bPositionAtEnd );
            return;
        }
    }

The crash log is just as follows:

./podofofuzzer: Running 1 inputs 1 time(s) each.
Running: crash-5aac275479284034b46368c836564266b0ed3694
ASAN:DEADLYSIGNAL
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=3D=3D30073=3D=3DERROR: AddressSanitizer: stack-overflow on address 0x7ffc7=
0e74f18
(pc 0x0000004e6119 bp 0x7ffc70e75790 sp 0x7ffc70e74f20 T0)
    #0 0x4e6118  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x4e6118)
    #1 0x8a75c1  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x8a75c1)
    #2 0x4e6efc  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x4e6efc)
    #3 0x7fdbbe094277  (/usr/lib/x86_64-linux-gnu/libstdc++.so.6+0x121277)
    #4 0x61085e  (/home/name/FUZZ-WORKSPACE/podofofuzzer+0x61085e)

when debugging with gdb and checking the stack backtrace, it showed the
program runs out of the stack as below :

#6884 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
(this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
    at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
#6885 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
(this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
/home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
#6886 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
(this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
    at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
#6887 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
(this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
/home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
#6888 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
(this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
    at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
#6889 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
(this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
/home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
#6890 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
(this=3D0x617000000080, lOffset=3D5923, bReadOnlyTrailer=3Dfalse)
    at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
#6891 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
(this=3D0x617000000080, lOffset=3D5923, bPositionAtEnd=3Dfalse) at
/home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
#6892 0x000000000063a434 in PoDoFo::PdfParser::ReadXRefStreamContents
(this=3D0x617000000080, lOffset=3D116, bReadOnlyTrailer=3Dfalse)
    at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:875
#6893 0x000000000063438c in PoDoFo::PdfParser::ReadXRefContents
(this=3D0x617000000080, lOffset=3D116, bPositionAtEnd=3Dfalse) at
/home/name/podofo-0.9.5/src/base/PdfParser.cpp:682
#6894 0x00000000006303bf in PoDoFo::PdfParser::ReadDocumentStructure
(this=3D0x617000000080) at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:3=
37
#6895 0x000000000062e252 in PoDoFo::PdfParser::ParseFile
(this=3D0x617000000080, rDevice=3D..., bLoadOnDemand=3Dtrue) at
/home/name/podofo-0.9.5/src/base/PdfParser.cpp:220
#6896 0x000000000062ce49 in PoDoFo::PdfParser::ParseFile
(this=3D0x617000000080, pszFilename=3D0x8ca380 <.str> "tempinput.pdf",
bLoadOnDemand=3Dtrue)
    at /home/name/podofo-0.9.5/src/base/PdfParser.cpp:164
#6897 0x00000000005cdc65 in PoDoFo::PdfMemDocument::Load
(this=3D0x7fffffffbfe0, pszFilename=3D0x8ca380 <.str> "tempinput.pdf",
bForUpdate=3Dfalse)
    at /home/name/podofo-0.9.5/src/doc/PdfMemDocument.cpp:256
#6898 0x00000000005cd682 in PoDoFo::PdfMemDocument::PdfMemDocument
(this=3D0x7fffffffbfe0, pszFilename=3D0x8ca380 <.str> "tempinput.pdf",
bForUpdate=3Dfalse)
    at /home/name/podofo-0.9.5/src/doc/PdfMemDocument.cpp:102

Thus,causing denial of service.
=E2=80=8B
 crash-5aac275479284034b46368c836564266b0ed3694
<https://drive.google.com/file/d/0B_D2GM9VAVyvanRadmhWd1RKM0U/view?usp=3Ddr=
ive_web>
=E2=80=8B

Best Regards,=E2=80=8B=E2=80=8B
Xiang Xiaobo

--94eb2c096f245134cf054db89af4--
