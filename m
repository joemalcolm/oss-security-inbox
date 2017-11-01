X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3599" "Wednesday" "1" "November" "2017" "11:41:54" "-0400" "Z5T1" "z5t1@z5t1.com" "<e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>" "84" "[oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110115:41:54" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "U       z5t1@z5t1.co Nov  1   84/3599  " thread-indent "\"[oss-security] Re: Fw: Security risk of vim swap files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19960 invoked by uid 550); 1 Nov 2017 15:47:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12178 invoked from network); 1 Nov 2017 15:42:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=z5t1-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:message-id:date:user-agent:mime-version;
        bh=UF+XweSCC5Jt/gUOH+x+UDMYnvWt1oS39xHt/E/uvtY=;
        b=ryLX9eGihRd7dNvdhI5jXKl9dKXinyIzlZLK6gsIRM3WabT2d8+3yI1rRY1bEgAlFE
         /OzU1StwQnKnXWXH/xNXhMm9x51uoan34z1zimakmnB3dJ2UpGnBmb9RC9solWdYUDn8
         d7Nv41hkAq2sVsPm5vbGksYkRewYn+J2Vo2tVxEEpB1ioTvN3zFUiO1U+RKTxQ6MixVb
         D2io5Z/GGVVjw1/sAcrWmt21tca5P++6od+ygGv/i4hx4id7sli/o8lFheodBqi9434R
         +4mpUaM7pgxy0VrYAHR5w4TQw3LdlxOV9AFhI28q2AkcdkO1mZmOTKX4PBrLKt3FBh5a
         q7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version;
        bh=UF+XweSCC5Jt/gUOH+x+UDMYnvWt1oS39xHt/E/uvtY=;
        b=IZTEWPiP13vAdOaCpctm/nBK4yk5kxzT4rkIbU8/ieTkW2FkIkgXoDDw3hPdDDIAHA
         /Pzi3YwZ2+KZ2SEPLRdWrP/sXgH6W7vIAZT/Hod/mQJ4ShzcRLKcfwrk2dEi2xd5YFuw
         DOkN5ZoMEFpcSD0LTJEigxpJ/iyEkAW71g0BkMif/jNiBLauqmWM1ad1MzrUspc+nXSy
         BFOk5qepd9BNV6UvhyxBhiQRl7/64TTMdqzaa5PAZwsNT2WsXE+Q5XpRntcQQhKB3pKQ
         17qzb1nBib9wfwSFVpaCAW+25X2EJzwfrzvrJIBz/tt0FHpFOCQBlXxhcKyE9iTNirDT
         Kv+Q==
X-Gm-Message-State: AMCzsaVR18LGpLytRZRLgnhJr00qWZik2f5BjtRg8H6RNlwPqot0leKo
	ykVVrG0p3ATsRs20L/CVO5o/PHWNBuY=
X-Google-Smtp-Source: ABhQp+SfOQ0pfWrTJ4YOvxlc8XLr87uqYagQnmIfNudqwuZyma0Ea5xt4h9zAO6dJ2Fpl7O+5DUiYg==
X-Received: by 10.200.41.19 with SMTP id y19mr437720qty.300.1509550938662;
        Wed, 01 Nov 2017 08:42:18 -0700 (PDT)
X-Google-Original-From: Z5T1 <Z5T1@Z5T1.com>
Message-ID: <e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lGxmo5SoxaEed0D5xkiCWFmkvNdLnbcBS"
Date: Wed, 1 Nov 2017 11:41:54 -0400
From: Z5T1 <z5t1@z5t1.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--lGxmo5SoxaEed0D5xkiCWFmkvNdLnbcBS
Content-Type: multipart/mixed; boundary="BrAGdwnhMGFn7heCpGkk5xinrcwxGXLOW";
 protected-headers="v1"
From: Z5T1 <Z5T1@Z5T1.com>
To: oss-security@lists.openwall.com
Message-ID: <e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>
Subject: Re: Fw: Security risk of vim swap files

--BrAGdwnhMGFn7heCpGkk5xinrcwxGXLOW
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello All. I'd just like to add my two sense to this conversation.

I have reproduced this on Centos 6 and Cucumber Linux 1.0. It appears
that the umask plays no role in the permissions on swap files; Vim
creates its swap files with the same permissions as the file being
edited. This is still a problem though, as configuration files in
/var/www are usually readable by the httpd user, so the Vim .swp will
also be readable by the httpd user and consequentially anyone connecting
to the webserver.

Storing the swap files in /tmp is a bad idea for all the reasons
previously discussed; /tmp gets wiped on reboot on most (but not all)
Linux distributions and storing the swap files in a location that is
readable by every user on the system has is own security problems. For
instance, what if root goes to edit /etc/shadow and the swap file is
placed in /tmp?

I have found this problem can be mitigated by changing the swap
directory with the 'set directory' directive as Hanno originally
suggested. I have added the following lines to my '/etc/vimrc':

" Move the swap file location to protect against CVE-2017-1000382
silent !install -d -m 700 ~/.vim/swap/ 2>&1 > /dev/null
set directory=3D~/.vim/swap/

This safely sets the swap file directory to a directory that should not
cause any security problems. For added security, the directory is
created so that only the owner has access to it, regardless of how the
system's umask is set.

Additionally, the swap file collision (if you edit both ~/foo/file and
~/bar/file at the same time) is not a major issue; Vim detects this and
gives the second swap file a different file extension. When you go to
restore from the swap file, you get a prompt asking which swap file you
want to use (if there are two swap files with the same basename), which
doesn't strike me as being terribly problematic.

I will be adding this to the default '/etc/vimrc' on Cucumber Linux in
the next few hours. I thought it may be helpful for other distro
maintainers to know as well.

=C2=A0=C2=A0=C2=A0 - Scott



--BrAGdwnhMGFn7heCpGkk5xinrcwxGXLOW--

--lGxmo5SoxaEed0D5xkiCWFmkvNdLnbcBS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZ+etIAAoJEI1dl2DAZNZcMBUP/3hTxTSNHW4/CcZotDvYUsb+
K2t/MikvA5tTpBTyXIvC+lcqN5cxQ3d5dsm872BjvVwJKnITq0ptWivPERKCnhGW
/azC8GEbV7kt3jWjdwQBJrJQzQgz5LotYls5Zd7xcWu8Cqjz/jzgfm/CmPQdGAqy
A/xRtf0LvMxC9EfvRf0OSn3R1m+UJsXcSWeuE/YDVJaXkaAU3PdOSxpSDcZ7E4UU
OWnJQ7ejV1sbr+u7Tuylty1uitcfWoQsqxymnIZJV683RZIvz2e2/SK36Ao+x5tG
PIro+J9TQsMDk2UhkJbxeax+pCUVTnonaISr7xB4mgtWkO1J/gDd+GNtMwdEUne7
Vmu0Lj9YPi1eFS1VmZJqAnjWcDF6dunPD5DAT3IjIGDP5jEoWuXws/ohXi+jUATn
+UujQTS5S46ZMMOuilzK0t6BUtiV2Fmf8Jxb5rcBXqpU8fjSOugZ9J8upB809fnv
ZRtAxydgY74vT2c4ZjugjbWh/rxVj+8ZV05a0z/aVITugypaRM9cLGM3mUnJsXO0
uQr7mvEpHZ27qrQRcr+akwcIND93uGnQtfA0JZRHNkaFxCg+w24T43kUHSN1rqS7
JZyhyfRpASzyqYneswNrNUEDnFBAK/q00wH/DjLDNGWXuRklmE6WnhgBEXflz3em
FVdWHcYna0Mk1XddANRM
=BZLa
-----END PGP SIGNATURE-----

--lGxmo5SoxaEed0D5xkiCWFmkvNdLnbcBS--
