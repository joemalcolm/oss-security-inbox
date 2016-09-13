X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4841" "Tuesday" "13" "September" "2016" "22:11:42" "+0300" "watashiwaher" "watashiwaher@gmail.com" "<CAFHDqJPkKJSrLp-oOdb5f94rU2yeuDrNM+MTmSn+hNz-+SqbeA@mail.gmail.com>" "144" "[oss-security] libxml with CGI fix" nil nil nil "9" "2016091319:11:42" "[oss-security] libxml with CGI fix" (number mark "U       watashiwaher Sep 13  144/4841  " thread-indent "\"[oss-security] libxml with CGI fix\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21747 invoked by uid 550); 13 Sep 2016 19:14:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19520 invoked from network); 13 Sep 2016 19:11:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=Q9Jep7J9jE6CDrNcKdCC4wPx40TxZZMVQMCE9/N1rFg=;
        b=ng9dT+qJIK+6IEgoXnipPFvSsjaFtr5y/wP4knr76L3Z0T13hLmd8aFkICg9i2EvF2
         dju85IXM1E3d7NFjGFjzkGe8V4bRvxQRGKMHSOWJ6J20qEByPHNIUzH11pGyj3lUsaMP
         DRCB20brr9xKdlj32/FQQIdJUyJ+uG5NYnSnGYB8fp9wr8c5iruqEfEq9FkuA5R24wrz
         zLeiO0Vid1U1csmdx+14Tw6AVYWwjGT6FEZre9IcdwaTR0e8LMWAykf8SjEgHTjVCcqg
         TtlJZdCeAuuDBShza4x5Tqe90mmXDwduk/O39RbXnqP7Z5FLGqfYOUdVdvHs9sxEfdzS
         8bZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Q9Jep7J9jE6CDrNcKdCC4wPx40TxZZMVQMCE9/N1rFg=;
        b=eBGjxk7u7kBc+LeCiLSYNfMr6lBhSooPDt+cR6SaeZaQDVB63WlMsYy/xdgwZeXd2i
         dnLkdnKeSYWLy6fESbib9YA6MDOJFmTJ2oDViaoh18s0LZMRvDqonRgjjZEpiHtqm/Q/
         S5p5IoL2zqrlmFI5oWaxU1Cv0hkc+agN+mFGjIcU9NJghMjhUkI+co12hAnnwQTW50/p
         prtW9Frd4xi69nZGll6/p8rQJj+quqGX3DslzDw4Cvbw7rKlmrm5/lbZ6GzWZyYgR3m3
         5XDos48ZGiN3NG9BqwjumBIfWW5xRC3RM9yvVLAQsNLoTk1U02x8AV2y3dCuSUeHQsN4
         hsiw==
X-Gm-Message-State: AE9vXwPX9oVCOAu+DXEMwGdn7kpRPbgeCuiBwZll2jJlx/wDGHrckwTNe2fGXclv1eGQ0ZxgydmdydGES4LwZQ==
X-Received: by 10.107.33.17 with SMTP id h17mr4177338ioh.81.1473793902658;
 Tue, 13 Sep 2016 12:11:42 -0700 (PDT)
MIME-Version: 1.0
From: watashiwaher <watashiwaher@gmail.com>
Date: Tue, 13 Sep 2016 22:11:42 +0300
Message-ID: <CAFHDqJPkKJSrLp-oOdb5f94rU2yeuDrNM+MTmSn+hNz-+SqbeA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1140c2260a873e053c686225
Subject: [oss-security] libxml with CGI fix

