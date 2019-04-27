X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1210" "Saturday" "27" "April" "2019" "19:31:24" "+0200" "andreas@rammhold.de" "andreas@rammhold.de" "<20190427173124.ulpzqadd7fbl7sfi@ranzbook>" "30" "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" "^Date:" nil nil "4" "2019042717:31:24" "[oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" (number mark "        andreas@ramm Apr 27   30/1210  " thread-indent "\"Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)\"\n") "<87d0l7tl9d.fsf@dell.be.48ers.dk>" ("<68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>" "<87wojie6jy.fsf@dell.be.48ers.dk>" "<20190427163828.rnp75yis33ysgvzp@ranzbook>" "<87d0l7tl9d.fsf@dell.be.48ers.dk>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple BIND vulnerabilities disclosed (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3691 invoked by uid 550); 27 Apr 2019 17:40:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21684 invoked from network); 27 Apr 2019 17:31:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rammhold-de.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lLvWIyETMkCRLzAdjz5MLTYXddiA6OzwDyrEnwoYOz4=;
        b=TFAdI/v255VyEs1dlnL9rkLu5NVH9dbb8LsTdE5raUEjbuSdp9Dd9sBQc3U3WfVRVf
         gzrQM6T1uNrm0+4lpYZTmhfW1bJE+NBsCV59TO4X3dQaSuUgPZyH5/FR1Ffc8gnjvqVU
         jaUIefNGu18XrxO8WdWwm8PxNXy0ypuL2aHI74G4NxJakdyWzzrLJhYgMGErCRnPEhus
         iRgq7+L0tjxRtZzrlIkcCTpNrZHBBgM/6RDOvoxBYTKOQEb2pZC0CsejZXWrgwoyaU89
         QsSvea8H5Ft88Lv2b7gtcG6PX89+4b0QtRiAc+5l4wnjrx55xLh60EkUNow1EAXzrvIQ
         AiYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lLvWIyETMkCRLzAdjz5MLTYXddiA6OzwDyrEnwoYOz4=;
        b=GNLhZBTUSuweNFJMYFlZJ0OcbXbmvirLTWOtwCS78PRyB57S8u1QSVlVzhIKwi4ete
         sNTe9gcQpVXGc7Sp13LavmaBaiSo6uZnOHYgWXHqikoJKXvwDnZgsPxlJfpxscGJu2sZ
         xVsRUt6JHdhL0Cyje0xVXXgBomBxVFL1vWWOFLjJWQ3iJX0kV9bPOjBWYcvm64zTvn3a
         Ko7FN4U5mvt++ybvqzBfxLM38yqX9CK/7z6xBXfDedP8S5O/CDup/JHbrfGh5ebYqclb
         ioJ3mnSjk4ZxulNRMaXymgJN/spaiuk2RRb9m6IEZ6aMvIJEjZouVEcBgauo0jcUej4R
         vbiQ==
X-Gm-Message-State: APjAAAVu+SGIP9E1y0HAxk6qvOu/dX0TGMTlgSV98Xd+o/IKUeJu04tV
	tux0JEoBx/aqTQbor59fTFootw78QB97SQ==
X-Google-Smtp-Source: APXvYqwEyNkz0w5swq6+DIEh5v4Ra3a6/0dVZ/KJ26zF6WmSBd+fPSACWDG0+9R5cBdQnauDgOWy0w==
X-Received: by 2002:a5d:4003:: with SMTP id n3mr469883wrp.76.1556386285911;
        Sat, 27 Apr 2019 10:31:25 -0700 (PDT)
Message-ID: <20190427173124.ulpzqadd7fbl7sfi@ranzbook>
References: <68fd216c-b9d7-ded4-ecb5-a5da62fc01b0@isc.org>
 <87wojie6jy.fsf@dell.be.48ers.dk>
 <20190427163828.rnp75yis33ysgvzp@ranzbook>
 <87d0l7tl9d.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w27jbhh673vapqi5"
Content-Disposition: inline
In-Reply-To: <87d0l7tl9d.fsf@dell.be.48ers.dk>
User-Agent: NeoMutt/20180716
Date: Sat, 27 Apr 2019 19:31:24 +0200
From: andreas@rammhold.de
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple BIND vulnerabilities disclosed
 (CVE-2018-5743, CVE-2019-6467, and CVE-2019-6468)
To: oss-security@lists.openwall.com

--w27jbhh673vapqi5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

I just became aware of a relevant thread on the bind-users mailing list
that sheds some more light onto the issue:

https://www.mail-archive.com/bind-users@lists.isc.org/msg27479.html

--w27jbhh673vapqi5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE0IG39SavZobwL+lX5DLkELXkjIYFAlzEkesACgkQ5DLkELXk
jIaoIg/8Dx8TiAiaH5b0WzUn6TR6CQ7M9EKrOTTisANjZpQajb9MHjW8gNlsloPv
jAdARRaBQlSUVFlzda+WaLdOwpuJQum/e9+Zx+h5lZI9j2BVJF5xcjQk8aoDqcnl
kgOl9ricBgoal7SCy1/kSRPlp6TWrrR300E5NpmDf6Iq93GKEuSqhCKfuMVFOgLE
ECtZ8v4A6pfbJeK1z3XqrOAjvztADcuSE1PrqkcWokYwvmOFq/67v0hH8j4oyJRW
+BlQoAYsXAbQSzXpLeXoyQMq/Au2GXyAtx2o9zrBIEWTnfliuFHALXVhPTayY/Hu
GYw/Sjy4vYQ2uAFoMceD76d1wtvDyJ0oVnKwxKYmObKLn6C8TqLO3oVaCGZS1dg+
jOTX3smIvxm5ZF3dSSmPRY8DRDrFX1y2vj2qGj/DCEK4BNLF8HOmaIxJtM7pKsqS
quaYKeVDuUOSD3mO5WD8Ee0JhEFFl8qiK68dLA8YLpHxKkcNKUqqz8sjwDajWC+i
Yw5hgoBOuokcBajq4gDGvfem5tCjrRUjBiZxdzF290oGnUPdWTnjselzggvLwalf
ct6NB4CklF9Tl65XvHxMDT+UP1AqZFATZQ0Rp0YVup6dEdgbF6rHgm3XyZg3KFps
P5S0TqKxdTNw/ChZwgH/5Hb8nmxOd/aa0g+v0Gmbtjqu4ICooAw=
=zR8s
-----END PGP SIGNATURE-----

--w27jbhh673vapqi5--
