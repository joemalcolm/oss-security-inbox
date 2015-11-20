X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1543" "Friday" "20" "November" "2015" "12:10:57" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<564F5421.2070904@gmail.com>" "38" "Re: [oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS" nil nil nil "11" "2015112017:10:57" "[oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS" (number mark "U       danielmicay@ Nov 20   38/1543  " thread-indent "\"Re: [oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS\"\n") "<564F51BB.7040801@redhat.com>" ("<564F51BB.7040801@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2037 invoked by uid 550); 20 Nov 2015 17:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2016 invoked from network); 20 Nov 2015 17:11:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type;
        bh=faxqa0BjvS0q54K9SmpXh1o6WQr7Xl5wVDtIu8tiz/A=;
        b=cOMcaI9nEWYo2UecNZNd9ZVYPX7IA19+5ZM7oNDucF5xcFsJFac7lVm+3H5o2KIj0+
         iQQM3gZEBTMYOxyWZ4BuuwUz7rfkq7Mcn5iWfdqXFeX/YxWCDZfBmSJiF1MKa6kPWAFL
         gxMBdsK4R/8c+wQd25INoEBb5CJsSz9u05cGEtRkMsdVp643UiKy7cSXbDTLIXnp9LCG
         fJIlSTObORX8rVO8hJwlXVh1U2U9XaWW5NgJ7ywnRuBUzQFvJRkitLToTHmt+1si9rsv
         NqbMcALON8xsOFav2sayOHtXQRK4oyzT8boqKsv3vn5EK3hzD6GkF4TAl9xpTcq9rA1a
         Gfqg==
X-Received: by 10.140.43.135 with SMTP id e7mr14057724qga.11.1448039462127;
        Fri, 20 Nov 2015 09:11:02 -0800 (PST)
To: oss-security@lists.openwall.com
References: <564F51BB.7040801@redhat.com>
From: Daniel Micay <danielmicay@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <564F5421.2070904@gmail.com>
Date: Fri, 20 Nov 2015 12:10:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564F51BB.7040801@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Jp0f781L2m4kKjwFlQ4ikLLxb9avO5xP8"
Subject: Re: [oss-security] seccomp filters without PR_SET_NO_NEW_PRIVS

--Jp0f781L2m4kKjwFlQ4ikLLxb9avO5xP8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 20/11/15 12:00 PM, Florian Weimer wrote:
> Is there a way on current Linux kernels to install a seccomp filter
> which is reset on execve and therefore does not require
> PR_SET_NO_NEW_PRIVS for security reasons?  (The filter could restrict to
> execve if necessary.)

No, there's only the ability to do it with CAP_SYS_ADMIN without
PR_SET_NO_NEW_PRIVS.


--Jp0f781L2m4kKjwFlQ4ikLLxb9avO5xP8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWT1QkAAoJEPnnEuWa9fIqZx0P/jBj7tRxdF8RoCz9ksn0Uq1H
KOxVX3YM57toEkpM3oYI6acvYhYwVyUR5Mh2DmlePCYqJy8EtzzCcGO130o7Xb2f
ti//0WUpcEVKPBizNYtrDIO82AgE+QOdSrj6LLAbOCfh8XNquF0h+Dj29Z76M0db
CdnuxHJUEd104l++nvK0lOjLV4tjI/lH3RM0VAVqNM12/Jw33gMv93Zu7nmFepD1
FiXOeKfAHzhVOJPnKHsWO9sVBePjHTRyCCFtSuYm8sTIIWEt7SFDdHo33Fu7/u3U
vWen5cyhZ5vFwrXkO4KO5INpLi/muZwVHeaKzhxIIGtqXGNFpJG5+ZnYCzutR8DC
tNU3Mr+4yk4tv8VBym5iS2L6cQQt3zV+HP4PZYTI5POEbgS076R2Tis+P5NNAeUc
xbmZRFXnXE1vfE0cdjYup1PCb9mCnJdDAryzXXLKM6GTgSqTN33pGKwIlKLskBw6
ixVYqeG0FxbK0IOvwHnSU/2S5PziX8fVbJ6aoujwlCdWi62F2Y6prXoalD7jFmV2
4bp4R0mmcYGz/E4jH7K7l8ASFuvAlXMApPIuFzoR1zgNXCAnPPtu6CRyM0oe+7sm
vGQm80gK16ixFTCXvw2LSQxs2Hxn9ceGbZ/vAYnqR1VPxEPdyA8pK0o4hCci2O9M
EWGLDYyw0+vk2e+TienN
=Gudg
-----END PGP SIGNATURE-----

--Jp0f781L2m4kKjwFlQ4ikLLxb9avO5xP8--
