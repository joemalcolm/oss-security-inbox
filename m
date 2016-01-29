X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Friday" "29" "January" "2016" "13:51:16" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1454093476.3461.19.camel@gmail.com>" "38" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Date:" nil nil "1" "2016012918:51:16" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        danielmicay@ Jan 29   38/1579  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>" ("<2413003.GtkKFizscD@chimera>" "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>" "<CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>" "<1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>" "<CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27701 invoked by uid 550); 29 Jan 2016 18:51:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27680 invoked from network); 29 Jan 2016 18:51:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=rZcDpfxmeNB4qtzwxLKrAq6EEk5DEvbBMdzPInEJYYE=;
        b=ZapnLhwS9Q+wkLVAcarYF9Dw196vVtD4XDcxjLlFm/KH8v8bBCLijXVtL2UPo4A6Ri
         uDzUPaUQUXBBGPbpY70PAxskOlGs3d1O5UbJPXDj97OxZtsVKbWDDVpFCE3ZSSw6Po8P
         mMSTMKS9S4IJaA/tQ9hR5Gz+zY2I+8yMy/oVcjc3z9s5mnMIM0rTVXH4gkaYDldEMZI9
         Z4fA/rf6Il0a40+cPb+jEhzfnewdVIr7dLiBoiYupkkraC7Kn3AudK31RB+3rYba0zqn
         dE5lNfrd+13dXwcGay/WyezOV5h1NYJmKqYX9dmWoIJm1ObdAmrHRBx8iBwpPTTxc6w/
         0TJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=rZcDpfxmeNB4qtzwxLKrAq6EEk5DEvbBMdzPInEJYYE=;
        b=HT256MBomdqFXpSpxargZttLbw7ibsW4xGoTO+3AS0OgzecCjekC63+Urd6mwrRAWi
         WRjT64jJoa/RvqC00G2rgbHmu1lZDu1XBrAx87Mj4XRAAMh0wLPyg4ILbOSx8oKz43wi
         jWfb+htll/6vlyu8Lly9TOP2Bfz4uEzl8H6aJom3g57LYT8mWNpQ/Vr4IVyHpbw/8tIt
         f6vAPbJTgWRKv9dL70/15GECHnt56sHjA1NkfXm5BF+r8Fi4myDhKYe1xKg0JFJwK7d7
         9nRoONfw2eyumDTkFLBaxkWs2LlRP7AC8FcgKqHIAOhwGc6D4k6iQPM3iVWWyP5UMnAR
         0Lzw==
X-Gm-Message-State: AG10YOSrEeWVjQbQFKRr0mZdVw03jjBIRzWpCFyWq3rNbuHaUNui8KIJqa6+OhhsXZSgQw==
X-Received: by 10.55.21.28 with SMTP id f28mr12752420qkh.57.1454093483041;
        Fri, 29 Jan 2016 10:51:23 -0800 (PST)
Message-ID: <1454093476.3461.19.camel@gmail.com>
In-Reply-To: <CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>
References: <2413003.GtkKFizscD@chimera>
	 <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
	 <CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>
	 <1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>
	 <CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-08ep2A+73wLG57GJBs46"
X-Mailer: Evolution 3.18.4 
Mime-Version: 1.0
Date: Fri, 29 Jan 2016 13:51:16 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6
 pools for scanning purposes
To: oss-security@lists.openwall.com

--=-08ep2A+73wLG57GJBs46
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-01-29 at 17:45 +0000, Scott Herbert wrote:
> That would be nice sure, but given that IoT vendors are rushing so
> fast to market that their doing things like sending login credentials
> via http, I think we're a long way from having them secure their
> products from scanning let alone anything else.

Many of them are going to be using the Android-based Brillo so there's a
central point to make changes like this (AOSP).=

--=-08ep2A+73wLG57GJBs46
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWq7SkAAoJEPnnEuWa9fIqvFwP/jd/UrNCS78DoSV7CTH9XO+H
GEYPthGBmFBCC2aFDO6FDq6oCQq51gFsxiiTBPejRLBd1EM32Piu6gfWxFJ0j4Ro
nVFNa7+Ifn0I4ijGgJ/XS0tyrj2QFlZZko6JWKULproh3HCr0FqIz8esVb820Muy
jFCMysRDp9h07nlRKFl0VJ8YbBc19N1V1vU+0nFDNFzDvsBiFo/yruJAMtJDGcDF
ppvBxzd+hKr3SwfB8a93sgcptQBy1rfKTkaPTdBmwCSuopoVf1OgCMfVyRXuL3Cj
nq92sL0A5zeZo/7c8R6WqcbIisTAi1wb+HTvfCfll8Wc+LPi4EngHnpDl+pTdCK0
hoNUiyh1NUFnL61wIXlWJRQ1NHUWQa9pYhPy5nSzCifY8dWssU3+sZl5Nx3m3Pq9
48Q4bGs4zyxNetFvan7g1+xPaKvlekDU/zCMY9jYk3knOsHhjSQsjaIXrX5NIKSS
/nydPWfZvEPCnS9ImXrQ5qP+ikUIP0JHytdq5zO729z7lVEgc1tqMz592rkspIt0
PIjw98W0W8n23zyRMuXa6hZCbObsuYi5lsde1EBjNNVfzTr/ZMo/qGdPiCu7hM9k
5TVLmfejBgnoiuft05PJkjNccVCD8v7EST/FbPLBEScOUTQcDiLbbJJo5dRVs54S
8WOvzOH5aE3GZGcVOCaW
=F85M
-----END PGP SIGNATURE-----

--=-08ep2A+73wLG57GJBs46--

