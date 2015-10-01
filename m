X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["679" "Thursday" "1" "October" "2015" "12:25:28" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdR3bCE75-khvFpqc-RXO16QnJ2+=5Q3S=MApxfvV+Kutg@mail.gmail.com>" "27" "[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100115:25:28" "[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1" (number mark "        gustavo.grie Oct  1   27/679   " thread-indent "\"[oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1\"\n") "<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>" ("<CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4036 invoked by uid 550); 1 Oct 2015 15:25:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4014 invoked from network); 1 Oct 2015 15:25:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=OkrgYsRywgS5O1MUM8LeXe1xMI73ySewz6zSvmolNOE=;
        b=kObBs+O+yQr0KnXGOZ6U5PtcDUaeIrykuFEGFZQQeBJtvmjRxUNf0OnqsANRdboK9i
         61UiWaRzNbh17MvUevaw5fRLP+wZ6hZZwoYfe/q555H0lrr8dab/vABpizd4EFA6Bsfr
         H1dqTXsyb0cktT8/ADed9F5a0aSUy9JntPjMi5KYAbaUAd3lKlDSjyujy7B2n8I8p+8s
         88XCQNuKqMcD4cym7JaZdyu1SHmEPrhs+t57QofJIQs12bgIfg6ipUNHSFf3WuM8uMzu
         kTRwerKBpaTeODduXqKczml/14pLVr1wvGAEkFZZE/ci7WCr0Q08oT/AJQUK8HlcQap+
         FgGA==
MIME-Version: 1.0
X-Received: by 10.112.159.168 with SMTP id xd8mr3109922lbb.118.1443713128625;
 Thu, 01 Oct 2015 08:25:28 -0700 (PDT)
In-Reply-To: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
References: <CACn5sdTCA42QQcgRzw4u6jSVAyXovch8qgG4oAgMm3G0in=hPQ@mail.gmail.com>
Message-ID: <CACn5sdR3bCE75-khvFpqc-RXO16QnJ2+=5Q3S=MApxfvV+Kutg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3d9e6307ef905210ca871
Date: Thu, 1 Oct 2015 12:25:28 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Heap overflow with a gif file in gdk-pixbuf < 2.32.1
To: oss-security@lists.openwall.com

--001a11c3d9e6307ef905210ca871
Content-Type: text/plain; charset=UTF-8

2015-10-01 10:03 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Hello,
>
> We found a heap overflow in the gdk-pixbuf implementation triggered by the
> scaling of gif file.These issues are only fixed in the recent release of
> gdk-pixbuf 2.32.1 but affects older versions (we tested it in a fully
> updated Ubuntu 14.04).
>


If someone needs more details, it was fixed in 2.32.1 with this commit:
https://git.gnome.org/browse/gdk-pixbuf/commit/?id=e9a5704edaa9aee9498f1fbf6e1b70fcce2e55aa



>
> These issues were found using QuickFuzz.
>
> Regards,
> Gustavo.
>

--001a11c3d9e6307ef905210ca871--
