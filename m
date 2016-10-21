X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1558" "Thursday" "20" "October" "2016" "18:55:24" "-0700" "Alex Crawford" "alex.crawford@coreos.com" "<20161021015524.GB23643@buzz.coreos.systems>" "39" "Re: [oss-security] Requesting membership to linux-distros" nil nil nil "10" "2016102101:55:24" "[oss-security] Requesting membership to linux-distros" (number mark "U       alex.crawfor Oct 20   39/1558  " thread-indent "\"Re: [oss-security] Requesting membership to linux-distros\"\n") "<CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>" ("<20161021013642.GA23643@buzz.coreos.systems>" "<CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9783 invoked by uid 550); 21 Oct 2016 02:15:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31967 invoked from network); 21 Oct 2016 01:55:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coreos.com; s=google;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=wNzalOarzfx4OOI+JrMfm6/nX1RBgKcPRe1ztliEZw4=;
        b=RwuMBoTiHU6OLT3mCklRs3SbPsAEGE3+O0lkreHht73jA3qYgPMyERL19LMzNb/bvx
         nqBWXbrj5H66sUgF5Ji28HI/Ho+xrUU9JEhooJACOUQ7Y7G7zAjuqv1SvYn4fZczuK3z
         G7dVe9ix4wygl9URtKABYOoUSSZl0cfa/cF5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=wNzalOarzfx4OOI+JrMfm6/nX1RBgKcPRe1ztliEZw4=;
        b=iGYPxzk9/IX4yumvBFa6sVzE45YnA4LmOxVVr1L0xnIzTrawyDykOC6xooLe6NGBjS
         I040D36VDMyw02GZd22So/BQC78R25W46mH++HgR7L3e4DYW3PPnKJ66IHkDOJ8E0TPy
         CdV15uDS+Pm0JeR2sI1Wv49jAuQgqC9a2FLzTje23X9ifk5ntW1wMFrcqSs00MPB47gT
         rIYUg/CtCbgdviFSy9pH/11RjZXyaDLg9iHEq9qQYwQhUeHn5rucPy2mpytQtu3qljVt
         wE4+Pgf+MN3El8T7flox+jrRZUkgrQyvVh5NS+PaHx+ahUL+vyKzINaVoh4yXhhGwuMT
         2ZKA==
X-Gm-Message-State: AA6/9RngQT+7/yfWdgCnVe6ejQEo+bx6ltW34/Z4pWot4lmdom1waB/6YjCzMblbDd5f2IZx
X-Received: by 10.98.4.6 with SMTP id 6mr6639957pfe.152.1477014926369;
        Thu, 20 Oct 2016 18:55:26 -0700 (PDT)
Date: Thu, 20 Oct 2016 18:55:24 -0700
From: Alex Crawford <alex.crawford@coreos.com>
To: oss-security@lists.openwall.com
Message-ID: <20161021015524.GB23643@buzz.coreos.systems>
References: <20161021013642.GA23643@buzz.coreos.systems>
 <CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bCsyhTFzCvuiizWE"
Content-Disposition: inline
In-Reply-To: <CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Requesting membership to linux-distros

--bCsyhTFzCvuiizWE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 10/20, Kurt Seifried wrote:
> On Thu, Oct 20, 2016 at 7:36 PM, Alex Crawford <alex.crawford@coreos.com>
> wrote:
> I found a security page: https://coreos.com/security/ but it only mentions
> some upstream security. I can't find any security advisories, the closest I
> can find is a few blog postings. Do you have an advisory page?

Not at the moment (though, it's been on my mind for a while). The
closest thing we have is the release notes which will call out CVEs.
e.g. https://coreos.com/releases/#1122.3.0

-Alex

--bCsyhTFzCvuiizWE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYCXWIAAoJEKYk4DxZNSlCMsQP/2uToCovwnu4UGU//nSWED8n
iPYt9UbXWkv5T5tDuH1I35p6FZ0ZX6RmjgpF8jHEY3386wzW5hSksZFvwXAS5VHs
WBaeD5p9oz3URcDCndv8Ay/Y0rQDzh41foL+4aoEPB8g+jIShutRtMF6ioRP78OM
QiT/nRkjrhrvATJrm5NAyU5DCNBk3jqH5q8s23O7K3qkGUW2eLmwKilGGFhx75Le
o/GbqbPhHEbtc3x2M061SbxrMUuxLGSHUeu2wEEAwAzn1aZqEMa5JB0gBLxBy0yt
3tnVq3QIRYqS9GanohW6fJ9dnzpEIvL5O/6WMcCkr5lWn15EKMoyjUIqYuE0YlA/
nB9SLgxmN/pbMfMKfz04JgFHej6xaelLYrkZdmZitN4aP0Rr2DaH3Mud53vm0+/g
+1+ulwxglFtb4Qnv4Ro8Mnh/rnMktwO2fB5Z6hrY2Zr5J4+QsGRo5SGne/PLr1L/
5/J7q8q9VEytgEShbyxUwM/JKbZm+4pphuwsK/wOEsUVdUih9mVrSZYfz83y7U1r
Y7FqcxHlgqGBx1JKyRzftnyoSSrTtK3dH8RML352dLKx+JAl3crevenC9goLyg5r
1H6e+fjdDTJk+Rl6e3KcId4m/jEBtOo/K7wi5mizrR+5t6FAwpuhLbWNcFE1qr0x
T36vfni2jxVYNtz2LeeU
=iSyU
-----END PGP SIGNATURE-----

--bCsyhTFzCvuiizWE--
