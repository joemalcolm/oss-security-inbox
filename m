X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["928" "Tuesday" "19" "January" "2016" "15:33:09" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSaCfkaGyHKG3NkTMRg3bRzu2Zd5NVH8i15xG_skthTkQ@mail.gmail.com>" "41" "Re: [oss-security] CVE request: out-of-bounds write with cpio 2.11" "^Date:" nil nil "1" "2016011918:33:09" "[oss-security] CVE request: out-of-bounds write with cpio 2.11" (number mark "        gustavo.grie Jan 19   41/928   " thread-indent "\"Re: [oss-security] CVE request: out-of-bounds write with cpio 2.11\"\n") "<20160119192412.1a96c226@pc1>" ("<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" "<20160119192412.1a96c226@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30089 invoked by uid 550); 19 Jan 2016 18:33:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30071 invoked from network); 19 Jan 2016 18:33:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=ke9Hk5H5L90RgyMDrZ30+mX9BzLHzdu7liBK+TeIOi4=;
        b=Xz95ii05aYlJBHlqrFSHFlhG8LAg9H2yb4kNcLdzfTn1aRdH3Zh4CfyxkuhZJQ4nb8
         /CYgwQluKtGqchAXGii4QBw9gaLK/GAw04wAmoJU6WlyFnVvRO6jsuLwgUcBTv6KyiIY
         vl4+/qn+baU0J5xNwKu2cFaHVZtrTkLHonW2ffSZFLGuj/afei+D2DBCMom0XWSSYHYO
         0pMaCkbYQIBH6rviay3rlcBo7KkuU+Dr1hOgXYIOO+hO2N/XwY4KK5NJlr9UVWSBjpZz
         I1WDxCQ7npBNDt+vbcPT7ZLlCqDMaQ+2ykadKeAdl35wbSfedZ6mekysl7rWiY5/vsvG
         hAWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=ke9Hk5H5L90RgyMDrZ30+mX9BzLHzdu7liBK+TeIOi4=;
        b=I5jnwmBlQU4NSTXnfQcwHJNhHIxzcyMJb9Qs4LTWE20YPQOmXRFqg2sKogR9r5pzoO
         OXEcZ0HN6X8h50WUjVaV3D0uDrp5Wuu3MXCgJeb/oOdrr7JNyAXSiVbKmssCP43XIci/
         fr9YN/DlbgOfagNRCJLpyvbU0yAr3Uot15y5uhU+ca5BftaU5TqdSmzdf+KBAwV/NKjy
         m1tD7mPGbIljJq/uY0rpwM2/IhkWk8sNxj4Dh0v/tB+TjSUZGo6PwGAwEBiy9tW+xBVQ
         Kjr/52rjTxndHVsM7JNT7hcHfB2FJ0YQ3OmAWXQtRPrhnLrR9r83q/6x1aHOLK7fUEPq
         vh5Q==
X-Gm-Message-State: ALoCoQlxTsbc8uPlIcCMO9PcKgRS8QAzaqQspSbenySDs85jI9kuTDTuBTrDwDdDg50PYuSmSaOehkmSZzAHm/3PEj13v6yiwQ==
MIME-Version: 1.0
X-Received: by 10.112.184.133 with SMTP id eu5mr9023127lbc.99.1453228389495;
 Tue, 19 Jan 2016 10:33:09 -0800 (PST)
In-Reply-To: <20160119192412.1a96c226@pc1>
References: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
	<20160119192412.1a96c226@pc1>
Message-ID: <CACn5sdSaCfkaGyHKG3NkTMRg3bRzu2Zd5NVH8i15xG_skthTkQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3cb34eefe170529b41983
Date: Tue, 19 Jan 2016 15:33:09 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: out-of-bounds write with cpio 2.11
To: oss-security@lists.openwall.com

--001a11c3cb34eefe170529b41983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2016-01-19 15:24 GMT-03:00 Hanno B=C3=B6ck <hanno@hboeck.de>:

> On Tue, 19 Jan 2016 13:45:05 -0300
> Gustavo Grieco <gustavo.grieco@gmail.com> wrote:
>
> > An out-of-bounds write in cpio 2.11 was found in the parsing of cpio
> > files (other version are probably affected).  Find attached a test
> > case to reproduce it. The ASAN report is here:
>
> Is this a duplicate of CVE-2014-9112?
> https://lists.gnu.org/archive/html/bug-cpio/2014-11/msg00007.html


I think it is not. I'm testing in Ubuntu 14.04 and CVE-2014-9112 seems to
be fixed:

http://people.canonical.com/~ubuntu-security/cve/2014/CVE-2014-9112.html


>
>
> cpio is esentially unmaintained upstream.
>

I agree.


>
> --
> Hanno B=C3=B6ck
> http://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: BBB51E42
>

--001a11c3cb34eefe170529b41983--