--001a1140c2260a873e053c686225
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi, huys! There is a known httpoxy vulnerability ( https://httpoxy.org/ ).
There is a problem with CGI usage in all application which use libxml2
library. Attacker can make requests via attacker proxy from target server
using this vulnerability. I reported this problem in the 5th august, but
developers didn't reply me at all, and I don't know if they want to
response.

So here is my original report to libxml2 team (with patch):

There is a security problem in libxml2.
>
> Problem:
> There is a httpoxy vulnerability in libxml2 ( http://libpoxy.org )
> It affects the usage of libxml2 inside CGI applications.
>
> libxml2 is used in many popular products. So if someone of these popular =
products will be used inside CGI script, attacker will be able to override =
HTTP_PROXY environment variable by placing Proxy header with desired proxy =
name. It will affect the usage of xmlNanoHTTPInit function inside nanohttp.=
c. Requests will go through proxies of the attacker.
>
> Possible solutions:
> I found 2 possible solutions.
> 1) Use HTTP_PROXY variable in lower case
>    (Curl style)
>    It works because CGI variables are sent only in upper case.
>    But doesn't work on windows because getenv is not case
>    sensitive in the Windows operating system.
> 2) Do not accept HTTP_PROXY variable when REQUEST_METHOD environment vari=
able defined.
>    (Python style)
>    It works because REQUEST_METHOD variable indicates that CGI is used.
>    But there is a problem with windows (we can't use HTTP_PROXY in CGI at=
 all)
>    and with other operation systems (where HTTP_PROXY is already used in =
uppercase )
>
> I made a mall patch that uses both solutions in the same time. It doesn't=
 accept HTTP_PROXY when REQUEST_METHOD defined. In non windows OS it accept=
s it in lower case anyway, in windows it doesn't accept it.
>
> Example of vulnerability (what I found):

First time I found httpoxy vulnerability in perlmagick

( http://www.imagemagick.org/script/perl-magick.php )



Code like this was used inside CGI script:
> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> Image::Magick->New()->Get('http://somesite.com/somefile.txt');
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



Actually this code called ImageMagick to download this file.
> Inside Imagemagick code was like this:
> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> char
> buffer[MaxBufferExtent],
> *type; int
> bytes; void
> *context; type=3D(char *) NULL;
> context=3DxmlNanoHTTPMethod(filename,(const char *) NULL,
> (const char *) NULL,&type,(const char *) NULL,0);
> if (context !=3D (void *) NULL)
> {
> ssize_t
> count; while ((bytes=3DxmlNanoHTTPRead(context,buffer,MaxBufferExtent)) >=
 0)
> count=3D(ssize_t) fwrite(buffer,bytes,1,file);
> (void) count;
> xmlNanoHTTPClose(context);
> xmlFree(type);
> xmlNanoHTTPCleanup();
> }
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



And finally xmlNanoHTTPInit inside libxml2 function used environment
> variable HTTP_PROXY. I want to say that developers of any software which
> uses libxml2 may not know about httpoxy vulnerability and about the
> possibility of usage HTTP_PROXY variable with libxml2 library.


> Example of vulnerability (what I found):
>
> First time I found httpoxy vulnerability in perlmagick
> ( http://www.imagemagick.org/script/perl-magick.php )
>
> Code like this was used inside CGI script:>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>=
>>>>>>>>>>
> Image::Magick->New()->Get('http://somesite.com/somefile.txt');
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>
> Actually this code called ImageMagick to download this file.
> Inside Imagemagick code was like this:>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>=
>>>>>>
> char
>   buffer[MaxBufferExtent],
>   *type;
>
> int
>   bytes;
>
> void
>   *context;
>
> type=3D(char *) NULL;
> context=3DxmlNanoHTTPMethod(filename,(const char *) NULL,
>   (const char *) NULL,&type,(const char *) NULL,0);
> if (context !=3D (void *) NULL)
>   {
>     ssize_t
>       count;
>
>     while ((bytes=3DxmlNanoHTTPRead(context,buffer,MaxBufferExtent)) > 0)
>       count=3D(ssize_t) fwrite(buffer,bytes,1,file);
>     (void) count;
>     xmlNanoHTTPClose(context);
>     xmlFree(type);
>     xmlNanoHTTPCleanup();
>   }
> <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
>
> And finally xmlNanoHTTPInit inside libxml2 function used environment vari=
able HTTP_PROXY.
>
> I want to say that developers of any software which uses libxml2 may not =
know about httpoxy vulnerability and about the possibility of usage HTTP_PR=
OXY variable with libxml2 library.
> The easiest way to fix possible vulnerability everywhere is just to fix i=
t inside libxml2.
>
>
Patch address: https://bugzilla.gnome.org/attachment.cgi?id=3D332806

--001a1140c2260a873e053c686225--
