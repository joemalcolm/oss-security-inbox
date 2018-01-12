X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1477" "Friday" "12" "January" "2018" "15:10:23" "+0100" "=?UTF-8?B?RGFuacOrbCB2YW4gRWVkZW4=?=" "daniel.vaneeden@booking.com" "<CAFHm6iuD6BpN8JZeF9qhjWQFpUKar7fiumszdWwCBtE03m9N+g@mail.gmail.com>" "48" "[oss-security] DBD::mysql and SSL/TLS" "^Date:" nil nil "1" "2018011214:10:23" "[oss-security] DBD::mysql and SSL/TLS" (number mark "        daniel.vanee Jan 12   48/1477  " thread-indent "\"[oss-security] DBD::mysql and SSL/TLS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9339 invoked by uid 550); 12 Jan 2018 14:50:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26252 invoked from network); 12 Jan 2018 14:10:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=booking.com; s=bk;
	t=1515766226; bh=A+5eHF/DniyCcpZHW1OFBPa21UZPU50LEcAtP2x4Lds=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type:From;
	b=mbrk0a44vujIVS3uVA6a54PElITwboT6TJKsuusnwx/7v5askpCwX9MSBBkGH8r2l
	 1YAecedMLVpniBhrNpqT0nQJ7GB9lPSehMv7dg/nM33ERF/Rq1yZ1hoK+WuHbDv9Ff
	 WZbaEwMMwMr+eCBHfe+7JxN3VAp88pA0Km70y0JM=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=booking-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=A+5eHF/DniyCcpZHW1OFBPa21UZPU50LEcAtP2x4Lds=;
        b=tYFDt8fVtUPSAxfLq7+1mQYbqDfD47v9JdeFRhSJjoDi1sn+AT2bcaeIDO0tchhD0x
         aTLMyDNnKvGZCSGpoMBveOwqm1ZAaTmtXEg868zZWiw1sIDwILh71R8d7uf7RWrx+KqI
         8NxCqEqq5s5Qd2nhQ1b1qv7FDZjvVYwQf8FQMjizv7LyS9UgVfjHkuWUo9K8U/T0xBWI
         SPITgz5ujb4VEx+wCvU5oC1AxppbCJLlUc/TwVF0+Fptf0/B+QW2IDHxjBRrwjeVXv1r
         qTAmhZp5dPyG7PkKV5W8TOeaTKdrnntv4oZ4v2qhWIxOwgTJhPzIOCfORYCsSPKJsyfc
         PPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=A+5eHF/DniyCcpZHW1OFBPa21UZPU50LEcAtP2x4Lds=;
        b=YNZgaYUSHCX/VrF/T8pFVqORsn7GvsR5x3BrtyjyWLwUigyB/+YujtfGJhJNIqdEq3
         ps0l2ngV6+oPGyleBv4bmqR0dS159KC2X4TzI/4fAa4OacHgCVyjHiijqerSSq+55Fqx
         cw0VssfBmzd6H6ZhyeWgyQhGf1fPjgr+2XHRuN7/ax+iKcDBFVKFE9J/uNR2MbjvHKX5
         EcuyUoPFO2EMW61WJbY1NmFigU+h4KPJCXZfSjf/EOr9zEO6ZeeR7uSVzWESyu1rygUL
         hDE99Nac1RBMJsbp6yWUtDChu3RZb2oijtlHHZnXzQlWwSwcezRc89P2FBEhM5YmJOD0
         AewA==
X-Gm-Message-State: AKGB3mKApRg22sWPo4WEvOMg9VmhS0F7fSNZ1lMJxbo/3U67R2qb8yZh
	7typNKRq0Okcvrlsq+gieJSgX+P+KEMZKhdDstApSNmFcV/RRlLuBzuOzqdicB0IVfNQddjabSg
	0oj7r3BZmq/8LdxBcbPfhmiPyhwmp7HxZ+/azr4Tb0Yo=
X-Received: by 10.46.4.209 with SMTP id a78mr15494598ljf.33.1515766224660;
        Fri, 12 Jan 2018 06:10:24 -0800 (PST)
X-Google-Smtp-Source: ACJfBotoKiXenl8NLAiGdTYMuoDCYfALYiKrL8TN35eXFLbHJWI3eapbIDLi9pPy+MCd0XsCejGGJ2n2c4XBdOdzHV4=
X-Received: by 10.46.4.209 with SMTP id a78mr15494590ljf.33.1515766224449;
 Fri, 12 Jan 2018 06:10:24 -0800 (PST)
MIME-Version: 1.0
X-FireEye: Clean
Message-ID: <CAFHm6iuD6BpN8JZeF9qhjWQFpUKar7fiumszdWwCBtE03m9N+g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c1c0a4a5f1f4d056294d321"
X-AH-Spam-Helo: mail-lf0-f69.google.com
X-AH-From: daniel.vaneeden@booking.com
X-AH-Rcpt: oss-security@lists.openwall.com
X-Verified-External: Yes
X-Booking-Type: Gmail
Date: Fri, 12 Jan 2018 15:10:23 +0100
From: =?UTF-8?Q?Dani=C3=ABl_van_Eeden?= <daniel.vaneeden@booking.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] DBD::mysql and SSL/TLS
To: dbi-dev@perl.org, oss-security@lists.openwall.com

--94eb2c1c0a4a5f1f4d056294d321
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have some serious concerns about the state of SSL/TLS in DBD::mysql.

Issue 1: CVE-2017-10789 isn't fixed
https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-10789

Issue 2: Using DBD::mysql with MariaDB 10.0 or higher or MySQL 8.0 or
higher provides a false sense of security

SSL_LAST_VERIFY_VERSION is set to 50799.
Any version higher than that silently ignores mysql_ssl_verify_server_cert

This can lead to unencrypted connections even with strict SSL settings.

Issue 3: If SSL support is unavailable but ssl options are set then these
options are silently ignored.

issue 4: If compiled against MySQL 5.7 then SSL/TLS is used when available,
but can't be disabled. (mysql_ssl=3D0 is ignored).

This makes upgrading to 5.7 more difficult. And 5.7 is needed to get
support for TLSv1.1 and TLSv1.2.

There is a patch available for this:
https://github.com/perl5-dbi/DBD-mysql/pull/114


--=20
Dani=C3=ABl van Eeden
Database Administrator

Booking.com B.V.
Vijzelstraat 66-80 Amsterdam 1017HL Netherlands
Direct +31207033812
[image: Booking.com] <http://www.booking.com/>
The world's #1 accommodation site
43 languages, 187+ offices worldwide, 96,000+ global destinations,
1,200,000+ room nights booked every day
No booking fees, best price always guaranteed
Subsidiary of the Priceline Group (NASDAQ: PCLN)

--94eb2c1c0a4a5f1f4d056294d321--

