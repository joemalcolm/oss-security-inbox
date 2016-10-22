X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1808" "Friday" "21" "October" "2016" "21:20:12" "-0700" "Alex Crawford" "alex.crawford@coreos.com" "<20161022042012.GA20127@buzz.coreos.systems>" "41" "Re: [oss-security] Requesting membership to linux-distros" nil nil nil "10" "2016102204:20:12" "[oss-security] Requesting membership to linux-distros" (number mark "U       alex.crawfor Oct 21   41/1808  " thread-indent "\"Re: [oss-security] Requesting membership to linux-distros\"\n") "<CANO=Ty3Su3JaEtEvUs4GO=dg8ufpBZsUALaBCD0COW5j67y8-w@mail.gmail.com>" ("<20161021013642.GA23643@buzz.coreos.systems>" "<CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>" "<20161021015524.GB23643@buzz.coreos.systems>" "<CANO=Ty3Su3JaEtEvUs4GO=dg8ufpBZsUALaBCD0COW5j67y8-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18409 invoked by uid 550); 22 Oct 2016 11:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11301 invoked from network); 22 Oct 2016 04:20:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aTZJ5JN/6z7J7JrLG6CX+RXuRmp57angOXQTE+/iI1w=;
        b=nn4bgThFgQN/Ro7uKyO76M24Ef4uQ+XcQYEW+Y1rhRZVuJnefOyJqahnVoeLYsKZkW
         QYUML88BFzIPboCv2dYsxNiKLRkab8HSJ580y6VQNPVC9p4YNUC0ks9O0D0YRLAJhqY5
         qwcerJk4tuvF/VxHRAMdcHN8X/6kRj8VTpBLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aTZJ5JN/6z7J7JrLG6CX+RXuRmp57angOXQTE+/iI1w=;
        b=F6EAkOaBp9rc7mcRflwuFT30MdsBOptMYg638WSXDDG4cGZfda2pX85Dzls/uZUAK4
         Jllsf7Cm0hLpcjR9Tk/vT38qA961+c8dd4sAaHvwiWbvOMHZOd4RLTZBKnEK2gBhOJDt
         6UJYMPYfFmKUVk1WpG1vdzgRBRvVm+aU4O8Ceke0BObLWQdWdODf+USRpfxXuI1nxsTb
         3cnStIAm8AvE+dBD1lbWW+vhZBXImIwaQwPoKjMnt+wTmDP8Y8CYv/bOfPwtBxT/HLrS
         m9fQtldECBwGtxMS8XnKZfTd3xN7K/WeyDF+smflYse2KseE2ZMbB23ZpGRBUBQtqkR8
         sJ2g==
X-Gm-Message-State: ABUngvc9zsb8xJ5oq1YbGpkrUaW0M73hx5ibkL/524R9WqLV2h5TNQNDM9AkY5yn7bsC7Unz
X-Received: by 10.99.39.130 with SMTP id n124mr6406927pgn.85.1477110017655;
        Fri, 21 Oct 2016 21:20:17 -0700 (PDT)
Date: Fri, 21 Oct 2016 21:20:12 -0700
From: Alex Crawford <alex.crawford@coreos.com>
To: oss-security@lists.openwall.com
Message-ID: <20161022042012.GA20127@buzz.coreos.systems>
References: <20161021013642.GA23643@buzz.coreos.systems>
 <CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>
 <20161021015524.GB23643@buzz.coreos.systems>
 <CANO=Ty3Su3JaEtEvUs4GO=dg8ufpBZsUALaBCD0COW5j67y8-w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline
In-Reply-To: <CANO=Ty3Su3JaEtEvUs4GO=dg8ufpBZsUALaBCD0COW5j67y8-w@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Requesting membership to linux-distros

--liOOAslEiF7prFVr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 10/21, Kurt Seifried wrote:
> It looks like CoreOS is shipping Linux and respecting the various licenses
> in a volume sufficient to make sense for them being given access to the
> Linux distros list, and shipping security updates (I would say they could
> benefit from shipping advisories, but they put the CVE's in the ChangeLog
> so I really can't complain). Assuming they can handle embargoed issues (do
> you have private bug tracking/code repos/CI/whatever else you need to ship
> an update?) I would have no objections to them joining the Linux distros
> list. Can you confirm you have infrastructure to handle embargoed issues?

Yes, we have the infrastructure at CoreOS. We've dealt with embargoed
releases in the past. Thank you for the consideration.

-Alex

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYCuj4AAoJEKYk4DxZNSlCGOoQALboT9vMDgmMsh1KA6cB46eG
NLVxGmWtgTPdOGt2SlcGFD0ncAzn1NUErXjRR7YDmr4sgntoV7o+HniBVLzBqtI0
5G5Q3grDsV0p896o4I7soDQirxfI0Y6Vqtw5iz+3Iu7XvXkNFLnqg7Olz0ovL5Hr
kds1/mgg3Z0cCM05tl3rdwteptBYbRF+y/t6qwOQe1+Fb8/MftWvXafo+V4VshgW
aCS9nroCekl0/tezoT0ToTO84JazgTobVNcFvQQIHrvx+dDx9W3qEzFVWxqXmj1M
3mXbUzMS2Er2xITRhfI9a//gBgB7V1H8wN5Z39pB+0Xft7DljYi9hR46xdh/1L9Q
YvH7a6yoqRTW4CgetCpl9F8SHkQs4SnRjDagLp/6nlKlsKdvZHFt2VjQPEk+yLRP
guU3S6Ugosqm5OSC80M9hIjmPJ9ZpoQ220phpJhhkpRZwIWpWrWrYlStqEDpLpZa
DP/nH+vPNVKjYfWmrT0aVBfSsukhhAWxz1zpRE6rX7sYhtKiB90R/cpGo1FOUUgL
RWq9ooKYFA5TyUaxwhdmRvAd9HshdDkxrDB29WcMjjT2Euir3UbCYrZZ4S/1IMT4
oj4o8XIu9wNwBo0Kp/xQdE0gu8snuaeJxXYXNkNvPzjBVojBKnpFAj3Wgb98a1uF
RWB7IIEZa8FxN1CatOf2
=XGOB
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--
