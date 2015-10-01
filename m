X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["416" "Thursday" "1" "October" "2015" "10:03:33" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>" "16" "[oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100113:03:33" "[oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" (number mark "        gustavo.grie Oct  1   16/416   " thread-indent "\"[oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17870 invoked by uid 550); 1 Oct 2015 13:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17847 invoked from network); 1 Oct 2015 13:03:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=yunNi0sY9pTZoFx8yU6ezU4NkRlYIM/wKtpjwJ2WIso=;
        b=ho7otaB3nz6f3K8xLFQHrgbyPQCKxSXlC5kjB7WxMtweBQyl58ZvnsvbI4Kx/BXJv/
         IJD/M3t5DJmgwaVfzu+Tdniv1DbR/bp5V2kknUU+gt2d45wnhLmUk5qkhH05c3FNsJPA
         Ar1FTagUSp5H1grNb0U+3sNoMZOR/gyT3IelSC6cOgepPWLNJE/RFvlj1MK2iubbnhom
         elfTG0WN03kumnTk4G6J9DUA8KH3ZHF7omXwfxZH++HcgSyaQ7zRk8pSRNFjndNPwgUw
         fza14H6+UEMKPeE1H2hZpF0Mc2DpuVCocn62LjYrxJT7orEdR7kxb5rgil3imF/us+2J
         NXRA==
MIME-Version: 1.0
X-Received: by 10.112.159.168 with SMTP id xd8mr2815979lbb.118.1443704613793;
 Thu, 01 Oct 2015 06:03:33 -0700 (PDT)
Message-ID: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3d9e6ad465705210aaca3
Date: Thu, 1 Oct 2015 10:03:33 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1
To: oss-security@lists.openwall.com

--001a11c3d9e6ad465705210aaca3
Content-Type: text/plain; charset=UTF-8

Hello,

We found a heap overflow in the gdk-pixbuf implementation triggered by the
scaling of gif file.These issues are only fixed in the recent release of
gdk-pixbuf 2.32.1 but affects older versions (we tested it in a fully
updated Ubuntu 14.04).

These issues were found using QuickFuzz.

Regards,
Gustavo.

--001a11c3d9e6ad465705210aaca3--
