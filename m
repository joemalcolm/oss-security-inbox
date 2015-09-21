X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2274" "Monday" "21" "September" "2015" "12:02:10" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>" "62" "[oss-security] DoS in libtiff" nil nil nil "9" "2015092115:02:10" "[oss-security] DoS in libtiff" (number mark "        gustavo.grie Sep 21   62/2274  " thread-indent "\"[oss-security] DoS in libtiff\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11748 invoked by uid 550); 21 Sep 2015 15:02:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11544 invoked from network); 21 Sep 2015 15:02:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=nZ7BJsJJnThvpy+vBpu8j8Tu1kQcwRaMJI4CbBUCCkM=;
        b=F3TTBHO8aCN3kiCaECVUbhfVrP1fEBo3uIvF6UPzExIBlKzhHwGHZ9DXVqS1khWqJw
         bWnSo1mTyPmAkJ5fCJIqJsTFoVp5bcKa6mkz+pP+mQiDG2YPc3DLt4q1p2kNdat+Z9Zr
         Tr/xv8xdvD7uXiwgtqsytRQjF2lXlUdtEcs4YeSAPyV+t2XnqG9uAwjlEYGNzvvdE38x
         aHXKxM6zs66G7XqSKpvvmPQYJl5LAs+gK7EtbnTS7t9htelx44RV30Xb0lLmMHhUJcz/
         OTofZEgCH1Ht2VNDLF/pD1S/0DgV9d46xO0DomNuc58wvLTvsXZqSJId6Pgbxg9c8b+1
         9u4Q==
MIME-Version: 1.0
X-Received: by 10.152.6.133 with SMTP id b5mr7621056laa.98.1442847730242; Mon,
 21 Sep 2015 08:02:10 -0700 (PDT)
Message-ID: <CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>
Content-Type: multipart/mixed; boundary=089e01493fa86d90f90520432a27
Date: Mon, 21 Sep 2015 12:02:10 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] DoS in libtiff
To: oss-security@lists.openwall.com

--089e01493fa86d90f90520432a27
Content-Type: multipart/alternative; boundary=089e01493fa86d90f10520432a25

--089e01493fa86d90f10520432a25
Content-Type: text/plain; charset=UTF-8

Hi,

We found a DoS using a crafted tiff file that causes a OOM kill in low memory
system (usually less than 3GB). This was tested in Ubuntu 14.04 (64bit) but the
issue exists even in the CVS libtiff version. Please find attached the
compressed test case (otherwise it can kill my browser since gdk-pixbuf is
loading tiff files in the preview dialog!). You can test it executing:

$ tiffdither oom.tif /dev/null

If you run it with ltrace, you can see some very large reallocs:

libtiff.so.5->realloc(0, 1636178024)
             = 0x7f71a42b6010
libtiff.so.5->realloc(0, 1636178024)
             = 0x7f7142a54010

Upstream was notified but there is still no fix.

Regards,

Gustavo.

--089e01493fa86d90f10520432a25
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><pre class="" id="comment_text_0">Hi,

We found a DoS using a crafted tiff file that causes a OOM kill in low memory
system (usually less than 3GB). This was tested in Ubuntu 14.04 (64bit) but the
issue exists even in the CVS libtiff version. Please find attached the
compressed test case (otherwise it can kill my browser since gdk-pixbuf is
loading tiff files in the preview dialog!). You can test it executing:

$ tiffdither oom.tif /dev/null

If you run it with ltrace, you can see some very large reallocs:

libtiff.so.5-&gt;realloc(0, 1636178024)                                           
             = 0x7f71a42b6010
libtiff.so.5-&gt;realloc(0, 1636178024)                                           
             = 0x7f7142a54010<br><br></pre><pre class="" id="comment_text_0">Upstream was notified but there is still no fix.<br><br>Regards,<br></pre><pre class="" id="comment_text_0">Gustavo.<br></pre></div>

--089e01493fa86d90f10520432a25--

--089e01493fa86d90f90520432a27
Content-Type: application/x-gzip; name="oom.tif.gz"
Content-Disposition: attachment; filename="oom.tif.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ieu2751u0

H4sICPxS4FUAA29vbS50aWYA8/TUYuBgYGDgYmBgZGFgBLIagJgRyv4PBEyM
zAzMQHYbEDMD2SBxEGaDspmAWBCqHmSSKJQN0iOGZI44lA0CMkjmMID1gSAA
hPZs4IwAAAA=

--089e01493fa86d90f90520432a27--
