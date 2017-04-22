X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["501" "Saturday" "22" "April" "2017" "13:46:35" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<7429505.9S0h3zJD4P@arcadia>" "12" "Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)" "^Cc:" nil nil "4" "2017042211:46:35" "[oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)" (number mark "        ago@gentoo.o Apr 22   12/501   " thread-indent "\"Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)\"\n") "<CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>" ("<CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1637 invoked by uid 550); 22 Apr 2017 11:46:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1613 invoked from network); 22 Apr 2017 11:46:54 -0000
Message-ID: <7429505.9S0h3zJD4P@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.29; x86_64; ; )
In-Reply-To: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
References: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: Xiaobo Xiang <xiangxb2112@gmail.com>
Date: Sat, 22 Apr 2017 13:46:35 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)
To: oss-security@lists.openwall.com

On Saturday 22 April 2017 11:02:21 Xiaobo Xiang wrote:
> There is a infinite recursion in
> PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )
> In the ReadDocumentStructure function

I found it too time ago, but since upstream was unresponsive about....I didn't 
investigate, and then I didn't know if it has the same root cause of:
https://blogs.gentoo.org/ago/2017/02/01/podofo-infinite-loop-in-podofopdfpagegetinheritedkeyfromobject-pdfpage-cpp/

-- 
Agostino Sarubbo
Gentoo Linux Developer
